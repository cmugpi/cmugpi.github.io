---
layout: page
title: "Initial Setup"
group: 'terminal-usage'
order: 1
script: /javascripts/initial-setup.js
---

{% include toc.md %}

# Initial Setup
{:.ui.dividing.header.no_toc}

## Help!

If at any point you get stuck during this initial setup or throughout the
semester, please do not hesitate to post on Piazza.

## Set Up SSH

SSH is a program that lets you log in to a server and run commands on it. At
CMU, you will use SSH extensively in most of your CS classes. SSH is also a very
important tool for working in industry and knowing how to use it will be
essential throughout your career. (Even in academia, SSH is a very important
tool.)

For now we will just focus on getting it set up so that you can start
using it right away.

The exact instructions on how to set up SSH vary based on what operating system
you are using, so choose the relevant section and proceed from there.

<div id="ssh">
<div class="ui top attached tabular menu">
  <a href="#" class="active item" data-tab="osx">Mac OS X</a>
  <a href="#" class="item" data-tab="linux">Linux</a>
  <a href="#" class="item" data-tab="windows">Windows</a>
</div>
<div class="ui bottom attached active tab segment" data-tab="osx">

Congratulations! Your OS has a built-in terminal (Terminal.app), so you do not
need to download anything. You might consider looking at one of the other
terminals for OS X like [iTerm2][iterm2] if you want cooler features like better
color support, easier theming, vertical splits, `tmux` integration, and
more.

</div>
<div class="ui bottom attached tab segment" data-tab="linux">


You have lots of choices for a terminal. Your distro almost certainly has one
already, but if you do not like the default one you can download another. Some
popular terminals are

- terminator
- gnome-terminal
- xterm
- urxvt
- rxvt-unicode

</div>
<div class="ui bottom attached tab segment" data-tab="windows">

If you are already somewhat familiar with Linux, we strongly recommend that you
follow the Linux initial setup instructions. We are going to be teaching you more
about Linux throughout this course, so you will end up being proficient with it by
the end of the semester.

If you are running a recent version of Windows 10, then you can activate a
terminal built-in to the OS. To find out if your copy of Windows 10 is recent
enough, open the Start Menu, type in `winver`, and press enter. In the window
that appears, look at the number that comes after "OS Build".

If that number is 16215 or greater, you should follow these instructions to
activate the built-in terminal:

- Open the Start Menu, type in "Turn Windows features on or off", and press
  enter.
- Scroll down to "Windows Subsystem for Linux", check its box, and press OK.
  Allow your computer to restart.
- After restarting, open CMD from the start menu and type `bash`.  If you are
  running Creators Update you should get a prompt to install a linux distribution
  from the Microsoft Store.
- Open the Microsoft Store and install [Ubuntu][ms-ubuntu].  Then select "Launch" or
  search "Ubuntu" in the start menu.
- When installation completes, open CMD and type "bash".  You should get a prompt
  like `root@COMPUTER-NAME:~#`.

If that number is between 14316 and 16214, you should follow these instructions to
activate the built-in terminal:

- Open the Start Menu, type in "Turn Windows features on or off", and press
  enter.
- Scroll down to "Windows Subsystem for Linux", check its box, and press OK.
  Allow your computer to restart.
- After boot, open the start menu and type in "Bash on Ubuntu on Windows", which
  launches the terminal app. Follow the first-time setup instructions to finish.

If that number is lower than 14316 (or if you are running a version of Windows
other than Windows 10), your copy of Windows does not include this terminal. In
that case, we recommend that you use [MobaXterm][mobaxterm] for SSH. Download
and install it from that site.

MobaXterm installs a more minimal terminal than the other supported platforms,
so copy and paste the following command into your terminal and then press enter
before continuing with setup. This command will install the nano program, which
is a simple text editor. You may need to confirm the installation by pressing y
and then enter if prompted. You should verify that you see an [image similar to
this][mobaxterm-startup] before running the command.

{% highlight bash %}
apt-cyg install nano
{% endhighlight %}

</div>
</div>

Once you have chosen a terminal for your operating system, you can set up an
optional shortcut to save some typing.

__NOTE__: We need to make these changes before running any SSH command, or
before launching any SSH session. On OS X and Linux, this means make sure you do
these instructions immediately after opening a new terminal window or tab. On
MobaXterm, you should verify that you see an [image similar to
this][mobaxterm-startup].

You should now verify that SSH works with your chosen terminal. You will always
be asked for a password when SSH'ing in -- it is the same password you use to log
onto WebISO.

{% highlight bash %}
ssh ANDREWID@unix.qatar.cmu.edu
{% endhighlight %}

__NOTE__: if you use `unix.andrew.cmu.edu` for the domain, you will be
logging into andrew servers which are located in Pittsburgh. Using
`unix.qatar.cmu.edu` logs you into the Qatar servers that are located
in Qatar.

### Optional Setup

To facilitate SSH'ing, we can edit the __ssh config file__. If this
file already exists, it will be at `~/.ssh/config`. Otherwise you can
use the following commands to create it with the correct permissions:

{% highlight bash %}
$ mkdir -p ~/.ssh && touch ~/.ssh/config && chmod 600 ~/.ssh/config
{% endhighlight %}

Then, you need to open the `config` file for editing. You can do that
using the following command:

{% highlight bash %}
$ nano ~/.ssh/config
{% endhighlight %}

Add the following (replacing `ANDREWID` with your Andrew ID) to this file, save
the file, and exit nano. (Some notes: The `^` character is used to represent
the "control" key, so `^O` means "hold control and press the O key", and nano
uses "WriteOut" to mean "save". Nano will ask you to confirm the filename you
want to save. Just hit enter to confirm it.)

~~~
Host qatar
Hostname unix.qatar.cmu.edu
User ANDREWID
GSSAPIAuthentication yes
GSSAPIDelegateCredentials yes

Host andrew
Hostname unix.andrew.cmu.edu
User ANDREWID
GSSAPIAuthentication yes
GSSAPIDelegateCredentials yes
~~~

The setup above allows you to use a shortcut, the `Host`, to ssh:

{% highlight bash %}
ssh qatar
{% endhighlight %}

<!--
## Get the GPI Configuration

The default settings for the command line and other programs you're likely to
use during the semester are rather minimal, so we've written some configuration
files that will give you nicer defaults. Of course, if you want to change these
settings to better fit your preferences you can do so.

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

Then, disconnect from Andrew (remember, `^D`) and log in again. When you've
logged in, if you see something like `username@unixN:~$` instead of what the
prompt used to be, you're done! If you see a file path, then everything went
correctly! (If it looks like nothing changed, something went wrong. Try logging
out and back in, and if that doesn't fix it, make a post on Piazza or email us.)
-->

[ms-ubuntu]: https://www.microsoft.com/store/p/ubuntu/9nblggh4msv6
[mobaxterm]: http://mobaxterm.mobatek.net/
[mobaxterm-tutorial]: http://blog.jez.io/2014/09/28/setting-up-mobaxterm-for-ssh-on-windows/
[iterm2]: http://iterm2.com/
[advanced]: https://github.com/cmugpi/dotfiles#advanced-usage
[lern2unix-signup]: http://www.lern2unix.com/account/signup/
[mobaxterm-startup]: {{ "/images/mobaxterm-startup.png" | prepend: site.baseurl }}
