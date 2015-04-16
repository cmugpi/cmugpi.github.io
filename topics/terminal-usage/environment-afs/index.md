---
layout: page
title: "Terminal Environment & AFS"
group: 'terminal-usage'
order: 2
---


{% include toc.md %}

# Terminal Environment & AFS
{:.ui.dividing.header.no_toc}

By now you should have a decent idea of how you can manage files and a basic
understanding of some commonly-used commands. This article will build on that
knowledge to acquaint you with some key elements of your terminal environment.
We'll also briefly talk about AFS, which is the environment you'll be working on
when you ssh into one of the Andrew Unix machines.


## Printing Text (echo)

To print text, you can use the `echo` command, which just prints its arguments:

{% highlight console %}
$ echo Hello, world!
Hello, world!
{% endhighlight %}


## Important Directory Names

Some directories are more important than others, so they're given some shorter
names.

### `~` -- the home directory

{% highlight console %}
$ cd ~
$ pwd
/afs/andrew.cmu.edu/usr10/jezimmer
{% endhighlight %}

### `~andrewid` -- the home directory of user "andrewid"

Similar to the previous directory, but for any arbitrary user.

{% highlight console %}
$ cd ~nmunson
$ pwd
/afs/andrew.cmu.edu/usr13/nmunson
{% endhighlight %}

### `.` -- the current directory

Shortcut for what would be printed out by `pwd`.

__Note__: `pwd` and `.` are _not_ the same thing. `pwd` is a _command_ which
when run prints out the full path of the current directory. `.` (when used as
a directory) is _not a command_. It's merely a shortcut that can be used instead
of typing out an entire directory name.
{:.ui.warning.message}

### `..` -- the parent directory

Represents the directory above the current directory.

### `/` -- the root directory

This is the folder that contains _everything_. That is to say it has no parent.
Try running `cd ..` from this directory, and you'll find that you end up back in
`/`!


## Environment Variables (export)

Bash keeps a collection of environment variables for every user who's logged in.
These variables hold key pieces of information about what's going on. For
example, there's a variable called `SHELL` that says what shell you're running,
a variable named `USER` which contains the username of the current user, another
named `PWD` that contains the present working directory, and more.

### Setting Variables

You can control your environment by setting certain variables. Here are a few
examples of how that's done:

{% highlight console %}
# set my_variable to the string "hello" (no spaces around the '='!)
$ my_variable="hello"

# assign to another_var and "export" it (see below)
$ export another_var="some string"
{% endhighlight %}

The difference between using `export` and not using it deals with what programs
are able to read the contents of that variable. If a variable is not exported,
then only you will be able to read its contents. That is, none of the programs
that you run will be able to see the value of the variable that you just set.

In practice, you will almost always want to use `export` when setting variables.

### Accessing Variables

It helps to be able to check and print the value of environment variables! To
access to contents of a variable, you have to use the `$` operator.

{% highlight console %}
# get the value of my_variable and print it
$ echo $my_variable
hello

# print another_var surrounded by other text
$ echo lone${another_var}s
lonesome strings
{% endhighlight %}

Note that in the last example, had we not used `${...}` around the variable
name, like `lone$another_vars`, bash would have tried to look up the contents
of `another_vars`, not `another_var`. Since this is a different variable
entirely, something incorrect would have been printed.

## AFS

AFS is a distributed file system that was invented at CMU. You have a quota of
space and a home directory where you can put your files. You can access these
files from any Andrew Unix server or cluster computer on campus.

When you're using AFS, there's a system of permissions (called access control
lists, or ACLs) regulating who can access your files and what they can do to
them.  It's important to know about how to use this system so that you can stop
other people from getting access to your homework or other private files.

AFS is set up so that by default, you have a private directory where you can do
your work: `~/private`. If you don't change its permissions, you can put all of
your work for your classes in there and no one will be able to access it except
for you.

By default, AFS also has a `~/public` directory, where you can put things that you
want other people to be able to see. Other users will be able to read files that
you put there (and make copies of them), but not change them, delete them, or
add their own files.

## ACLs (fs)

You don't need to memorize this information! It's listed here solely for your
reference.
{:.ui.info.message}

It's important to be able to control who can access your files on AFS, and
there's a command called `fs` that lets you do this.

For more information on any of the following commands, you can always run `fs
help <command>` to get help on that fs subcommand.

### Listing Permissions (fs la)

You can use `fs la` (or fs listacl) to see what the permissions on a directory
are. The output will be an AndrewID or group followed by what they are allowed
to do. For example:

{% highlight console %}
jzimmerm@unix4:~$ fs la
Access list for . is
Normal rights:
  system:anyuser l
  jzimmerm rlidwka
{% endhighlight %}

There are several permissions that a user can have for a given directory:

| Symbol | Permission                                                      |
| ------ | ----------                                                      |
| `r`    | read files                                                      |
| `l`    | list files and see basic information about them                 |
| `i`    | create (or insert) new files                                    |
| `d`    | delete files                                                    |
| `w`    | edit (or write) to existing files                               |
| `k`    | "lock" files so that no one else can edit them at the same time |
| `a`    | admin, i.e. change AFS permissions                              |
{:.ui.striped.table}

### Setting Permissions (fs sa)

You can use `fs sa` (or fs setacl) to change the permissions on a directory. The
syntax is:

~~~
fs sa <directory> <user ><permissions>
~~~

where <permissions> is some of the letters rlidwk or "none". For instance, to let
the user bovik list, read, edit, create, lock, and delete files in the directory
foo, you'd do:

~~~
fs sa foo bovik rlidwk
~~~

### AFS Quota (fs lq)

You can use `fs lq` (or fs listquota) to see how much of your alloted AFS space
you're using. For example:

{% highlight console %}
jzimmerm@unix14:~$ fs lq
Volume Name                    Quota       Used %Used   Partition
user.jzimmerm                2000000     385982   19%         46%
{% endhighlight %}

