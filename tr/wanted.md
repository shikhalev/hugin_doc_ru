---
layout: translation
title: Требуемые страницы
---
Ниже список страниц, на которые есть ссылки, но сами страницы отсутствуют или не готовы.

<ul>
{% assign pages = site.pages | where_exp: 'item', 'item.layout == "under_construction"' | sort: 'path' %}
{% for p in pages %}
  <li><a href="{{- p.url | relative_url -}}">{{ p.title | default: p.path }}</a>
  {% if p.origin %}
   &Leftarrow; <a href="{{- p.origin -}}">{{ p.origin }}</a>
  {% endif %}
  </li>
{% endfor %}
</ul>
