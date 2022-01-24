---
layout: page
title: AFS
# What topic does this page belong to?
group: terminal-usage
# Relative ordering of lessons within a topic
order: 4
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# AFS
{:.ui.dividing.header.no_toc}

AFS stands for [Andrew File System] and is a distributed file system that was
invented at CMU. You have a quota of space and a home directory where you can
put your files. You can access these files from any Andrew Unix server or
cluster computer on campus.

When you are using AFS, there's a system of permissions (called access control
lists, or ACLs) regulating who can access your files and what they can do to
them.  It's important to know about how to use this system so that you can stop
other people from getting access to your homework or other private files.

AFS is set up so that by default, you have a private directory where you can do
your work: `~/private`. If you do not change its permissions, you can put all of
your work for your classes in there and no one will be able to access it except
for you.

By default, AFS also has a `~/public` directory, where you can put things that you
want other people to be able to see. Other users will be able to read files that
you put there (and make copies of them), but not change them, delete them, or
add their own files.

## ACLs (fs)

You do not need to memorize this information! It's listed here solely for your
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
you are using. For example:

{% highlight console %}
jzimmerm@unix14:~$ fs lq
Volume Name                    Quota       Used %Used   Partition
user.jzimmerm                2000000     385982   19%         46%
{% endhighlight %}


## Recovering Lost Files

CMU's AFS has a feature called OldFiles that keeps track of a snapshot of your
home folder from the previous day.

Look for it in `~/OldFiles`. This is a read-only nightly snapshot of your files
that you can use to copy files you accidentally deleted back to where they
should be. You can `cp` files out of it.

If `~/OldFiles` is missing, there is probably still hope! Run the following
commands (substitute your AndrewID for `ANDREW_ID_HERE`):

{% highlight bash %}
$ cd ~
$ fs mkmount OldFiles user.ANDREW_ID_HERE.backup
{% endhighlight %}

Now you can look in `~/OldFiles` to find your backed up files.

__Caution__: OldFiles only backs up your files once a day, so you
could still lose up to a day of work if you need to restore from OldFiles.
Also, OldFiles is a feature of Andrew Unix systems and most machines do not
have such a system. Be careful when using `rm` and other destructive commands.
{:.ui.warning.message}


[Andrew File System]: https://en.wikipedia.org/wiki/Andrew_File_System
