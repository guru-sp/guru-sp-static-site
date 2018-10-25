---
layout: page
title: Encontros
permalink: /encontros/
---

<p>Veja aqui um histórico dos nossos encontros.</p>
<p>Para saber do próximo encontro acesse <a href="https://www.meetup.com/pt-BR/Guru-SP-Grupo-de-Usuarios-Ruby-de-Sao-Paulo/events/">nossa página no Meetup</a>.</p>

<ul class="meetings-list">
{% for item in site.encontros reversed %}
  <li>
    <a href="/encontros/{{ item.slug }}" class="meeting-title">
      {{ item.title }}
    </a>
    <div class="meeting-date">{{ item.date | date: "%d/%m/%Y" }}</div>
  </li>
{% endfor %}
</ul>
