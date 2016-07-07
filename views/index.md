---
layout: page
title: Views
---

<ul>
{% for page in site.pages %}
  {% if page.url contains "/views/" and page.url != "/views/" %}
    <li>
      <a class="page-link" href="{{ page.url | prepend: site.baseurl }}">{{ page.title }}</a>
    </li>
  {% endif %}
{% endfor %}
</ul>
