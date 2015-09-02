---
layout: page
title: "Topics"
group: navigation
order: 3
---

# Topics
{:.ui.dividing.header.no_toc}

{% assign pages_sorted = site.pages | sort: 'order' %}
{% for topic in pages_sorted %}
{% if topic.group == 'topic' %}
### [{{ topic.title }}]({{ topic.url | replace:'index.html','' | prepend: site.baseurl }})
{% if topic.description %}
{{ topic.description }}
{% endif %}
{% endif %}
{% endfor %}
