# Great Practical Ideas in CS Website

This is a Jekyll/Octopress project that compiles to the website for GPI, a class
at Carnegie Mellon University (15-131).

## Table of Contents

- [Installation](#installation)
- [Recompiling the Site](#recompiling-the-site)
- [Site Layout](#site-layout)
- [Creating New Content](#creating-new-content)
  - [Guidelines](#guidelines)
  - [Refer to the Site Layout](#refer-to-the-site-layout)
  - [Create topics sparingly](#create-topics-sparingly)
  - [Create lessons readily](#create-lessons-readily)
  - [Do your research](#do-your-research)
  - [Use links](#use-links)
  - [General Notes](#general-notes)
- [Updating](#updating)
- [License](#license)
- [Appendix](#appendix)
  - [Installing `rbenv`](#installing-rbenv)
    - [OS X](#os-x)
    - [Other](#other)
  - [Building a Ruby Version](#building-a-ruby-version)


## Installation

First, clone this repo to your local machine. I've cloned mine to `~/gpi/www/`,
so I may use this as a shorthand for the root of the project from time to time.

This is a Jekyll site. If you don't have an up-to-date version of Ruby, go get
one. OS X comes with a version of Ruby out of the box, but it's outdated and not
easy to upgrade. If you don't already have a way to manage Ruby versions, I
recommend [rbenv][rbenv]. See the Appendix for `rbenv` installation
instructions.

Now that you have Ruby, you can go ahead and install the projects dependencies.
We're going to be using Bundler to manage Ruby gems. For a detailed list of what
will be installed, see the `Gemfile`.

To install gems:

```
$ make install
```

## Recompiling the Site

We're using Octopress 3.0, the most recent version of Octopress, to help with
managing our Jekyll site. Octopress 3.0 was rewritten to put the focus back on
Jekyll, instead of being a blogging framework in its own right. Jekyll is a
blogging framework which makes writing your site's content as easy as putting it
in the right place, and Octopress 3.0 helps to put things in the right place.

We're also using Compass to compile the Sass stylesheets. Sass is a language
that compiles to CSS, but adds in tons of cool features that make it easy to
write maintainable stylesheets.

To continuously build and preview the site locally:

```
$ make serve
```

To continuously build the stylesheets:

```
$ make compass
```


## Site Layout

Content on this site can be divided into three types of pages:

- __navigation pages__
    - These pages help to organize the site. They sit at the top level, and have
      links in the navigation bar on every page.
- __topic pages__
    - These pages serve as "landing pages" for any given topic. Some examples of
      topics are Terminal Usage, Vim, and Bash.
- __lesson pages__
    - Each lesson page discusses a single or a small set of things. Every lesson
      has a parent topic page. Lesson pages should be short and concise. It is
      favorable to have many short lesson pages than one huge one.

In addition to the navigation bar mentioned above, there is also a sidebar on
every page that shows a hierarchy of all the topic and lesson pages.

The home page is the schedule page, which also has a short overview. A longer
discussion of the content of the course is left to the Syllabus page.

Notably, the one page that should be a lesson page but that is a navigation page
is the "Initial Setup" page. This page is left as a navigation page for a number
of reasons:

- Navigation pages are more visible, making them more accessible for first-time
  viewers.
- Navigation pages serve as points where the user can dive deeper into more
  complex topics. This encourages the user to read more content. (It's easier to
  go downhill than uphill.)

Think carefully before making a navigation page. It's likely that you want a new
topic and then a new lesson page to host that content.


## Creating New Content

The different types of pages used on this site are distinguished by their
_YAML front matter_. For more information on YAML (an encoding system similar to
JSON), see [this page][yaml].

To create topic/lesson pages easily with the correct front matter attributes
populated correctly, there are two `make` targets which will guide you through
the process of adding a new post. They're just wrappers around Octopress, which
has the `octopress new` command to make a new page given some criteria.

```
# to make a new topic:
$ make topic

# to make a new lesson:
$ make lesson
```

Each script will print the location of the file it just created, which you can
edit to suit your needs.

You can see what's going on under the hood by using

```
vim -p {_templates,_support}/{topic,lesson}
```

Basically, we're using `octopress new` but specifying a different template using
`--template`.


### Guidelines

Given what happened with the organizational and content structure of the last
site, this site comes with a set of guidelines to be followed when creating new
content.


### Refer to the Site Layout

The site is already a great example of what should and should not be a topic or
lesson. Before adding any new content, you should carefully study the existing
content to determine what your course of action should be.


### Create topics sparingly

There is definitely a time and place for topic pages. That being said, if you
can fit a lesson in under an existing topic, it gains the advantage of being
grouped with similar content. That way, people will feel free to move around
from lesson to lesson, enriching your content.

Don't be afraid to create a topic page, but don't clutter the site with too
many.


### Create lessons readily

When it's appropriate to create a lesson, create a lesson. It's easier to cover
two small lessons than to arbitrarily split up a large lesson.


### Do your research

As knowledgeable as you are about the topic or lesson you're about to write,
you're probably not the first one to write about it. You should carefully
research what other people have written about the subject to figure out what
each has done well and what needs improvement.

Ideally, what you end up writing should be a perfect synthesis of what each
article does well, thus fixing what each article needed individually to suit
your needs for writing.


### Use links

While you're doing your research, you'll probably come across some great
resources. Link to them! Putting links in the context of the page is a great way
to enrich the content of your own posts. On top of in-line links, all topics
pages have a _Resources_ section for accumulating a list of stellar links about
that topic.


### General Notes

Keep in mind that there should only be one `h1` header (`#` in Markdown) per
page. Make your own headers using `##`.


## Updating

If you're using `rbenv`, Ruby can be updated by installing a newer version of
Ruby using `ruby-build` and then running `rbenv local <new version>`.

To update the dependencies, modify the `Gemfile` as necessary and use `bundle
update` to update to the most up to date versions of the gems that we're using
that satisfy the requirements specified in the `Gemfile`.

We depend on two static assets: jQuery and Semantic UI.

jQuery is being loaded through the Google CDN. To update it, simply change the
URL in `_includes/scripts.html`.

Semantic UI is being served locally. To update it, [clone it][semantic-ui],
rebuild the stylesheets, and move the compiled stylesheets into the right
places. Specifically,

| Move in Semantic UI   | To Here in GPI www          |
| -------------------   | ------------------          |
| dist/semantic.min.css | css/lib/                    |
| dist/themes           | css/lib/                    |
| dist/semantic.min.js  | javascripts/semantic.min.js |

## License

MIT License. See LICENSE.


## Appendix

### Installing `rbenv`

Installing `rbenv` is easiest on OS X, because you can use Homebrew. If you
don't have OS X, you'll have to install from "source", but almost all of `rbenv`
is written in shell, so it's not too bad.

For more information, you should absolutely check out the documentation on [the
rbenv GitHub page][rbenv].


#### OS X

Install using Homebrew:

```bash
$ brew update
$ brew install rbenv ruby-build
```

Now add these lines to your `.bash_profile`/`.bashrc`/`.zshrc`, etc.:

```bash
# Store Ruby versions and information alongside Homebrew instead of in .rbenv
$ export RBENV_ROOT="/usr/local/var/rbenv"
$ eval "$(rbenv init -)"
```

Now that you've installed `rbenv`, you will probably want to see the Appendix
section on building a Ruby version.


#### Other

Install using Git:

```
$ git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
$ git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
```

Now add these lines to your `.bash_profile`/`.bashrc`/`.zshrc`, etc.:

```bash
$ export PATH="$HOME/.rbenv/bin:$PATH"
$ eval "$(rbenv init -)"
```

Now that you've installed `rbenv`, you will probably want to see the Appendix
section on building a Ruby version.


### Building a Ruby Version

To build a Ruby version, find the version you want to build using

```
$ ruby-build --defintions
```

Pick the one you want, and then run

```
$ rbenv install <version>
```

Certain projects (like this one) have a local Ruby version specified using the
`.ruby-version` file. When this is the case, you only need to run

```
$ rbenv install
```

and it will install the version specified by that file. If you want to create a
`.ruby-version` file for future projects, once you've installed a ruby version,
you can run `rbenv local` (or `rbenv global` to make it the default across your
whole machine).



[rbenv]: https://github.com/sstephenson/rbenv
[yaml]: http://learnxinyminutes.com/docs/yaml/
[semantic-ui]: https://github.com/semantic-org/semantic-ui/

<!-- vim:foldmethod=marker:foldlevel=0:
-->
