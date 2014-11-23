---
layout: page
title: Staff
group: navigation

# -- yaml variables local to this file --
staff:
  - id: jzimmerm
    domain: andrew
    name: Josh Zimmerman
  - id: dringwal
    domain: andrew
    name: Dan Ringwalt
  - id: jezimmer
    domain: andrew
    name: Jake Zimmerman
  - id: nmunson
    domain: andrew
    name: Nick Munson
  - id: mjmurphy
    domain: andrew
    name: Michael Murphy
  - id: jxc
    domain: cs
    name: Jacobo Carrasquel
---

# Staff
{:.ui.dividing.header.no_toc}

<div class="ui two column center aligned grid">
{% for person in page.staff %}
<div class="column">
<img class="ui rounded image" alt="{{ person.id }}" width="100%" src="{{ site.baseprefix }}/images/staff/{{ person.id }}.jpg">

## {{ person.name }}

{{ person.id }} at {{ person.domain }}

</div>
{% endfor %}
</div>

