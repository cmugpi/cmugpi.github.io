---
layout: page
title: "Topics"
group: navigation
---

# Topics
{:.ui.dividing.header.no_toc}

{% for topic in site.pages %}
{% if topic.group == 'topic' %}
### [{{ topic.title }}]({{ topic.url | replace:'index.html','' | prepend: site.baseprefix }})
{% if topic.description %}
{{ topic.description }}
{% endif %}
{% endif %}
{% endfor %}
