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

$ git log --pretty=oneline --decorate --graph
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

This section is unfinished. In the mean time, have a look at the course notes
from a previous semester:

<https://www.cs.cmu.edu/~15131/f14/git.html>




