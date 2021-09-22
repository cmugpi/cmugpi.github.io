---
layout: page
title: "Getting Started with Makefiles"
# What topic does this page belong to?
group: makefiles 
# Relative ordering of lessons within a topic
order: 1
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Getting Started with Makefiles
{:.ui.dividing.header.no_toc}

## Basic Terminology

__A rule__ is one or more commands to run paired with the inputs that the
commands depend on. Makefiles are made up of rules.

__A target__ is usually the name of the output of a rule. However, rules do not
always have an output file. In the case that a rule does not have an output
file, the target can be thought of as a name for what the rule does when run.

__Prerequisites__ are the input files that the rule depends on.

__A recipe__ consists of the commands that are run when the rule is executed.

## The make Command

Running `make` in the shell will cause the shell to look for a Makefile in the
current directory. If it finds one, it will attempt to create the first target
listed in the Makefile.

You can also run `make <target_name>` to indicate exactly which rule we want to
run.

## Writing a Makefile

Your Makefile should be in a file called Makefile. The first line should tell
the Makefile what shell to use. Since we are using bash, the first line should
be:

{% highlight bash %}
SHELL = /usr/bin/env bash
{% endhighlight %}

Next you can start writing rules. Rules will look like this:

{% highlight bash %}
target: prerequisites
	recipe
{% endhighlight %}

Note that there is a tab on the second line before the recipe. This is very
important!
{:.ui.info.message}

Let's look at some examples of rules.

{% highlight bash %}
print: whereami
	cat whereami | xargs echo "I am in"

whereami:
	pwd > whereami
{% endhighlight %}

The first rule has one prerequisite: a target called "whereami." Given a file
with that target name, the print rule will pass the contents of the file into
echo, which will print out to the terminal. But when we first run `make` with
this Makefile, we probably don't have a file called "whereami!" Knowing that we
need this file to process the first rule, the Makefile will look for a target
called "whereami" and attempt to process that rule. Luckily, this is the second
rule listed above.

The second rule creates a target called "whereami" and has no prerequisites.
It will redirect the output of `pwd` into "whereami."

Thus if we were in the same directory as the above Makefile and we ran `make`,
this would be the equivalent of running

{% highlight bash %}
$ pwd > whereami && cat whereami | xargs echo "I am in"
{% endhighlight %}

Not only is typing `make` a lot easier than typing out the above oneliner, but
it actually helps us be efficient if we were to run `make` a second time. If we
now run `make` again, the Makefile will again attempt to process the first
rule. We will again see that the print rule depends on the whereami target,
so we go to the second rule. However, this time, we see that none of the 
prerequisites of whereami have changed (the whereami target has no
prerequisites, and so there is nothing that could have changed), and so we don't
rerun the second rule; we can just run the first rule.

Now let's add a third rule to this Makefile:

{% highlight bash %}
duplicate: whereami
	cp whereami duplicate
{% endhighlight %}

This rule is a bit different from the first two in that it has both a
prerequisite ("whereami") and an output file ("duplicate"). If we were to
run `make duplicate`, the Makefile runs the rule and we end up with a file
called "duplicate." However, if we now run `make duplicate` a second time,
we get a different result:

{% highlight bash %}
make: `duplicate` is up to date.
{% endhighlight %}

This is saying that since there were no changes to the prerequisite file
"whereami," there will be no changes to the output of running this rule. Thus,
this target is already up to date. If we were to modify "whereami" and then
rerun `make duplicate`, the rule would rerun since the prerequisite file has
changed.

## clean and .PHONY

Often times Makefiles include a target called `clean` that serves to clean up the
output of running `make`:

{% highlight bash %}
clean:
	rm -f whereami duplicate
{% endhighlight %}

This rule has no prerequisites and removes the output files that the Makefile
produces as a result of processing the other rules. However, this target does
not create a file called "clean" as output. If we were to somehow end up with a
file named "clean", the Makefile would encounter a problem when we ran
`make clean`: it would see the file "clean," see that the prerequisites for the
clean target have not changed (since there are no prerequisites, there is
nothing that could have changed), and it will decide it does not need to rerun
the rule. This is not what we intended! We want the Makefile to always run the
rule when we type `make clean`. Thus we need to add the following line to the
top of our Makefile:

{% highlight bash %}
.PHONY: clean
{% endhighlight %}

This says that `clean` is a phony target. With this line, even if we end up with
a file called "clean," `make clean` will still always result in running the
rule as expected.

## Resources

- [Phony Targets][phonytargets]
  - The manual on phony targets

[phonytargets]: https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html
