---
layout: page
title: "Jobs, Man Pages & Links"
# What topic does this page belong to?
group: 'terminal-usage'
# Relative ordering of lessons within a topic
order: 4
---


{% include toc.md %}

# Jobs, Man Pages, & Links
{:.ui.dividing.header.no_toc}

Whenever you run a command in a shell, any programs that it starts up are added
to a "job". You can do various things with these jobs, of which we'll describe a
few here.

## Job Control (jobs, fg, bg)

It's very common to want to run more than one program at the same time, or to
temporarily stop running a program and resume it later. This section will teach
you how to do that.

The job you are currently running and interacting with is known as the
_foreground job_. Any other job you are running is known as a _background
job_.

{% highlight bash %}
# list all jobs
$ jobs
[1]-  Running                 sleep 100 &
[2]+  Stopped                 vim

# start a job in the background (include '&' at end of line)
$ sleep 100 &
[1] 14884

# stop the current program and return to the terminal
$ vim
# (pressed ^Z while vim was running)
[2]+  Stopped                 vim

# bring a backgrounded (stopped or running) program into the
# foreground (takes control of the terminal)
$ jobs
[1]-  Running                 sleep 100 &
[2]+  Stopped                 vim
$ fg 1
sleep 100
# note: if the job has a '+' next to it, you can omit the job number

# start a stopped process, but put it in the background
$ jobs
[1]+  Stopped                 sleep 100
[2]-  Stopped                 vim
$ bg
[1]+ sleep 100 &
$
# control returns to terminal
{% endhighlight %}

## Exiting from a REPL (^D)

If you're working in `python`, `coin`, `bash` or any other program that
repeatedly gets input from you while it's running, you can almost always make
the program exit by pressing `^D` (or end of file, commonly abbreviated EOF).

These types of programs are called REPLs (read-eval-print-loop). They do exactly
what their name says: read input from a user, evaluate it in some way, print the
results of evaluating, and repeat the process. They stop when there is no more
input, which you can signal by pressing `^D`.

## Quitting a Program (^C)

To ask a program to stop running, type `^C`. (This may not always make
the program quit immediately, but will in the majority of cases.)

## Killing a Program (kill, ps)

Some programs can ignore the `^C` signal. If this is the case, you have to hard
quit the program using the `kill` command. `kill` has two forms:

{% highlight bash %}
$ kill -9 %<job number>
# OR
$ kill -9 <process id>
{% endhighlight %}

You've already seen how to get the job numbers with `jobs`. To get process IDs,
you can run

{% highlight bash %}
$ ps u
{% endhighlight %}

## Manual Pages (man)

There will come a time when you're not sure how to do something on a terminal.
In those cases, you'll want to get help on how to do it. Thankfully, there are
several useful resources to provide you with help.

`man` (short for "manual") is one of the most commonly used help resources. You
can type

{% highlight bash %}
$ man <command>
{% endhighlight %}

to get information on what a command does and what options you can give it.

- You can search through a man page by typing `/thing_i_want_to_find` (note the
slash at the beginning)
- Advance from one match to the next by pressing `n`
- Exit out of `man` by pressing `q`.

### The `--help` flag

Most (not all) commands have a `--help` or `-h` option that will print
out a message about how to use it. This message is generally shorter and
easier to read through than the man page.

### Google

You can also use Google to look for answers to questions that are not as easily
answered by `man`. StackOverflow tends to be a very good resource to answer
questions. It's important to be careful with Googling, since some answers are
wrong or overly complicated.

## Symbolic Links (ln)

A _symbolic link_ is a special kind of file that contains a reference to another
file. You can use symbolic links to create short names to refer to files in
another directory. For example,

{% highlight bash %}
$ ln -s GoogleDrive/Documents/Programming/ programming

~/links$ ls -l programming
lrwxr-xr-x 1 jake staff 45 Oct 17 19:15 programming -> GoogleDrive/Documents/Programming/

~/links$ ls
programming/
{% endhighlight %}

`ln` has a lot of options and forms, but when you just want to make a file link
to another file or directory, the syntax is

{% highlight bash %}
$ ln -s <to_file> <from_file>
{% endhighlight %}

This can be hard to remember. I personally find it easy to think about it in
terms of the "arrow" that effectively gets drawn by linking one file to another.
When using `ls -l`, the direction of this arrow is forward (->), but when using
the `ln -s` command to create links, the _arrow points backwards_.

{% highlight bash %}
#              <----
$ ln -s <to_file> <from_file>
$ ls -l <from_file>
...omitted... <from_file> -> <to_file>
{% endhighlight %}

