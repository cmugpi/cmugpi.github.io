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

## Getting Yourself a Git Repository

### Creating a new, local repo:

{% highlight bash %}
$ mkdir <my-repo-name>
$ cd <my-repo-name>
$ git init

OR

git init <my-repo-name>
{% endhighlight %}

If you're not starting a new project but are making changes to a project that
already exists, it makes more sense to "clone" the repo - that means to download
a copy of a git repository stored somewhere else.

### Cloning a shared, upstream repo

{% highlight bash %}
# If your upstream is for example, a folder on AFS
$ git clone <path to bare> [optional directory to create]

# If your upstream is online, like on GitHub
$ git clone https://example.com/my/repo [optional directory to create]
{% endhighlight %}

Now that you have a git repository on your computer, you will be able to
examine the status of the git repository and make commits.

## Making and Committing Changes

After creating, deleting, or editing some files, you can ask git to tell you
which files have been modified since the last commit.

### Finding the current state of the git repo:

{% highlight bash %}
$ git status
{% endhighlight %}

Get used to running this command often!

In order to commit a change or a set of changes, you must "stage" them first.

### "Stage" a file's changes (staging comes before committing):

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

There's even more you can do with the staging area - be sure to checkout the
section on "More On The Staging Area" later on this page.

Sometimes you want to know not just which files you've changed and/or staged,
but also what in the file was changed.

### Seeing what I've changed:

{% highlight bash %}
$ git diff
{% endhighlight %}

Once you have staged all the changes you want for a commit, you can tell git to
make a commit.

### Committing a set of changes:

{% highlight bash %}
# if you've already run `git add`
$ git commit

# If you haven't run `git add`
$ git commit -a

# If you want to write a short commit message:
git commit -m
{% endhighlight %}

Now that you've made a commit, it will show up in git's record of commits.

### Checking the commit history

{% highlight bash %}
$ git log --pretty=oneline --abbrev-commit --decorate --graph --all
# Shorter to type, but without as much information:
$ git log
{% endhighlight %}

You will be using this command a lot too!

You can always check what the last commit changed.

### Show the changes in the most recent commit:

{% highlight bash %}
$ git show -p HEAD
{% endhighlight %}

Sometimes you want to "undo" a commit. You can do this in git by reverting the
commit. This creates a new commit that undoes all the changes of the commit.

### Revert the changes a commit introduced:

{% highlight bash %}
$ git revert <commit hash>
{% endhighlight %}

## Branches

If you'd like to make a lot of commits and keep them logically separate for a
while, while still sharing them with other people, you can use branches. This is
frequently used when adding a large feature to a project: you work on the new
feature in a new branch, leaving the master branch clean for others (or
yourself) to make bugfixes; then, when the new feature is stable, you merge it
back into the master branch.

### Creating a new branch and switching to it

{% highlight bash %}
$ git checkout -b <branchname>
{% endhighlight %}

(Yes, the naming of this command is kind of inane. It's equivalent to running
`git branch <branchname>` to create the branch, and then `git checkout
branchname` to switch to it.)

### Listing your branches

{% highlight bash %}
$ git branch
{% endhighlight %}

The one you are currently on will have a star next to it.

### Switching branches

{% highlight bash %}
$ git checkout <branchname>
{% endhighlight %}

Now you can make changes and commit as usual on any new branch you create. At
some point though, you'll want to merge the changes made on one branch to your
"main" branch.

### Merging branches

{% highlight bash %}
$ git merge <branchname>
{% endhighlight %}

This will merge the branch called "branchname" into your current branch. So if
you want to merge "branchname" into the master branch, you should `git checkout`
the master branch, then run `git merge <branchname>`. This will pull in all the
changes from the branch into the master branch. You may have to resolve some
conflicting changes by hand.

## Pushing

Earlier on, you may have "cloned" your git repository from another place like
Github. So there you were downloading changes to a git repository. You can also
upload changes, which we call "pushing".

### Sharing your changes with everyone

{% highlight bash %}
$ git push origin master
{% endhighlight %}

You may have to replace "origin" with the name of the upstream you want to push
to (if you cloned the repository, it will be "origin" by default). You may also
have to replace "master" with the branch you want to push changes from.

There's a trick you can do to shorten this command:

{% highlight bash %}
# Run this on your first push
$ git push -u origin master
# the same stipulation from above applies

# then run this on all subsequent pushes
$ git push
{% endhighlight %}

## More On The Staging Area

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
  tracked by the repository, detects the sections that have been modified, and
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

## Troubleshooting

You can use the Git man page: `man git` to see an overview, or
`git help <command>` to open the man page for each individual git command.
