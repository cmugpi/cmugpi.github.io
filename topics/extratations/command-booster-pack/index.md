---
layout: page
title: "Command Booster Pack"
# What topic does this page belong to?
group: extratations
# Relative ordering of lessons within a topic
order: 1
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Command Booster Pack
{:.ui.dividing.header.no_toc}

Starting out on the command line is a pretty weird feeling, mostly because you
have really no idea what it's capable of. In fact, the list of things you can
accomplish while at a terminal is basically endless; we hope to show you this by
exposing you to some useful and not-so-useful commands.


## Usage Tips

First off, though, let's start off with some quick notes about how to make your
life easier when at a command prompt.

### Quickly completing filenames

__Make a habit of pressing TAB__ to finish your filenames when you enter them as
arguments at the command line. This lets you work faster, but also
eliminates errors due to typos.

### Re-using your recently run commands

Oftentimes, the next command you want to run is just a simple modification
of the command you ran last, or one you ran a while back. To __cycle through
the history of all your commands__, press the UP and DOWN arrow keys.

### Let your computer type faster

Since the command prompt doesn't let you use your mouse to edit commands,
you'll often find yourself holding down a key to get it to repeat. To
minimize this time spent waiting, you might want to __set your key repeat
speed to its max setting__.

### Quitting programs

If a command is running that you want to ask to stop, you can usually run Ctrl +
C (abbreviated `^C`) to get the program to stop.

### Log out of the shell quickly

To quickly log out of an ssh session, you can type ^D (i.e., Ctrl + D).

### Pay careful attention to where you are

More so than most programs, you have to always know where you are when working
at a terminal. There are two parts to this:

- Your current working directory
  - This path is always printed in your prompt if you followed the initial setup
    instructions.
- Your current host computer
  - Sometimes you'll have to run a certain command from an Andrew Unix machine,
    and othertimes you'll have to be doing something on your local computer.
    It's important that you make sure of whether you're running a command on a
    remote computer or locally, especially when `scp`ing files (a command which
    has to be run from your local computer).


## Getting Help

The terminal is not a very intuitive interface, in the sense that it encourages
you to do the right thing or helps you to figure out how things work. Luckily,
there are three places to look for help that almost never fail.

### Google

Funny enough, Google tends to be a great resource. Try to formulate your
question as specifically as possible, and after having done so, Google will
almost certainly be able to answer your question, or at least point you in the
right direction.

### Help Flags

Almost all commands have a flag called `-h` or `--help` which tells you how to
use it. For example, to learn how to use the `tar` command we've been using to
extract PuzzlePacks, you can run `tar --help` or `tar -h`.

This isn't standard (not every command implements these flags), but most do.

### Manual (man) pages

Finally, most system-installed commands have what are called manual or "man"
pages. It's basically a documentation system that exists on your local computer
to document the way programs work, specifically what flags and options are
available.

To invoke a man page, you use `man <program>` to find out information about that
program.


## Commands

Here are some commands paired with what they do. Some are useful, some are not
quite as useful, but hopefully through them you can get to see what kinds of
things are possible.

### Useful

- `cat`
  - Can be used to dump a file's contents to the terminal
  - sample usage:

    ~~~
    $ cat my-file.txt
    This is the contents of my file. Whoo hoo!
    ~~~
- `less`
  - Ised to read longer files
  - sample usage:

    ~~~
    $ less book.txt
    ~~~
  - To quit out of less, press `q`
- `time`
  - Keeps track of how long a program ran.
  - sample usage:

    ~~~
    $ time less book.txt
    ~~~
- `wc`
  - Counts how many words, characters, and lines there are in a file
  - sample usage:

    ~~~
    # prints number of lines, words, and characters in the file
    $ wc book.txt

    # just the number of lines
    $ wc -l book.txt

    # just the number of characters
    $ wc -c book.txt
    ~~~
- `find`
  - Helps you locate files if you know their name.
  - sample usage:

    ~~~
    $ find . -name my-file.txt
    ~~~
  - We'll see some more advanced usage of `find` later in the semester
- `cal`
  - Prints out a calendar
  - sample usage:

    ~~~
    $ cal

    $ cal 2015
    ~~~
- `date`
  - Prints out the date in a variety of formats
  - sample usage:

    ~~~
    $ date
    ~~~

### Package Managers

Most of these command come standard with the operating system when you install
it. However, people are always coming up with cool new tools. The easiest way to
get these tools is through a _package manager_, which is just a way of
installing software through the command line.

Using package managers to install software is very powerful. When installing
software this way, installing new software is just a matter of running a
command, and the package manager will keep track of what you've installed and
what version it is.

Each Linux distro has its own package manager. For example, on Ubuntu the
default is `apt-get`. OS X, on the other hand, doesn't ship with one by default.
Luckily, there is an immensely popular community-maintained package manager
called Homebrew, which [we recommend you install](http://brew.sh).

Once you have a package manager in place, it becomes really easy to install
other commands. For example, with Homebrew this looks like

~~~
brew install <package>
~~~

And with Ubuntu it looks like

~~~
sudo apt-get install <package>
~~~

### Installing some new commands

With your newfound package manager prowess, let's poke around with some new
commands. You can use `brew` or `apt-get` to install the following commands on
your system.

- `tree`
  - Shows files and folders in a tree-like structure.
  - sample usage:

    ~~~
    $ tree

    # to show the tree only two levels deep
    $ tree -L 2
    ~~~
- `wget`
  - Downloads files from the Internet
  - sample usage:

    ~~~
    $ wget http://www.kataan.org/public/ebook/eg.txt
    ~~~
  - It turns out `wget` is really powerful. This command lets you download a
    copy of the entire GPI website:

    ~~~
    $ wget --recursive --page-requisites --html-extension --convert-links --restrict-file-names=windows --no-parent https://www.cs.cmu.edu/~15131/
    ~~~
- `youtube-dl`
  - Download YouTube videos and save them locally
  - sample usage:

    ~~~
    $ youtube-dl https://www.youtube.com/watch?v=SiMHTK15Pik
    ~~~
  - If you also run `brew install ffmpeg`, you can even do fancy things like
    convert the videos to mp3 files:

    ~~~
    $ youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=ktvTqknDobU
    ~~~

### Fun

- `cowsay`
  - sample usage: `cowsay 'Hello, world!'`
- `fortune`
- `sl`

Try running these commands. You'll be pleasantly surprised!


### Mac Specific

- `open`
  - Open a file with the default file viewer.
  - sample usage:

    ~~~
    $ open my-file.pdf
    # ... opens in Preview
    ~~~
- `brew-cask`
  - Package manager specifically for OS X Applications (i.e., `.app` bundles)
  - Install through Homebrew:

    ~~~
    $ brew install caskroom/cask/brew-cask
    ~~~
  - Then install OS X Applications:

    ~~~
    $ brew cask install google-chrome
    ~~~


## Exercises

1. If you're on OS X, install Homebrew.

2. Try installing `youtube-dl` and `ffmpeg` and downloading a video, maybe even
   converting it to an mp3. _Note: you should probably not re-distribute this
   content. Keep it personal._

3. Try downloading the website of one of the classes you're in using `wget`.

4. See if you can download `sl` and see what it does :P
