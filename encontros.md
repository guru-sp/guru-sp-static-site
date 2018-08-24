---
layout: page
title: Encontros
permalink: /encontros/
---

<p>Veja aqui um histórico dos nossos encontros.</p>

<ul class="meetings-list">
{% for item in site.encontros reversed %}
  <li>
    <a href="/encontros/{{ item.slug }}" class="meeting-title">
      {{ item.title }}
    </a>
    <div class="meeting-date">{{ item.date | date: "%Y-%m-%d" }}</div>
  </li>
{% endfor %}
</ul>
