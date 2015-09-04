---
layout: page
title: "Initial Setup"
group: navigation
order: 2
script: /javascripts/initial-setup.js
---

{% include toc.md %}

# Initial Setup
{:.ui.dividing.header.no_toc}

## Help!

If at any point you get stuck during this initial setup or throughout the
semester, please don't hesitate to email the course staff at 15-131-staff at cs
dot cmu dot edu.

## Set Up SSH

SSH is a program that lets you log in to a server and run commands on it. At
CMU, you'll use SSH extensively in most of your CS classes. SSH is also a very
important tool for working in industry and knowing how to use it will be
essential throughout your career. (Even in academia, SSH is a very important
tool.)

Throughout the rest of the semester we'll teach you about how to use it and why
you want to, but for now we'll just focus on getting it set up so that you can
start using it right away.

The exact instructions on how to set up SSH vary based on what operating system
you're using, so choose the relevant section and proceed from there.

<div id="ssh">
<div class="ui top attached tabular menu">
  <a href="#" class="active item" data-tab="osx">Mac OS X</a>
  <a href="#" class="item" data-tab="linux">Linux</a>
  <a href="#" class="item" data-tab="windows">Windows</a>
</div>
<div class="ui bottom attached active tab segment" data-tab="osx">

<!-- TODO add screenshots for OS X initial setup -->

Congratulations! Your OS has a built-in terminal (Terminal.app), so you don't
need to download anything. You might consider looking at one of the other
terminals for OS X like [iTerm2][iterm2] if you want cooler features like better
color support, easier theming, vertical splits, advanced `tmux` integration, and
more.

Sshing is simple; run the following command, replacing `ANDREWID` with your
Andrew ID:

{% highlight bash %}
ssh ANDREWID@unix.andrew.cmu.edu
{% endhighlight %}

When you enter this, you will be prompted for a password--it's the same password
you use to log onto WebISO.

To facilitate quick sshing, you should edit the __ssh config file__. Use the
following command to do that (you don't need to understand this command
yet--we'll cover it later in the semester). Copy and paste the command into
your terminal and hit enter.

{% highlight bash %}
mkdir -p ~/.ssh; touch ~/.ssh/config; nano ~/.ssh/config
{% endhighlight %}

Add the following (replacing `ANDREWID` with your Andrew ID) to this file, save
the file, and exit nano. (Some notes: The `^` character is used to represent
the "control" key, so `^O` means "hold control and press the O key", and nano
uses "WriteOut" to mean "save". Nano will ask you to confirm the filename you
want to save. Just hit enter to confirm it.)

<!-- TODO add better fenced code blocks -->

~~~
Host andrew
Hostname unix.andrew.cmu.edu
User ANDREWID
GSSAPIAuthentication yes
GSSAPIDelegateCredentials yes
~~~

Normally, without the above incantation, you would need to type `ssh
ANDREWID@unix.andrew.cmu.edu` to ssh, but now you can just type `ssh andrew`
and the rest will be auto-detected. If you prefer a different name than
`andrew`, you can change that line (`Host andrew`) in the ssh config file.

<!-- TODO add note about passwordless ssh -->

</div>
<div class="ui bottom attached tab segment" data-tab="linux">

First, you should choose a terminal. Your distro almost certainly has one
already, but if you don't the default one you can download another. Some
popular terminals are

- Terminator
- Konsole
- Gnome Terminal
- xterm
- xrvt-unicode

Once you've done that, follow the instructions in the Mac section.

</div>
<div class="ui bottom attached tab segment" data-tab="windows">

We recommend that you use [MobaXterm][mobaxterm] for SSH. For detailed
installation and setup instructions, see [this blog post][mobaxterm-tutorial].

If you're already somewhat familiar with Linux, however, we strongly recommend
that you follow the Linux initial setup instructions.

</div>
</div>

<div class="ui info message">

__A Note About Terminals__

I'm using the word "terminal" here for consistency with the way people use the
word commonly. To be technically correct, I should call it a "terminal emulator,"
but this phrasing could lead to confusion so I'm using the slightly less correct
phrasing instead.

</div>

## Changing Your Shell

A _shell_ is a program that lets you enter in text commands to a computer and
get output from those commands. Shells are essential for using SSH and very
useful for programming. We'll be doing all of our work in this class within a
shell, so it's important that we use the right one!

The default shell on Andrew Linux systems, `csh`, is lacking in many ways. For
that reason, we'll be switching you over to a shell called bash. (If you have
strong preferences about your shell, you're welcome to use another shell as long
as it's not csh.)

In order to switch your shell over, follow these instructions:


1. SSH into andrew using the setup you did above.
1. Run the command `chsh` at the prompt (type it and hit enter).
1. You'll be asked to enter a new shell. (When doing this, be very careful; if
   you enter something that isn't a shell, you will not be able to use your
   account until the problem is fixed, which is not easy to do!)
   Type in `/bin/bash` and hit enter.
1. If you log out (disconnect) and connect again, your new shell should be bash.
   (It says it will take a long time, but it's generally nearly instantaneous.
   If it's taking longer than 30 minutes, you might want to send us an email.)

When entering your new shell for step 3, mistyping the shell will cause you to
be locked out until the problem is fixed, which takes at least a day to do.
{:.ui.error.message}

You can disconnect by either typing "logout" and hitting enter or by
using the keyboard shortcut `^D` (control-D). `^D` is a very common keyboard
shortcut that very often will exit you out of programs like shells, command
prompts, and REPLs.
{:.ui.info.message}

## Get the GPI Configuration

The default settings for bash (the shell you switched to) and other programs
you're likely to use during the semester are rather minimal, so we've written
some configuration files that will give you nicer defaults. Of course, if you
want to change these settings to better fit your preferences you can do so.

SSH in to `andrew`.

First, we'll get a few basic files. Copy the following commands into your
terminal, hitting enter after each one.

{% highlight bash %}
curl https://raw.githubusercontent.com/cmugpi/dotfiles/master/bash_login > ~/.bash_login
curl https://raw.githubusercontent.com/cmugpi/dotfiles/master/bashrc > ~/.bashrc
curl https://raw.githubusercontent.com/cmugpi/dotfiles/master/bashrc_gpi > ~/.bashrc_gpi

curl https://raw.githubusercontent.com/cmugpi/dotfiles/master/vimrc > ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
{% endhighlight %}

Side note: these will overwrite any existing files you might have. If you have
your own bashrc or vimrc, read the [Advanced Usage][advanced] instructions.
{:.ui.info.message}

Then, disconnect from Andrew (remember, `^D`) and log in again. When you've logged
in, type `echo $GPI_PATH` and hit enter. If you see a file path, then everything
went correctly! (If you see nothing, something went wrong. Try logging out and
back in, and if that doesn't fix it, make a post on Piazza or email us.)

## Get a Lern2Unix Account

We'll be using the lern2unix website as a backend to submit and download
problems, so you'll need a [lern2unix account][lern2unix-signup] which you
should sign up for before our first lecture.

__IMPORTANT__:
You need to use your AndrewID for your username and your
andrew.cmu.edu email address for your email.
{:.ui.error.message}


[mobaxterm]: http://mobaxterm.mobatek.net/
[mobaxterm-tutorial]: http://blog.jez.io/2014/09/28/setting-up-mobaxterm-for-ssh-on-windows/
[iterm2]: http://iterm2.com/
[advanced]: https://github.com/cmugpi/dotfiles#advanced-usage
[lern2unix-signup]: http://www.lern2unix.com/account/signup/
