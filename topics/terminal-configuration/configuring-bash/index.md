---
layout: page
title: "Configuring Bash"
# What topic does this page belong to?
group: terminal-configuration
# Relative ordering of lessons within a topic
order: 2
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Configuring Bash
{:.ui.dividing.header.no_toc}

If you've reached this page, you're probably interested in how best to optimize
your overall Bash experience. In addition to the things we talk about here, you
should be sure to brush up on the [lessons in the Bash topic][bash]. You're
almost sure to find something there that will be useful to customizing your
terminal.

As we've mentioned a few times before, the file you're going to be using
abundantly to configure your prompt is the `.bashrc` file on Linux and the
`.bash_profile` on OS X. There's a good discussion of the underlying differences
between these files [here][bashrc], but you don't necessarily have to know what
they are to be able to configure Bash. From here on out, we'll use ~/.bashrc,
though you should substitute ~/.bash_profile if you're on OS X.


## The Prompt

One of the most popular aspects of Bash to customize is the prompt. [A quick
Google search][prompts] will turn up some vastly different Bash prompts; they
should give you an idea of what's possible. Since it's so popular, there are
lots of comprehensive resources online for how to get started configuring your
prompt. Both of the following links provide an excellent resource for you to get
started customizing your prompt. The first is more of a walkthrough, while the
second is an interactive web app that lets you visualize and generate a Bash
prompt.

- [How to Customize the Command Prompt][tutsplus]
  - You can probably find plenty of tutorials by searching for "customize Bash
    prompt" on Google. This was the best one I could find. It's fairly
    comprehensive and it goes through plenty of examples and screenshots.
- [Bash $PS1 Generator][generator]
  - This site (and the many like it) allow you visually configure your prompt,
    so that you don't have to look up the specific escape sequences needed to
    turn on colors or bring up information about the shell.

You should definitely give these a read through. People take great pride in
crafting a beautiful prompt, and it can be a really fun project to introduce you
to some deeper features of Bash.


## Tab Completion & The Prompt Line

By changing your Bash prompt, you get to customize the __look__ of your command
line. There are also a number of settings that let you configure the __feel__
of your command line, controlling how you actually interact with it.


### Tab Completion

You probably know by now that you can press TAB to have Bash automatically
complete filenames. Bash's tab completion functionality is actually much more
sophisticated; properly configured, Bash can complete things like Git branches,
package manager commands, flags to your favorite programs, and more. Getting
this new configuration is actually quite simple. Add the following lines to your
`~/.bashrc`:

{% highlight bash %}
if [ -f /etc/bash_completion ]; then
  source /etc/bash_completion
fi
{% endhighlight %}

This runs a script that turns on more powerful Bash completion scripts.

If you're on OS X, you'll have to install Bash completion separately. If you
haven't already, go install [Homebrew][brew], then run

{% highlight bash %}
# Install updated bash and bash completion
brew install bash bash-completion

# Add the newly installed bash to the list of valid login shells
echo "$(brew --prefix)/bin/bash" | sudo tee -a /etc/shells

# Change your shell to the new bash
chsh -s "$(brew --prefix)/bin/bash"
{% endhighlight %}

Finally, add the following to your `~/.bash_profile`:

{% highlight bash %}
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi
{% endhighlight %}

Once again, this runs a script that turns on the more powerful Bash completion
scripts.

From time to time when installing a piece of software, you might see something
in a post-installation note about completion scripts having been installed. For
example, when installing the most recent version of Git through Homebrew on OS
X, the following message is printed:

~~~
Bash completion has been installed to:
  /usr/local/etc/bash_completion.d
~~~

This means you can now do things like `git br<TAB>` and have Bash complete that
to `git branch`, as well as `git branch ma<TAB>` and have Bash complete that to
`git branch master`.

With a little bit of digging, you'll be able to find Bash completion scripts for
many commonly used programs. They'll either install themselves or require that
you add a snippet similar to the one above to your ~/.bashrc.


### Readline and the .inputrc

Tab completion isn't the only way you interact with with the command line. Bash
uses a library called GNU Readline for reading lines of text from the user;
everything you type into Bash first is processed by Readline. Readline is
_incredibly_ configurable--for a complete list of options, [see this
page][readline]. Since Readline is actually its own program, it uses its own
dotfile, named `~/.inputrc`, a file which is used to configure all programs that
use Readline. Since there are so many options that you can pass to it, I'll
summarize some that I've found most helpful.


#### Vim-Style "Menu" Tab Completion

Vim by default handles tab completion differently than the way Bash does; when
you press TAB, it completes one whole filename instead of a prefix, and
successive TABs cycle through the available options. To enable this in Bash, add
these lines to your `~/.inputrc`:

{% highlight bash %}
# Set up Vim-style tab completion
TAB: menu-complete
set show-all-if-ambiguous on
{% endhighlight %}

