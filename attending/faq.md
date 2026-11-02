---
layout: default_sparse
title: Frequently Asked Questions (FAQ)
permalink: /attending/faq/
index: 5
---

<div class="mb-3">
  <input type="search" id="faq-search" class="form-control" placeholder="Search FAQs&hellip;" aria-label="Search FAQs">
  <p id="faq-no-results" class="text-muted mt-2" style="display:none;">No matching questions found.</p>
</div>

<div id="faq-toc">
<!-- {% for query in site.data.faq.questions %}
  <a class="faq-toc-link" href="#q{{forloop.index0}}">{{ query.question }}</a>
{% endfor %} -->
</div>

<hr />

<style>
  .faq-item {
    border: 1px solid #dee2e6;
    border-radius: 0.25rem;
    margin-bottom: 0.75rem;
  }
  .faq-item summary {
    cursor: pointer;
    list-style: none;
    padding: 0.75rem 2.5rem 0.75rem 1rem;
    position: relative;
    font-weight: 600;
    font-size: 1.15rem;
    color: #68246D;
  }
  .faq-item summary::-webkit-details-marker { display: none; }
  .faq-item summary::after {
    content: "+";
    position: absolute;
    right: 1rem;
    top: 50%;
    transform: translateY(-50%);
    font-size: 1.4rem;
    font-weight: 400;
  }
  .faq-item[open] summary::after { content: "\2212"; }
  .faq-item[open] summary { border-bottom: 1px solid #dee2e6; }
  .faq-item summary:focus-visible { outline: 2px solid #68246D; outline-offset: 2px; }
  .faq-answer { padding: 0.75rem 1rem; }
  .faq-answer p:last-child { margin-bottom: 0; }
</style>

<div id="faq-items">
{% for query in site.data.faq.questions %}<details class="faq-item" id="q{{forloop.index0}}" data-index="{{forloop.index0}}">
    <summary>{{ query.question }}</summary>
    <div class="faq-answer">{{ query.answer }}</div>
  </details>
{%- endfor %}
</div>

<script>
(function () {
  var input = document.getElementById('faq-search');
  var items = document.querySelectorAll('.faq-item');
  var tocLinks = document.querySelectorAll('.faq-toc-link');
  var noResults = document.getElementById('faq-no-results');

  // Open the question linked to from the site search (e.g. /attending/faq/#q3)
  function openFromHash() {
    var target = location.hash && document.getElementById(location.hash.slice(1));
    if (target && target.classList.contains('faq-item')) {
      target.open = true;
      target.scrollIntoView();
    }
  }
  openFromHash();
  window.addEventListener('hashchange', openFromHash);

  input.addEventListener('input', function () {
    var query = this.value.trim().toLowerCase();
    var visible = 0;

    items.forEach(function (item) {
      var text = item.textContent.toLowerCase();
      var match = !query || text.indexOf(query) !== -1;
      item.style.display = match ? '' : 'none';
      // Expand matches while searching; collapse everything when the box is cleared
      item.open = !!query && match;
      if (match) visible++;
    });

    tocLinks.forEach(function (link) {
      var idx = link.getAttribute('href').replace('#q', '');
      var item = document.querySelector('.faq-item[data-index="' + idx + '"]');
      link.style.display = (item && item.style.display !== 'none') ? '' : 'none';
    });

    noResults.style.display = (query && visible === 0) ? '' : 'none';
  });
})();
</script>