---
layout: page
title: "Git Command Overview"
# What topic does this page belong to?
group: git
# Relative ordering of lessons within a topic
order: 2
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Git Command Overview
{:.ui.dividing.header.no_toc}

## Basic Terminology

__A commit__ is a set of changes to the files tracked by your repository. This
can include files added, files removed, and files changed.

__To commit__ is to add a new commit to the repository history.

A __repository__ (or __repo__) is a folder where you can specify files for git
to track. In each repository, you can commit files and folders and have git
remember what changes you have made. You can also push your changes so that
people you're working with can see them.

We'll be dividing the set of things you might want to do into "collaborative"
and "private" actions for the sake of organization. In reality, these lines are
a bit blurred.

## "Private" Actions

### I would like to know what in the world is going on:

{% highlight bash %}
$ git status

AND

$ git log --pretty=oneline --decorate --graph --all
# or without as much information,
$ git log
{% endhighlight %}

Get used to running these commands after you run any other Git command.

### Creating a new, local repo:

{% highlight console %}
$ mkdir <my-repo-name>
$ cd <my-repo-name>
$ git init

OR

git init <my-repo-name>
{% endhighlight %}

### "Stage" a files changes (staging comes before commiting):

{% highlight bash %}
# stage files by name
$ git add <file> [...]

# stage all files in current directory
$ git add .

# Stage all files
$ git add -A
{% endhighlight %}

It's better to create many small commits rather than one big one, which is why
it's better to use the first version to stage specific files. This lets you
create a commit corresponding to a specific change.

### Committing a set of changes:

{% highlight bash %}
# if you're already run `git add`
$ git commit

# If you haven't run `git add`
$ git commit -a

# If you want to write a short commit message:
git commit -m
{% endhighlight %}

### Seeing what I've changed:

{% highlight console %}
$ git diff
{% endhighlight %}

### Seeing what the last commit changed:

{% highlight console %}
$ git show -p HEAD
{% endhighlight %}

### Revert the changes a commit introduced:

{% highlight console %}
$ git revert <commit hash>
{% endhighlight %}

### Completely reset the repo to what it looked like at the last commit:

{% highlight bash %}
# This will destroy your current changes!
$ git reset --hard
{% endhighlight %}


## "Collaborative" Actions

### Set up a shared, upstream repository

{% highlight bash %}
$ mkdir <my-repo-name>
$ cd <my-repo-name>
$ git init --bare

OR

git init --bare <my-repo-name>
{% endhighlight %}

The trickiest part to getting a shared bare repo to work is to make sure that
the [AFS permissions][acls] are correct.

### Cloning a shared, upstream repo

{% highlight bash %}
# If your upstream is for example, a folder on AFS
$ git clone <path to bare> [optional directory to create]

# If your upstream is online, like on GitHub
$ git clone https://example.com/my/repo [optional directory to create]
{% endhighlight %}

### Sharing your changes with everyone

{% highlight bash %}
$ git push origin master
# you may have to replace "origin" with the name of the
upstream you want to push to, and "master" with the branch
{% endhighlight %}

There's a trick you can do to shorten this command:

{% highlight bash %}
# Run this on your first push
$ git push -u origin master
# the same stipulation from above applies

# then run this on all subsequent pushes
$ git push
{% endhighlight %}


## The Staging Area

So far, all of the commands discussed have dealt with the files in your
directory (the "working tree"), the local repository, and possibly a remote
repository. There is actually a fourth area where your changes can be stored,
called the "index", which is logically located between the working tree and the
repository. The index is a sort of staging area for commits, giving you the
ability to control and inspect exactly what will be included in a commit. When
something is in the index, it is said to be "staged".

To "stage" changes (to add changes from your working tree to the index), you can
use various forms of the git add command.

- `git add <files>` - add the listed files to the index
- `git add -p` - interactively add "hunks" to the index. This examines all files
  tracked by the repository, detects the sections that have individually, and
  lets you add sections of files individually.
- `git add -p <files>` - like git add -p, but only looks at the listed files.

You can examine the staged changes with git diff --cached.

If you have staged changes which you wish to remove from the index, the command
git reset can remove them:

- `git reset <files>` - unstage all changes from the listed files.
- `git reset -p` - interactively remove staged hunks from the index.
- `git reset -p <files>` - probably what you expect
- `git reset --mixed` - unstage all changes in the index

Once you have modified the index to your liking, you can commit the staged
changes with a simple git commit (no arguments!).


## Working on a Large Feature

If you'd like to make a lot of commits and keep them logically separate for a
while, while still sharing them with other people, you can use branches. This is
frequently used when adding a large feature to a project: you work on the new
feature in a new branch, leaving the master branch clean for others (or
yourself) to make bugfixes; then, when the new feature is stable, you merge it
back into the master branch.

To create a new local branch, you can say `git checkout -b <branchname>`. (Yes,
the naming of this command is kind of inane. It's equivalent to running `git
branch <branchname>` to create the branch, and then `git checkout branchname` to
switch to it.)

You can see what branches exist using `git branch` with no arguments. The one
you are currently on will have a star next to it.

Now you can make changes and commit as usual on the new branch. You can switch
between branches using `git checkout <branchname>`.

To share your branch with everyone else, do `git push <branchname>`. You'll also
want to run `git branch --set-upstream <branchname> remotes/origin/` so that
when you pull, git will know how to update your new branch.

To use a branch that someone else has added to a remote repository, do `git
checkout --track -b <branchname> origin/<branchname>`.

When you're done with the new branch and ready to combine it into your main one,
switch to the master branch (using `git checkout master`) and do
`git merge <branchname>`. This will pull in all the changes from the branch (as
usual when merging, you may have to resolve conflicting changes by hand).


## Troubleshooting

You can use the Git man page: `man git` to see an overview, or
`git help <command>` to open the man page for each individual git command.



[acls]: {{ "/topics/terminal-usage/environment-afs/#acls-fs" | prepend: site.baseurl }}
