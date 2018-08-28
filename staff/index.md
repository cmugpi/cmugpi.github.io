---
layout: page
title: Staff
group: navigation
order: 4

# -- This is a test comment
# -- yaml variables local to this file --
staff:
  - id: wyz
    domain: andrew
    name: Wilson Zhao
  - id: jxc
    domain: cs
    name: Jacobo Carrasquel
  - id: mgq
    domain: andrew
    name: Matthew Quarles
  - id: azdavis
    domain: andrew
    name: Ariel Davis
  - id: dhashe
    domain: andrew
    name: David Hashe
  - id: twildenh
    domain: andrew
    name: Tom Wildenhain
  - id: ashekar1
    domain: andrew
    name: Aditya Shekar
  - id: schidamb
    domain: andrew
    name: Shruti Chidambaram
---

# Staff
{:.ui.dividing.header.no_toc}

Please send general emails to 15-131-staff at cs.cmu.edu. Only send email to a
specific TA if you have a question that wouldn't be appropriate to send to the
whole course staff.

<div class="ui three column center aligned grid">
{% for person in page.staff %}
<div class="column">
<img class="ui rounded image" alt="{{ person.id }}" width="100%" src="{{ site.baseurl }}/images/staff/{{ person.id }}.jpg">

## {{ person.name }}

{{ person.id }} at {{ person.domain }}

</div>
{% endfor %}
</div>

# Office Hours

Up-to-date information on office hour times and locations may be found on [Piazza][ohpost].

[ohpost]: https://piazza.com/class/jl1gj7pztka1cw?cid=6

# Attribution
{:.ui.dividing.header.no_toc}

The initial version of the course and a significant amount of the current course
content was created by [Adam Blank][adam] in Fall 2011. Later, modifications and
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
[jake]: https://jez.io/
[cmugpi]: https://github.com/cmugpi/cmugpi.github.io
