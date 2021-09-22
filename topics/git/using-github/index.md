---
layout: page
title: "Using Git on GitHub"
# What topic does this page belong to?
group: git
# Relative ordering of lessons within a topic
order: 3
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Using Git on GitHub
{:.ui.dividing.header.no_toc}

[GitHub][github] is a remarkably popular platform for sharing and collaborating
on code. At it's core, GitHub acts as a Git server that lets you easily create
upstream, bare repos. Recall that bare repos are repos that let you and your
collaborators push to and pull from.

GitHub as a service has added a number of features on top of Git that enable
quick and easy collaboration (forking and pull requests) as well as a
conventional model for how to use the core feature of Git to propose and discuss
changes.


## Forking a Repo

The first step to getting started collaborating on a project that's hosted on
GitHub is to fork it. Forking a repo can be thought of cloning a repo, but it
clones it from GitHub to GitHub instead of from GitHub to your laptop.

For the curious, forking is essentially the same as running

{% highlight bash %}
git clone --bare https://github.com/UPSTREAM/repo https://github.com/YOUR/repo
{% endhighlight %}

GitHub has a [really nice writeup][forking] on how to fork a repo.


## Using the GitHub Flow

Once you've forked a project's repository, the next step is to make a branch for
adding your feature. We've discussed branches a little bit before. For those
interested in really extending their knowledge of how Git works though, you
should definitely check out [Learn Git Branching][learnGitBranching].

GitHub markets this model as "the GitHub Flow". There's a [nice
visualization][github-flow] of how this works online.


## Making a Pull Request

The step to actually get people discussing or accepting your changes into a repo
on GitHub is to make a pull request. This works by sending something of a
notification that you've pushed code to your fork that you'd like the upstream
repo to take a look at.

As you might expect, GitHub has a [nice tutorial][pull-request] for how to make
a Pull Request as well.


[github]: https://github.com
[forking]: https://help.github.com/articles/fork-a-repo/
[learnGitBranching]: http://pcottle.github.io/learnGitBranching/
[github-flow]: https://guides.github.com/introduction/flow/
[pull-request]: https://help.github.com/articles/using-pull-requests/