The first line binds the TAB key to the menu-complete functionality, which
handles cycling through available options. The second line turns off the bell
sound that would normally ring if you pressed TAB when there are still multiple
options that could be completed.


#### Treat Symlinked Directories Like Directories

When tab-completing the name of a symbolic link, the default behavior is to
treat it like a file. That is, once it has completed the name of the symbolic
link, it puts a space between the end of the filename and your cursor. If the
symlink was to a directory that you wanted to include in a longer path name,
this isn't the desired behavior. To have it print a `/` instead of a space, use
this:

{% highlight bash %}
# If a tab-completed file is a symlink to a directory,
# treat it like a directory not a file
set mark-symlinked-directories on
{% endhighlight %}


#### Use GNU `ls` Colors When Tab-Completing

Normally when you press TAB to complete a filename, the files are all colored
the same. However, when you run `ls`, all the files are colored according to the
type of file that they are. To use these same colors when printing the
completion options, add the following to your .inputrc:

{% highlight bash %}
# Use GNU ls colors when tab-completing files
set colored-stats on
{% endhighlight %}

__Note__: You can actually do a fair deal of configuration just on the colors
that ls uses, such as highlighting images, movies, and PDFs in different
colors. One project that does this particularly well is [Solarized Color Theme
for GNU ls][dircolors]. It assumes that you have GNU ls installed, so you'll
have to install it separately through [Homebrew][brew] if you use OS X.
{:.ui.info.message}


#### Vim-Style Line Editing

Hopefully by now you're a Vim ninja! If so, you've probably come to understand
just how awesome Vim's composable, modal editing style can be. To gain access to
the same vi-style key bindings when typing at the REPL, include this in your
`.inputrc`:

{% highlight bash %}
# Edit with Vi keybindings
set editing-mode vi
set keymap vi
{% endhighlight %}


#### The Magic of `rlwrap`

Now you can use the power of Vi in Bash, Python, and any other program that uses
Readline! If your stuck using a lesser program that doesn't support readline out
of the box (for example the SML/NJ REPL), you can simply preface that program
with `rlwrap` when running it:

{% highlight bash %}
$ rlwrap sml
{% endhighlight %}

Not only does this give you access to all the configurations we just added to
our ~/.inputrc, it also turns on command history, so you can scroll through
all previously-run commands.


## Aliases

Aliases are a way of making long commands short. The syntax is super simple, and
they're incredibly useful for speeding up your workflows.

Here's the syntax:

~~~
alias <something short>="<something really long>"
~~~

And here's an example:

{% highlight bash %}
# `git status` is a really frequently used command... Let's shorten it!
$ alias gs="git status"
$ gs
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)
nothing to commit, working directory clean
{% endhighlight %}

If we put `alias gs="git status"` in our ~/.bashrc, we'll have access to this
alias every time we log in!

Aliases are really useful for commands that take a lot of flags. For example,
most people prefer to have `ls` colorize output, but this feature isn't on
by default---you have to set a flag. As such, most people have the following
definition in their ~/.bashrc:

{% highlight bash %}
alias ls="ls --color=auto"
{% endhighlight %}

This "shadows" the `ls` command. Now when you enter `ls` at the command prompt,
instead of running the `ls` command immediately, Bash first looks up the `ls`
alias, substitutes the text `ls` for `ls --color=auto`, and then runs it. Note
that this doesn't break down if we pass an argument to `ls`; it will simply be
tacked onto the end of the command. That is, `ls ~/Documents` just becomes `ls
--color=auto ~/Documents`.

## Environment Variables

There are loads of environment variables that can be used to configure your
terminal setup. Changes to environment variables won't persist across logins; if
you want them to be available and set to the same value, you'll have to add them
to your ~/.bashrc.

One environment variable we've seen already is the `PATH` variable. Recall that
this variable contains a list of colon-separated directories which Bash uses to
locate runnable programs. Something common people like to do is to have their
own directory, usually named `~/bin`, to hold scripts and programs that they'd
like to be easily accessible. To get this directory into the `PATH` variable,
you'd add this line to your `~/.bashrc`:

{% highlight bash %}
export PATH="$PATH:$HOME/bin"
{% endhighlight %}

This tacks `$HOME/bin` onto your normal `PATH` variable.

Oftentimes certain programs will need to have certain environment variables set
in order to run correctly. If you read in the documentation that you need to do
this for a program you want to use, all you have to do is change that variable
in your ~/.bashrc to have it's value set correctly every time you log in.



[bash]: {{ /topics/bash/ | prepend: site.baseurl }}
[bashrc]: http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html
[prompts]: https://www.google.com/search?tbm=isch&q=bash+prompt

[tutsplus]: http://code.tutsplus.com/tutorials/how-to-customize-the-command-prompt--net-20586
[generator]: https://www.kirsle.net/wizards/ps1.html

[brew]: http://brew.sh/

[readline]: http://cnswww.cns.cwru.edu/php/chet/readline/readline.html

[dircolors]: https://github.com/seebi/dircolors-solarized
