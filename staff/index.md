---
layout: page
title: Staff
group: navigation
order: 4

# -- This is a test comment
# -- yaml variables local to this file --
staff:
  - id: jmbrown
    domain: andrew
    name: Jordan Brown
  - id: jxc
    domain: cs
    name: Jacobo Carrasquel
  - id: wyz
    domain: andrew
    name: Wilson Zhao
  - id: eosofsky
    domain: andrew
    name: Everi Osofsky
  - id: mgq
    domain: andrew
    name: Matthew Quarles
  - id: azdavis
    domain: andrew
    name: Ariel Davis
  - id: dhashe
    domain: andrew
    name: David Hashe
  - id: tkadur
    domain: andrew
    name: Thejaswi Kadur
  - id: wjp
    domain: andrew
    name: William Paivine
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

All office hours are in the GHC 5th floor commons.

Jordan: Wednesday, 3:30 pm - 4:30 pm
Everi: Tuesday, 4:30 pm - 5:30 pm
Matt: TBA
Wilson: Friday, 2:30 pm - 3:30 pm
Thejas: Wednesday 6:00 pm - 7:00 pm
Bill: Monday 3:30 pm - 4:30 pm
David: Wednesday 2:30 pm - 3:30 pm
Ariel: Thursday 5:30 pm - 6:30 pm

# Attribution
{:.ui.dividing.header.no_toc}

The initial version of the course and a significant amount of the current course
content was created [Adam Blank][adam] in Fall 2011. Later, modifications and
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

