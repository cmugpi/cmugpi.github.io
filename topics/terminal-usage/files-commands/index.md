---
layout: page
title: "Using Files & Commands"
group: 'terminal-usage'
order: 1
script: /javascripts/files-commands.js
---


{% include toc.md %}

# Using Files & Commands
{:.ui.dividing.header.no_toc}

Files and commands are the backbone of a getting work done on a terminal.
Knowing how to effectively manipulate them is key, so we'll need to learn the
commands that make manipulating these files possible.

## Remotely Transfer Files (scp)

SCP (for "secure copy") is a program for copying files from one machine to
another. It uses the same authentication and provides the same security as
`ssh`. `scp` will ask for passwords if they are needed for authentication.

<div id="scp">
<div class="ui top attached tabular menu">
  <a href="#" class="active item" data-tab="unix">Mac OS X & Linux</a>
  <a href="#" class="item" data-tab="windows">Windows</a>
</div>
<div class="ui bottom attached active tab segment" data-tab="unix">

To use `scp` from your terminal (i.e. Terminal.app or iTerm), use the syntax:

~~~
scp [-r] <source> <destination>
~~~

where `<source>` and `<destination>` are one of

- the path to a local file, like `school/slides.pdf`
- the path to a file on a server (a "remote" file), like
  `andrew:~/private/myfile.txt`. Note the `andrew:` specifies the remote server,
  and everything after just specifies a file as if you were on that server. If
  you used a different name than `andrew` when setting up `ssh` in the [initial
  setup][initial-setup], use that instead.

The optional `-r` flag signifies that a copy should be done _recursively_, i.e.
that files _and_ folders should be copied.

### Examples

{% highlight bash %}
$ scp school/notes.txt andrew:notes_sept_2.txt
# Copies school/notes.txt from your computer to Andrew and renames it

$ scp andrew:~/private/myfile.txt projects/
# Copies ~/private/myfile.txt from Andrew to your computer and puts it
# in the projects directory.

$ scp -r school/projects andrew:~/private/
# Copies the whole school/projects folder to Andrew and places it in
# the ~/private/ folder
{% endhighlight %}

__Tip__: Examples of command line snippets often begin with `$`. This symbol is
there for historical reasons to signify that what follows is a shell command.
It's implied that you don't type the `$` as a part of the command.
{:.ui.info.message}

</div>
<div class="ui bottom attached tab segment" data-tab="windows">

MobaXterm comes with a built in SCP client. You should be able to copy files
between your computer and a remote host using the side panel on the left for
transferring files. If this doesn't work, MobaXterm also supports a rudimentary
`scp` command line interface, using the same syntax as used for OS X and Linux.

</div>
</div>


## Working with PuzzlePacks

PuzzlePacks are distributed as a `tar` file. This is basically like a zipped
(.zip) folder. To "untar" the file from the command line, you can run this:

{% highlight bash %}
$ ls
my-tar-file.tar

$ tar xvf my-tar-file.tar

$ ls
jezimmer/ my-tar-file.tar
{% endhighlight %}

Once you've unpacked the tar file's contents, you'll notice a folder in the
current directory named your Andrew ID. All PuzzlePacks are named this way;
you'll want to rename them to keep things organized:

{% highlight bash %}
$ mv jezimmer week1
{% endhighlight %}

This renames the folder `jezimmer` to `week1`. Next week when you get a tar
file for the PuzzlePack and untar it, you'll again get a folder named according
to your Andrew ID. You'll want to rename this folder along the lines of `week2`,
etc.


## Current Working Directory (pwd, cd)

On most systems that use a command line, there's something called your "current
working directory." The current working directory is used as the default
directory for many commands if you don't specify a directory.

There are two commands commonly used to work with the current working directory:

- `pwd` ("print working directory") tells you what your current working directory is
- `cd` ("change directory") takes a directory as an argument and changes
  your working directory to that directory.

### Examples

{% highlight bash %}
$ pwd
/afs/andrew.cmu.edu/usr10/jezimmer
$ cd private
$ pwd
/afs/andrew.cmu.edu/usr10/jezimmer/private
{% endhighlight %}

__Tip__: Lines that don't begin with `$` when `$`'s are present in a code block
usually mean that those lines are the output from running a particular command.
{:.ui.info.message}

## Listing Files (ls)

The program `ls` allows you to list files and folders within a directory. It can
be passed many different options (or "flags") that control the output it gives.

### Examples

{% highlight bash %}
# Initial contents of the current folder
$ ls
file1 folder1

