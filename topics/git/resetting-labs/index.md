---
layout: page
title: "Resetting your UNIX labs distributed through git"
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

Let `<labname>` be the name of the lab you are currently working on. 

## No new commits

#### reset some changes
If you have not made any new commits since pulling the lab, and you want to reset any changes to a single file, do the following under the `<labname>` directory:
{% highlight bash %}
git checkout <file-you-want-to-reset>
{% endhighlight %}

#### reset the entire lab
If you have not made any new commits and you want to reset the entire lab, do the following under the `gpi-labs` directory:
{% highlight bash %}
rm -r <labname>
git checkout <labname>
{% endhighlight %}

## Made a new commit 
#### no new changes since the new commit
If you have made a single new commit since pulling the lab, and you have not made any new changes since the new commit, and you want to reset all changes in this new commit, do the following under the `<labname>` directory:
{% highlight bash %}
git reset --hard HEAD^
{% endhighlight %}

#### made changes since new commit
You will need to remove/reset those changes first (see no new commit's), before the following the instructions for (no new changes since new commit). 
