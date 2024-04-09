---
layout: default_sparse
title: Organisers
permalink: /people/organisers/
index: 0
---


{% assign organiser_list = site.data.people.organisers %}
<h2> Chairs </h2>
<br />
<div class="row pl-4 pr-4">
{% for person in organiser_list %}
    <div class="col-3 col-md-3 col-lg-3">
        <div class="text-center">
            <img src="{{ site.baseurl }}{{ person.img }}" class="rounded-circle img-fluid" style="max-width: 125px;">
            <h4 class="pt-2"><a href="{{ person.url }}">{{ person.name }}</a></h4>
            <p class="pb-2">{{ person.job }}</p>
        </div>
    </div>
{% endfor %}
</div>


<hr />
<br />
<h2> Support from the <a href="https://www.bmva.org/">BMVA</a> </h2>
<br />
<div class="row pl-4 pr-4">
{% assign bmva_list = site.data.people.bmva %}
{% for person in bmva_list %}
    <div class="col-6 col-md-3 col-lg-3">
        <div class="text-center">
            <img src="{{ site.baseurl }}{{ person.img }}" class="rounded-circle img-fluid" style="max-width: 125px;">
            <h4 class="pt-2"><a href="{{ person.url }}">{{ person.name }}</a></h4>
            <p class="pb-2">{{ person.job }}</p>
        </div>
    </div>
{% endfor %}

</div>

