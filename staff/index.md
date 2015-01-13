---
layout: page
title: Staff
group: navigation
order: 4

# -- yaml variables local to this file --
staff:
  - id: jzimmerm
    domain: andrew
    name: Josh Zimmerman
  - id: jxc
    domain: cs
    name: Jacobo Carrasquel
  - id: nmunson
    domain: andrew
    name: Nick Munson
  - id: jezimmer
    domain: andrew
    name: Jake Zimmerman
  - id: dringwal
    domain: andrew
    name: Dan Ringwalt
  - id: mjmurphy
    domain: andrew
    name: Michael Murphy
---

# Staff
{:.ui.dividing.header.no_toc}

<div class="ui three column center aligned grid">
{% for person in page.staff %}
<div class="column">
<img class="ui rounded image" alt="{{ person.id }}" width="100%" src="{{ site.baseprefix }}/images/staff/{{ person.id }}.jpg">

## {{ person.name }}

{{ person.id }} at {{ person.domain }}

</div>
{% endfor %}
</div>

# Attribution
{:.ui.dividing.header.no_toc}

The content of this site has gone through many forms and revisions. The first
version of the course was designed by [Adam Blank][adam]. Later, modifications and
additions to the content were made by Josh Zimmerman, who reformatted the
original PDFs into web content.

The current version of the site, including the site layout and design as well as
further modifications and additions to content, was written by [Jake
Zimmerman][jake] with contributions from the GPI staff.

The source of this site is licensed under the MIT License and is readily
[available on GitHub][cmugpi]. It uses Jekyll and Octopress 3.0 for static site
generation and Semantic UI as a general purpose CSS framework. If you enjoyed
this site, be sure to star it! If you notice an issue or bug with the site,
feel free to open an issue or a pull request.

[adam]: http://www.countablethoughts.com/
[jake]: https://www.zimmerman.io/
[cmugpi]: https://github.com/cmugpi/cmugpi.github.io