# The -l flag tells ls to give you more information
$ ls -l
total 2
-rw-r--r-- 1 jezimmer    0 Aug 17 18:20 file1
drwxr-xr-x 2 jezimmer 2048 Aug 17 18:21 folder1

# If you specify a path, ls will print in that path instead of the
# current working directory
$ ls folder1
file2

# The -a flag tells ls to list hidden and non-hidden files (i.e. 'all'
# files) The -R flag is for recursively listing the contents of a
# directory
$ ls -alR
.:
total 6
drwxr-xr-x 3 jezimmer 2048 Aug 17 18:21 .
drwx------ 5 jezimmer 2048 Aug 17 18:20 ..
-rw-r--r-- 1 jezimmer    0 Aug 17 18:21 .hidden-file1
-rw-r--r-- 1 jezimmer    0 Aug 17 18:20 file1
drwxr-xr-x 2 jezimmer 2048 Aug 17 18:21 folder1/

./folder1:
total 4
drwxr-xr-x 2 jezimmer 2048 Aug 17 18:21 .
drwxr-xr-x 3 jezimmer 2048 Aug 17 18:21 ..
-rw-r--r-- 1 jezimmer    0 Aug 17 18:21 file2
{% endhighlight %}

__Tip__: The `#` is a comment character in `bash` (to be discussed later!).
These lines are purely annotations.
{:.ui.info.message}


## Managing Files (cat, less, cp, mv, rm, mkdir)

There are many commands you can use to work with files on UNIX. Here are some of
the more common ones.

### `cat <filename>` - print files

To quickly dump the contents of a file to the console, use `cat`.

{% highlight bash %}
$ cat file1
The quick brown fox jumped over the lazy dog.
{% endhighlight %}

### `less <filename>` - display and scroll through files

The program `less` is useful if you want to view the contents of a long file
that doesn't entirely fit on one screen. To exit less after running it, press
`q`.

You can do tons of other things in less, but one useful thing is to be able to
search. You can search with `/banana` to find all instances of "banana" in the
file.

### `cp <source> <destination>` - copy files

{% highlight bash %}
# Copy existing file to new file
$ cp file1 file3
$ ls
file1 file3 folder1/
# The contents of the new file are the same
$ cat file3
The quick brown fox jumped over the lazy dog.

# You can also use the -r option to copy directorys
$ cp folder1 folder2
$ ls
file1 file3 folder1/ folder2/
{% endhighlight %}

### `mv <source> <destination>` - move and rename files

{% highlight bash %}
# Moving a file "into" another file is how you rename files
$ mv file1 file4
$ ls
file3 file4 folder1/ folder2/

# Move file into directory
$ mv file3 folder1
$ ls -R
.:
file4

folder1:
file2 file3

folder2:
file2
{% endhighlight %}

### `rm <filename>` - PERMANENTLY delete files

{% highlight bash %}
$ rm file4
$ ls
folder1/ folder2/

# use the -r flag to recursively remove a directory
$ rm -r folder2/
$ ls
folder1/
{% endhighlight %}

### `mkdir <directory>` - make directories

{% highlight bash %}
$ mkdir folder3
$ ls -R
.:

folder1:
file2 file3

folder3:

{% endhighlight %}

## Running Executables (chmod)

Very frequently, you'll want to run executables that you've either
written or compiled. For example, if you have an executable file named
`a.out` in your current directory, you'd run `./a.out` (`.` stands for
your current working directory).

The `./` is necessary because if you don't specify a path to the
executable, bash only checks in the directories listed in the `PATH`
variable (more on this later), and the directory `.` is in is almost
certainly not in your PATH. (System utilities, like the commands we
taught you about above, _are_ in your `PATH`, usually in the standard
directories `/bin` and `/usr/bin`. You can also modify your PATH to
tell bash to look in other places for executables.)

### Fixing "Permission denied" Error

Sometimes, you'll attempt to run an executable and get an error that looks
something like `-bash: ./a.out: Permission denied`. This means that for some
reason, you're not allowed to execute the file. If you're the owner of the file,
you can run

{% highlight bash %}
$ chmod u+x ./a.out
{% endhighlight %}

to give yourself permissions to run the executable. (`chmod` is a utility that
lets you change the file permissions [or "mode"] of a file, and `u+x` means to
take the permissions for the user who owns the file and add the execute
permission).

[initial-setup]: {{ "/initial-setup/" | prepend: site.baseurl }}
