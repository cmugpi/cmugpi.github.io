---
layout: page
title: "Recovering Lost Files"
# What topic does this page belong to?
group: 'terminal-usage'
# Relative ordering of lessons within a topic
order: 5
---

# Recovering Lost Files
{:.ui.dividing.header.no_toc}

## I just deleted my files!

Don't panic. CMU keeps a backup for you.

Look in `~/OldFiles`. This is a read-only nightly snapshot of your files that
you can use to copy files you accidentally deleted back to where they should be.
You can `cp` files out of it.

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
