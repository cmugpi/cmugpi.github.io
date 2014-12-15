---
layout: page
title: "Getting Started With Git"
# What topic does this page belong to?
group: git
# Relative ordering of lessons within a topic
order: 1
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Getting Started with Git
{:.ui.dividing.header.no_toc}

Unlike most Unix tools, Git is very widely documented for all levels of users.
While there are probably many causes for this, not the least of them being that
Git is a very sophisticated and useful tool, the rise in popularity of online
Git interfaces like GitHub probably has helped.

## Config

Git needs some information from you before you can start using it: your name and
email.

{% highlight bash %}
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
{% endhighlight %}

A lot of people wonder if their email has to be the same as their GitHub
email or their Andrew email. It doesn't.

Sometimes different Git services (GitHub, BitBucket) need to be able to
_recognize_ the email that you use in order to identify you. If you do choose a
different email for this step and you are using a site like GitHub, you may
want to [see this GitHub help page][wronguser].
{:.ui.info.message}

Finally, run

{% highlight bash %}
git config --global color.ui auto
{% endhighlight %}

This adds color to most of the Git commands, which makes it easier to see what's
going on.

## Resources

With that in mind, we'll be reusing tutorials and guides that other people have
written to teach Git in this course. Check out the "Resources" section of the
[Git topic][gittopic] page. The resources are ordered according to increasing
familiarity with Git. If you've never used Git before, start at the top. As you
gain more understanding, work your way down the list!

At the very least, make sure you know the topics covered in the first two
resources listed on the [Git topic][gittopic] page: [Try Git][trygit] and [Git -
The Simple Guide][simplegit].

## Help

Apart from Googling (which is probably the most useful for Git of all the Unix
tools we cover), Git has a very thorough man page system. Because the majority
of git uses subcommands (`git clone` and `git commit` are examples of
_subcommands_), to access the man pages for these subcommands you have two
options:

{% highlight bash %}
$ git help <command>

# OR

$ man git-<command>
{% endhighlight %}

Both of these options open up the appropriate Git command's man page.

[wronguser]: https://help.github.com/articles/why-are-my-commits-linked-to-the-wrong-user/
[gittopic]: ..
[trygit]: https://try.github.io/
[simplegit]: http://rogerdudler.github.io/git-guide/
