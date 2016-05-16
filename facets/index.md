---
layout: page
title: Facets
---

<ul>
{% for page in site.pages %}
  {% if page.url contains "/facets/" and page.url != "/facets/" %}
    <li>
      <a class="page-link" href="{{ page.url | prepend: site.baseurl }}">{{ page.title }}</a>
    </li>
  {% endif %}
{% endfor %}
</ul>
