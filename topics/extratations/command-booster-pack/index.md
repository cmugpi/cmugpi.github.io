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

There are a lot of useful commands in the real world. Today you'll get a chance
to play around with some of the most commonly used commands. __The goal here is
not to walk away knowing everything.__ The goal is to get a glimpse of a lot  of
different commands so that you know what's out there and so you can look them up
in more detail when you need them.


## Before you start

- `man <command>`

- `<command> --help`

- You probably want to make a directory to play around in. You'll probably make
  some files, and it'll be easier to avoid overwriting stuff and clean up if you
  make a directory just for today.

  ~~~
  mkdir sandbox
  cd sandbox
  ~~~


  At the end of the day:

  ~~~
  rm -r sandbox
  ~~~

- To stop a command that's going on too long, use `<Ctrl-C>`

## Commands to try on your own

Try each of these out. See what they do, and write a short description down.

Disclaimer: It's possible not all of these commands will be installed
everywhere you try to run them.

- `pwd`
- `find` (This will be more exciting if you try `find ~` )
- `du` (This will be more exciting if you try `du -h ~` )
- `df`
- `uname`
- `top`
- `users`
- `ping <website>`

Try passing a file as an argument to each of these. Your `~/.bashrc` is probably
a good file to try.

- `head <file>`
- `tail <file>`
- `less <file>`
- `cat <file>`
- `tac <file>`
- `rev <file>`
- `sort <file>`
- `wc <file>`

Some more commands:

~~~
file ~/.bashrc


wget http://i.imgur.com/djox7m5.png
file djox7m5.png


curl www.cmu.edu


cd ~
zip dotfiles.zip .bashrc .bashrc_gpi
mv dotfiles.zip sandbox
cd sandbox
unzip dotfiles.zip
ls -a


touch newfile
ls


ln -s ~ myhomefolder    ("ln" is short for "link".)
ls myhomefolder/


alias newcommand='head ~/.bashrc'
newcommand
unalias newcommand
newcommand    (This should fail.)
~~~

## Maybe you can try these?

You probably can't or don't want to, though. These are commands to use if you
won the server or computer you're running them on. This is distinctly not the
case for the Andrew Unix machines.

- `adduser`
- `passwd` Changes your password.
- `su <username>` Start running as if you were a different user.
- `su` Start running as root (administrator).

   Careful, though. With great power comes great responsibility.

- `sudo <command> <arguments>` Just do one command as root.

## Starting applications

You can start most applications by running their name as a command. Examples:

- `google-earth`
- `libreoffice ~/Documents/homework/essay.docx`

On Macs, the `open` command will open a file with the default program.

- `open djox7m5.png`


