---
layout: page
title: Patrocinadores
permalink: /patrocinadores/
---

<p>Nossos encontros presenciais são possíveis graças a empresas e instituições que nos apoiam fornecendo um local com boa infraestrutura, localização, coffee-break para os participantes e outros itens como camisetas e brindes.</p>

<p>
  A seguir uma lista de empresas e instituições que já nos ajudaram em encontros passados.
</p>

<ul class="grid">
{% for item in site.data.sponsors %}
  <li>
    <a href="{{ item.sponsor.url }}">
      <img width="150" src="/assets/images{{ item.sponsor.logo.logo.thumb.url }}" title="{{ item.sponsor.name }}">
    </a>
  </li>
{% endfor %}
</ul>
