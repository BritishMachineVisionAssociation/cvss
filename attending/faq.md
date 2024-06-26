---
layout: default_sparse
title: Frequently Asked Questions (FAQ)
permalink: /attending/faq/
index: 5
---

{% for query in site.data.faq.questions %}
  <a href="#q{{forloop.index0}}">{{ query.question }}</a>
{% endfor %}

<hr />

{% for query in site.data.faq.questions %}
  <h3 id="q{{forloop.index0}}">{{ query.question }}</h3>
  {{ query.answer }}
{% endfor %}