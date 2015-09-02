{% assign pages_sorted = site.pages | sort: 'order' %}
{% for node in pages_sorted %}
{% if node.group == page.topic %}
- [{{ node.title }}]({{ node.url | replace:'index.html','' | prepend: site.baseurl }})
{% if node.description %}
    - {{ node.description }}
{% endif %}
{% endif %}
{% endfor %}

