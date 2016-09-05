---
layout: page
title: "Bash Scripting"
# What topic does this page belong to?
group: bash
# Relative ordering of lessons within a topic
order: 1
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Bash Scripting
{:.ui.dividing.header.no_toc}

Scripting is the process of taking a set of commands you'd normally run by hand
and putting them in a file to automate the process. Bash is one of the most
common languages used for scripting. While scripting is a subset of programming,
the act is usually called "programming" once higher level language features come
into play, like control flow, loops, and modules.

We're going to introduce you to scripting in this class for two reasons:

1. As a way to automate tasks to make your life easier
2. As a way to submit your work on labs


## Putting Scripts in Files

Once we get a collection of lines together, it's handy to put them in a file so
that we can run them repeatedly. There are very few parts to a Bash script file.
Let's look at an example:

{% highlight bash %}
#!/usr/bin/env bash

cd my-project

mv foo.txt backups/
{% endhighlight %}

First, notice the top line. This is what's called a _shebang_, and is basically
just a line of code that tells the shell what program we want to run the
contents of this file. We're writing a script in Bash, so we chose Bash. (We
could have just as easily been writing a Python script and changed "bash" to
"python").

The rest of the file is just a sequence of Bash commands! That means we can do
things like change directories and move files for example.

## Getting Scripts to Run (chmod)

Note that if you saved the above file as "my-first-script.sh" and tried to run
it (`./my-first-script.sh`), you'd get an error. We need to use `chmod` to give
this file executable permissions:

~~~
chmod +x my-first-script.sh
~~~

A lot of people wonder why Bash scripts end in `.sh`. There's really no
particular reason. Most text editors can infer correct syntax highlighting from
the shebang, and shells use the shebang to figure out how to run it.  If you
don't want to, you don't have to include it the ending. Traditionally, the
ending was used to differentiate a compiled binary (like one you'd get from
compiling a C program) and a shell script.
{:.ui.info.message}

## Printing Text

One thing we often like to do is debug our scripts. Print statements are a great
way to do this.

To print text, you can use the `echo` command, which just prints its arguments:

{% highlight console %}
$ echo Hello, world!
Hello, world!
{% endhighlight %}


## Shell Variables (export)

Bash keeps a collection of "environment" variables for every user who's logged
in. These variables hold key pieces of information about what's going on. For
example, there's a variable called `SHELL` that says what shell you're running,
a variable named `USER` which contains the username of the current user, another
named `PWD` that contains the present working directory, and more.

### Setting Variables

You can control your environment by setting certain variables. Here are a few
examples of how that's done:

{% highlight bash %}
# set my_variable to the string "hello" (no spaces around the '='!)
$ my_variable="hello"

# assign to another_var and "export" it (see below)
$ export another_var="some string"
{% endhighlight %}

The difference between using `export` and not using it deals with what programs
are able to read the contents of that variable. If a variable is not exported,
then only you will be able to read its contents. That is, none of the programs
that you run will be able to see the value of the variable that you just set.

### Accessing Variables

It helps to be able to check and print the value of environment variables! To
access to contents of a variable, you have to use the `$` operator.

{% highlight bash %}
# get the value of my_variable and print it
$ echo $my_variable
hello

# print another_var surrounded by other text
$ echo lone${another_var}s
lonesome strings

# Sometimes using {...} is important:
$ echo lone$another_vars
lone
{% endhighlight %}

Note that in the last example only `lone` was printed. In Bash, all variables
are treated as the empty string if not initialized, which was the case here.
Not using `{...}` made the difference of not using the right variable name,
causing something wrong to be printed.


## Permissions

Note: you should know that permissions exist, but we don't expect you to
memorize this. Feel free to skim.

To learn a little bit more about _why_ we have to run `chmod` to execute
scripts, let's dive into file permissions. File permissions are a way to control
what kinds of things can be done to a file, and by whom.

In Unix, there are three granularities at which access can be controlled:
- The __user__ who owns the file (abbreviated `u`)
- The __group__ who owns the file (abbreviated `g`)
- Any user (abbreviated `a`)

Additionally, there are three actions that can be granted on a file:
- The ability to __read__ that file or folder (abbreviated `r`)
- The ability to __write__ to that file or folder (abbreviated `w`)
- The ability to __execute__ that file as a program (abbreviated `x`)

Combined, that's 3 x 3 = 9 permissions. We can see these in action using `ls
-l`. The first column of output contains the permissions:

{% highlight console %}
$ ls -l
total 4
-rwxrwxrwx 1 jezimmer users   52 Sep  5 03:47 ALL-PERMISSIONS.txt
drwxr-xr-x 2 jezimmer users 2048 Sep  5 03:47 backups/
-rw-r--r-- 1 jezimmer users   52 Sep  5 03:47 my-file.txt
-rw------- 1 jezimmer users   52 Sep  5 03:47 my-private-file.txt
-rwxr-xr-x 1 jezimmer users   42 Sep  5 03:48 script.sh
{% endhighlight %}

The first column tells us whether it's a directory, but the next 9 tell us `r`,
`w`, and `x` for the user, group, and all, in that order. A hyphen means that
permission is not enabled.

If we're thinking like hackers, we'd represent this information using 9 bits.
And if we use a fancy numbering system called "octal" where numerals range from
0 to 7 and take up 3 bits per numeral, we can write a permission using 3 octal
numerals. For example:

- 7 = 111
- 6 = 110
- 6 = 101
- 4 = 100
- 0 = 000

(We don't usually get 1, 2, and 3, because that would mean we can't read the
file, but we can write or execute it, which doesn't usually make sense).

With our new numbering scheme, we can reinterpret our sequences of `rwxrwxrwx`:

- `rwxrwxrwx` = 777
- `rwxr-xr-x` = 755
- `rw-r--r--` = 644
- `rw-------` = 600

### Permissions and `chmod`

When you're invoking `chmod`, you have a number of ways to invoke it:

{% highlight bash %}
# Explicitly set all 9 bits
$ chmod 600 my-file.txt

# Set all three execute bits, keep everything else
$ chmod +x my-file.txt

# Reset all three execute bits, keep everything else
$ chmod -x my-file.txt

# Add write permissions for the group, keep everything else
$ chmod g+w my-file.txt
{% endhighlight %}


