---
layout: page
title: "Using Makefiles to Compile Code"
# What topic does this page belong to?
group: makefiles 
# Relative ordering of lessons within a topic
order: 2
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Using Makefiles to Compile Code
{:.ui.dividing.header.no_toc}

Makefiles are freqently used to compile code. This section will not go into
detail on what steps are involved in compilation (nor does it assume any
knowledge about code compilation), but rather explains how Makefiles can make
compiling easier.

Often times when you're working on a software project, your code is contained
in more than one file. Let's say we're working on such a project and we have 3
files: "main.c," "moreCode.c," and "moreCode.h." In order to run your project,
you want to create an executable file by running this command:

{% highlight bash %}
gcc moreCode.c main.c
{% endhighlight %}

This creates an executable called "a.out" which you're able to run and all is
good. However, you want to tweak this command a bit by adding some flags to the
`gcc` command and so you decide you actually want to run this command in order
to generate the executable (don't worry about what these extra flags mean,
they're beyond the scope of this course):

{% highlight bash %}
gcc -Wall -Wextra -Werror -std=c99 -pedantic -g -o main moreCode.c main.c
{% endhighlight %}

That's quite a lot to type out everytime you want to compile your project, and
it's also inefficient if we end up recompiling something that hasn't changed!
This is the perfect example of where a Makefile would come in handy.

Let's start the Makefile with a line indicating which shell to use and a line
indicating which targets will be phony targets:

{% highlight bash %}
SHELL = /usr/bin/env bash
.PHONY: clean
{% endhighlight %}

Next we'll define some variables that will be useful in writing our rules:

{% highlight bash %}
CC = gcc
CCFLAGS = -Wall -Wextra -Werror -std=c99 -pedantic -g
{% endhighlight %}

Here `CC` contains the name of the compiler and `CCFLAGS` contains the flags we
want to use when we compile code. Now lets write some of the rules:

{% highlight bash %}
main: main.o moreCode.o
	$(CC) $(CCFLAGS) -o main main.o moreCode.o

clean:
	rm -f main *.o
{% endhighlight %}

The first rule creates an executable "main" and depends on input files "main.o"
and "moreCode.o." The recipe says, "use the variables we defined above (the
compiler name and the flags) to compile "main.o" and "moreCode.o" into an
executable called "main" (that's what the `-o` flag is for)." Notice that the
prerequisites for this rule are intermediate .o files that we don't have!
Luckily the Makefile will figure out how to create these from the .c files
we've provided.

The second rule cleans up the output of running `make`.

Now if we run `make`, we get an executable called "main." If we run it a second
time, we will see that

{% highlight bash %}
make: `main` is up to date.
{% endhighlight %}

since we haven't updated the code and so there is no need to recompile.

There is, however, an issue with our Makefile. We never told the Makefile that
our code also depends on "moreCode.h." Let's add another rule to account for
this:

{% highlight bash %}
%.o: %.c moreCode.h
	$(CC) -c -o $@ $< $(CFLAGS)
{% endhighlight %}

This rule says that when creating a target ending in .o, the dependencies are
both the corresponding .c file and also "moreCode.h." The recipe says, "using
the compiler and the flags that we've specified above, create the intermediate
.o file (this is what the `-c` flag is for) from a .c file (the `$<` indicates
the first prerequisite, which is the .c file), and give the .o file the name of
the target (this is what `-o $@` is for)."

## Resources

A couple of external tutorials were helpful in creating these pages. These links
contain more info on using Makefiles for code compilation:

- [A Simple Makefile Tutorial][simple-makefile]
  - A tutorial that shows how to use a Makefile to compile code and shows other
    uses for variables in such a Makefile
- [Writing Make Files][writing-make-files]
  - A tutorial that goes into more depth on the dependencies between files when
    compiling C++ code

[simple-makefile]: http://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/
[writing-make-files]: https://www.cs.bu.edu/teaching/cpp/writing-makefiles/
