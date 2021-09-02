# Great Practical Ideas in CS Website

This is a Jekyll/Octopress project that compiles to the website for GPI, a class
at Carnegie Mellon University (15-131).

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

- [Installation](#installation)
- [Recompiling the Site](#recompiling-the-site)
- [Site Layout](#site-layout)
- [Creating New Content](#creating-new-content)
  - [Guidelines](#guidelines)
  - [Naming is Important](#naming-is-important)
  - [Refer to the Site Layout](#refer-to-the-site-layout)
  - [Create topics sparingly](#create-topics-sparingly)
  - [Create lessons readily](#create-lessons-readily)
  - [Do your research](#do-your-research)
  - [Use links](#use-links)
  - [PDFs and Documents](#pdfs-and-documents)
  - [General Notes](#general-notes)
- [Troubleshooting](#troubleshooting)
- [Jekyll Tips](#jekyll-tips)
- [Markdown Tips](#markdown-tips)
  - [Tables](#tables)
  - [Simple `pre` blocks](#simple-pre-blocks)
- [Semantic UI Tips](#semantic-ui-tips)
  - [UI Messages](#ui-messages)
- [Updating](#updating)
- [Deploying](#deploying)
  - [Pushing](#pushing)
  - [Bumping the Semester](#bumping-the-semester)
  - [GitHub Pages Site](#github-pages-site)
- [License](#license)
- [Appendix](#appendix)
  - [Installing `rbenv`](#installing-rbenv)
    - [OS X](#os-x)
    - [Other](#other)
  - [Building a Ruby Version](#building-a-ruby-version)
  - [Other Notes](#other-notes)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Installation

First, clone this repo to your local machine. I've cloned mine to `~/gpi/www/`,
so I may use this as a shorthand for the root of the project from time to time.

This is a Jekyll site. If you don't have an up-to-date version of [Ruby][rubyinstall], 
go get one. OS X comes with a version of Ruby out of the box, but it's outdated and not
easy to upgrade. If you don't already have a way to manage Ruby versions, I
recommend [rbenv][rbenv]. See the Appendix for [`rbenv`
installation](#building-a-ruby-version) instructions.

Now that you have Ruby, you can go ahead and install the projects dependencies.
We're going to be using Bundler to manage Ruby gems. For a detailed list of what
will be installed, see the `Gemfile`.

As it turns out though, managing module dependencies is a pain. Luckily, the
Python community went and figured it out, building a project called
[virtualenvwrapper][venvw]. Most of the time it's used for managing Python
modules, but when combined with RubyGems and Bundler, it possesses all the
features necessary to work similarly for Ruby. If you don't have
virtualenvwrapper installed already, go [install it][venvwinstall].

Once you've got that done, you can go ahead and run

```
$ make install
```

which will set up the virtual environment, install the dependencies, and make
the magic happen. If you are working on windows, and the script keeps saying you need 
to install rbenv or virtualenvwrapper even though you already have those installed, 
accompanied by "$'\r': command not found" error, then consider [this solution][dos2unix].

To work in the newly created virtual environment, run

```
$ workon <name of virtualenv>
```

If workon is not recognized as a command, then you probably forgot to edit the
bashrc file as specified in the [virtualenvwrapper installation instructions][venvwinstallshell].

To stop working on the virtual environment,

```
$ deactivate
```

## Recompiling the Site

We're using Octopress 3.0, the most recent version of Octopress, to help with
managing our Jekyll site. Octopress 3.0 was rewritten to put the focus back on
Jekyll, instead of being a blogging framework in its own right. Jekyll is a
blogging framework which makes writing your site's content as easy as putting it
in the right place, and Octopress 3.0 helps to put things in the right place.

We're using the version of Sass that comes with Jekyll to build the Sass
stylesheets. Sass is a language that compiles to CSS, but adds in tons of cool
features that make it easy to write maintainable stylesheets.

To continuously build and preview the site locally:

```
$ make serve
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


### Naming is Important

The following words are officially banished from titles by decree of Jacob
Zimmerman, Chief BossyPants:

- intro
- introduction
- basic
- intermediate
- advanced
- more
- moar

Additionally, try at all costs to avoid the following words _in lessons_

- usage
- tips

There will be exceptions to this, but a descriptive name is _always_ better.

Additionally, titles for lessons of the form

- Getting Started with X

are officially reserved for the circumstance when a topic requires special
configuration that was not covered in the Initial Setup document. These
documents should be short, focus on the _bare minimum_ required to configure the
terminal environment, and then link to the next resource that should be viewed.


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


### PDFs and Documents

PDFs and other similar documents should be added under the appropriate topic
that they belong to. For example, Adam Blank's _How to LaTeX_ PDF is placed in
the same directory as the index.md page for LaTeX: `topics/latex/`.

For PDFs or documents that don't have a single topic, only put them in one
place.

For PDFs or documents that have no topic, perhaps you should create a topic page
for that particular topic. To figure out whether you should do this, see
"Creating New Content" in this document.

Currently, there is no place to put PDFs or documents that have no topic. If it
becomes necessary to place these documents somewhere, bring up the subject at a
course staff meeting, outline your reasoning, and make an argument for where you
think these documents should be placed.


### General Notes

Keep in mind that there should only be one `h1` header (`#` in Markdown) per
page (i.e., the title). Your own section headers should use `##`, and your
subsections should use `###`.

Use the `{{ "/link-url/" | prepend: site.baseurl }}` [Liquid][liquid] syntax
to create links relative to the site's base URL. This facilitates making
separate sites for each semester (/~15131/f14/...) if we decide to take this
path.

Try to keep paragraph text to 80-character lines. Note that GitHub flavored
Markdown treats inner-paragraph line breaks as `<br>` tags, but the Markdown
renderer we're using to build our site doesn't have this feature enabled.

To sort everything, each page has an `order` property. Before rendering any
content, all the pages are sorted in order of this property. Because we only
ever render similar content (i.e., topics, lessons, navigation items) together,
only pages that occur "near" each other need to have non-ambiguous `order`
values. For example, All five `navigation` items can have orders from 1 through
5, and all lessons under the `terminal-usgage` topic can have orders from 1
through 5, and everything will be sorted appropriately, even if the intermediate
sorted list of all pages intermingles navigation pages with terminal-usage
lesson pages.


## Troubleshooting

If you're not working on the virtual environment (`workon <env>`), chances are
that everything will fail with non-descriptive error messages, so check that
you're working on the environment. You should be able to see that you're on an
environment because its name will have been added to your prompt, but otherwise
you can check that the value of `$VIRTUAL_ENV` is non-empty.


## Jekyll Tips

This is a unordered list of Jekyll tips that I've found useful.

- add `published: false` and change `order` to `0` to the front matter of any
  page to make it not show up in the generated site.
- Checkout the Vim plugin [vim-liquid][vim-liquid] by Tim Pope.
- use `{% highlight <lang> %}... content ...{% endhighlight %}` to have your
  code snippets highlighted according to a specific language.

## Markdown Tips

### Tables

You can use Tables in your markdown like this:

```
| Heading 1 | Heading 2 |
| --------- | --------- |
| A         | B         |
| C         | D         |
{:.ui.striped.table}
```

output:

| Heading 1 | Heading 2 |
| --------- | --------- |
| A         | B         |
| C         | D         |
{:.ui.striped.table}

The `{:.ui.striped.table}` is used by the Markdown rendering engine we're using
(kramdown) to apply CSS classes to the previous HTML block. The CSS framework
we're using (Semantic UI) needs these classes to be present to make the table
look good.

Markdown tables _cannot_ have line breaks in them, so make them as long as they
need to be to hold their content. If you need a line break within a cell, use
`<br>`. For an easy way to format Markdown tables, you may want to look at
[tabular][tabular] or [vim-markdown][vim-markdown]. Note that HTML is valid
Markdown, so you can always just add the HTML for a table if you need to
(though, this defeats the simplicity of Markdown, so don't do this often!).

### Simple `pre` blocks

For simple, non-highlighted code blocks, use `~~~` instead of three back ticks.
This is an unfortunate limitation of the Markdown processor that we're using.
That being said, you probably want to use the `{% highlight <lang> %}` syntax
mentioned in the _Jekyll Tips_ section.

## Semantic UI Tips

The CSS framework we're using, Semantic UI, comes with a variety of CSS helper
classes. This is a list of common classes you might want to include when writing
your pages.

The Markdown processor we're using, kramdown, supports an extension where CSS
classes can be applied by appending text of the following form to the end of
block:

```
{:.class1.class2}
```

### UI Messages

To have messages stand out more than bold or italic text, you can include a
`.ui.message`. Example:

```
__WARNING!__ This is my warning message.
{:.ui.warning.message}
```

There are classes for `warning`, `error`, `info`, `success`, and a variety of
other colors. See [here][ui-message] for a full list.



## Updating

If you're using `rbenv`, Ruby can be updated by installing a newer version of
Ruby using `ruby-build` and then running `rbenv local <new version>`.

To update the dependencies, modify the `Gemfile` as necessary and use `bundle
update` to update to the most up to date versions of the gems that we're using
that satisfy the requirements specified in the `Gemfile`.

We depend on two static assets: jQuery and Semantic UI.

jQuery is being loaded through the Google CDN. To update it, simply change the
version variable (`jquery_version`) in the `_config.yml` file.

Semantic UI is being loaded through cdnjs. To update it, simply change the
version variable (`semantic_version`) in the `_config.yml` file.


## Deploying

We're hosting the site on the www.cs.cmu.edu domain. To get this to work,
there's a Git remote hook that watches for incoming pushes to the `develop`
branch set up in our AFS space. It

- watches for incoming pushes
- creates a checkout of the code into the `www` directory on our AFS space
- installs Jekyll dependencies if necessary
- runs Jekyll to build the site

Git remote hooks don't get version controlled with a repository's content, but
nonetheless you can see a copy of this Git hook [here][git-hook] (it should
hopefully be up to date with whatever's actually deployed, but if you're
troubleshooting, make sure you check the copy on AFS).

From here, SCS Facilities takes care of serving our site whenever it's visited.

### Pushing

After having cloned this repo, you can add the AFS remote with

```
git remote add andrew ssh://ANDREWID@unix.andrew.cmu.edu/afs/cs/academic/class/07131-f18/repos/www.git/
```

And you can deploy to it by pushing `develop` to that remote:

```
git push andrew develop
```

### Alternative to deploying and pushing with hook: scp the _site folder

After you are done making changes locally, do

```
jekyll build
```

To build a rendered version of the website, complete with an `index.html` page and proper
links to other pages. By default, the rendered site is stored in the `_site/` folder. 

```
scp -r _site/ andrew:~private/
```

or your prefered command for scp-ing, to your prefered location. Then you can ssh in, and
perform a `cp` to transfer the `_site/` folder to `/afs/cs/academic/class/07131-f18/www`.
Be sure to rename it to `f21` afterwards.

While it's admittedly jank, this alternative is good to use if you don't have the direct
permission to edit `/afs/` folders, or if you have version issues with Ruby.

### Bumping the Semester

Our site's content is always versioned by semester, so people can always access
the content they remember, even after their semester has ended. The way this
works is:

- Within the `www` folder on AFS, there are folders for the corresponding
  semesters.
- When you push, the Git hook looks at the appropriate semester and builds the
  site into the right directory.
    - A copy of this script is in `_support`
- When Jekyll builds the site, it knows what semester it is from the
  `_config.yml` file.
- When users visit https://www.cs.cmu.edu/~07131/, there is a single
  `index.html` file sitting in `07131-f18/www/` that refreshes to the current
  semester.

To bump the semester, you have to manually alter the semester in the last three
places just discussed. To recap, you'll have to edit the semester in

- `SEMESTER` in `/afs/cs/academic/class/07131-f18/repos/www.git/hooks/post-receive`
  and in `_support/post-receive`
- the refresh URL of `/afs/cs/academic/class/07131-f18/www/index.html`
- `baseurl` in `_config.yml`

That's a lot of places, but it's only once a semester. If you want to make it
better, make it better.

### GitHub Pages Site

The GitHub pages site (i.e., the `master` branch) is just a single HTML file
that redirects to the www.cs.cmu.edu version of the site. This means you only
ever have to push the site to `andrew` and the two can never get out of sync.


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

### Other Notes

The Table of Contents in this file was generated using [DocToc][doctoc].

```
$ npm install -g doctoc
$ doctoc README.md
```

From time to time, RubyGems can be a pain. What I'd really like is a
virtualenv-like environment for Ruby gems, but for now what I do when I have
upgrading troubles is uninstall everything according to [this
script][uninstall_gems], and then do a `bundle install` to install from the
Gemfile.lock (the last working state).



[venvw]: http://virtualenvwrapper.readthedocs.org/en/latest/
[venvwinstall]: http://virtualenvwrapper.readthedocs.org/en/latest/install.html#basic-installation
[rbenv]: https://github.com/sstephenson/rbenv
[yaml]: http://learnxinyminutes.com/docs/yaml/
[semantic-ui]: https://github.com/semantic-org/semantic-ui/
[liquid]: http://docs.shopify.com/themes/liquid-documentation/basics
[tabular]: https://github.com/godlygeek/tabular
[vim-markdown]: https://github.com/plasticboy/vim-markdown
[vim-liquid]: https://github.com/tpope/vim-liquid
[ui-message]: http://semantic-ui.com/collections/message.html
[doctoc]: https://github.com/thlorenz/doctoc
[uninstall_gems]: https://gist.github.com/IanVaughan/2902499
[git-hook]: https://github.com/cmugpi/cmugpi.github.io/blob/develop/_support/post-receive

[rubyinstall]: https://virtualenvwrapper.readthedocs.io/en/latest/install.html#shell-startup-file
[dos2unix]: https://askubuntu.com/questions/966488/how-do-i-fix-r-command-not-found-errors-running-bash-scripts-in-wsl
[venvwinstallshell]: https://virtualenvwrapper.readthedocs.io/en/latest/install.html#shell-startup-file

<!-- vim:foldmethod=marker:foldlevel=0:
-->
