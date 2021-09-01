---
layout: page
title: Staff
group: navigation
order: 4

# -- This is a test comment
# -- yaml variables local to this file --
staff:
  - id: tcortina
    domain: cs
    name: Tom Cortina
  - id: vpeet
    domain: andrew
    name: Veronica Peet
  - id: jiachen5
    domain: andrew
    name: Amy Liu
  - id: jwang7
    domain: andrew
    name: Jeremy Wang
  - id: jpyang
    domain: andrew
    name: Jules Yang 
  - id: aryas
    domain: andrew
    name: Arya Shah
  - id: dsunkara
    domain: andrew
    name: Deepti Sunkara
  - id: yalsuhai
    domain: andrew
    name: Yosef Alsuhaibani
  - id: ljyao
    domain: andrew
    name: Laura Yao
  - id: kacoba
    domain: andrew
    name: Keiffer Acoba
  - id: ktummala
    domain: andrew
    name: Kavya Tummalapalli
---

# Staff
{:.ui.dividing.header.no_toc}

For general questions/comments, please post on the course Piazza. Only send an
email to a specific TA if you have a question that wouldn't be appropriate to
send to the whole course staff. 

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

Up-to-date information on office hour times and locations may be found on [Google Calendar][ohtimes].


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
[ohtimes]: https://calendar.google.com/calendar/embed?src=c_9ggct2afcr7d1rmdkn0i9e811c%40group.calendar.google.com&ctz=America%2FNew_York
