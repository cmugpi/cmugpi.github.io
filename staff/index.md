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

