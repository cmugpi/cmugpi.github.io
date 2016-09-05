---
layout: page
title: "Bash Programming"
# What topic does this page belong to?
group: bash
# Relative ordering of lessons within a topic
order: 7
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Bash Programming
{:.ui.dividing.header.no_toc}

Everything we've covered about Bash up to now has really been Bash programming
in disguise. However, all that you've really seen is how to run single lines of
code. While some of these single lines are really powerful, we can do better.

Bash is a programming language like any other, and as such we can create files
that contain Bash programs.


## Conditionals (if)

The general syntax of a Bash if statement is

{% highlight bash %}
if <condition>; then
  ...
fi

# OR

if <condition>; then
  ...
else
  ...
fi
{% endhighlight %}

The condition is sort of tricky; Bash doesn't have boolean values like true and
false. Instead, it has commands, and every command that you run in the shell has
to return a _number_. When programs run to completion without an error, they
return 0. When an error occurs, they return an error code, which is usually 1,
-1, or some other number that corresponds to the type of error that occurred.

For the most part, we ignore this and coerce Bash into behaving as if it had
booleans. To do this, we use the `test` program, which is abbreviated as `[`.
For a comprehensive reference, see `man test`.  To see how it works though,
let's see some examples:

### Examples

{% highlight bash %}
# check if variable equals a string
if [ "$myvar" = "something" ]; ...

# check if variable doesn't equal a string
if [ "$myvar" != "something" ]; ...

# test if a file exists and is a regular file
if [ -f "./myfile" ]; ...

# test if a directory exists
if [ -d "./myfile" ]; ...

# test if a file exists (of any type)
if [ -e "./myfile" ]; ...

# test if a string is the empty string (length zero)
if [ -z "$myvar" ]; ...

# test if either of two conditions are true (logical or)
if [ -z "$myvar" -o "$myvar" = "something" ]; ...
{% endhighlight %}

Again, for a complete list of flags you can use, check out `man test`.


## Loops (for)

We'll just be talking about `for` loops here, even though Bash also has while
loops. While loops come up in a few programs, but for loops are _far_ more
common. Syntax:

{% highlight bash %}
for myvar in <items>; do
  ...
  # can access current item with $myvar
  ...
done
~~~
{% endhighlight %}

where `<items>` is a space-delimitted string. What happens is that `myvar`
iteratively takes on the next "word" contained in `<items>`. `<items>` can be
a valid Bash expressions, so you can loop over things like the contents of a
variable, a Bash glob, or the result of a command substitution.

### Examples

{% highlight bash %}
# .
# ├── colors
# │   ├── blue
# │   ├── green
# │   ├── red
# │   └── white
# └── seasons
#     ├── fall
#     ├── spring
#     ├── summer
#     └── winter


# using a bash glob (bash globs exapand to space-separated strings)
for file in *; do
  echo $file
done
# output:
# colors
# seasons

# using command substitution (the dictionary is newline-separated)
for word in $(cat /usr/share/dict/words); do
  echo "Current word: $word"
done
# output:
# Current word: A
# Current word: a
# Current word: aa
# Current word: aal
# Current word: aalii
# ...

# using contents of a variable
seasons="fall winter spring summer"
for season in $seasons; do
  echo $season
done
# output:
# fall
# winter
# spring
# summer

{% endhighlight %}


## Positional Parameters

Let's take a look at a simple program:

{% highlight bash %}
#!/usr/bin/env bash

first_argument="$1"

if [ "$first_argument" = "hello" ]; then
  echo 'Hello!'
else
  echo "Aww, you didn't say hi to me..."
fi
{% endhighlight %}


Notice that we used a special variable `$1` in the previous command. We didn't
set it; rather, it was set for us before our Bash program started. It contains
the first argument that the user specified at the command line after typing the
command itself. Thus, we have to run

~~~
./my-first-script.sh hello
~~~

in order for `$first_argument` to equal "hello" and get the program to say hi to
us.

For more about positional parameters, check out [this page][posparams].


## In-Depth Bash Programming

Bash is a very intricate and powerful language. It's much too large to be
covered in full here; indeed, we've only scratched the surface. If you're
looking for a good resource to read cover-to-cover, check out the tutorial by
[The Linux Documentation Project][tldpbash].

Other than that, just be curious. A lot of the time, just recognizing that a
particular Bash command would be handy to help you solve a problem is enough to
form the beginnings of a Bash script. From there, well-formulated questions and
Google searches will get you the rest of the way there.

[posparams]: http://wiki.bash-hackers.org/scripting/posparams
[tldpbash]: http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html


