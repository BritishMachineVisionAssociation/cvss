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

<div id="faq-items">
{% for query in site.data.faq.questions %}<div class="faq-item" data-index="{{forloop.index0}}">
    <h3 id="q{{forloop.index0}}">{{ query.question }}</h3>
    {{ query.answer }}
  </div>
{%- endfor %}
</div>

<script>
(function () {
  var input = document.getElementById('faq-search');
  var items = document.querySelectorAll('.faq-item');
  var tocLinks = document.querySelectorAll('.faq-toc-link');
  var noResults = document.getElementById('faq-no-results');

  input.addEventListener('input', function () {
    var query = this.value.trim().toLowerCase();
    var visible = 0;

    items.forEach(function (item) {
      var text = item.textContent.toLowerCase();
      var match = !query || text.indexOf(query) !== -1;
      item.style.display = match ? '' : 'none';
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