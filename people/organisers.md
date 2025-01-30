---
layout: default_sparse
title: Organisers
permalink: /people/organisers/
index: 0
---


{% assign organiser_list = site.data.people.organisers %}
<h2> Chairs </h2>
<br />
<div class="row ">
{% for person in organiser_list %}
    <div class="col-12 col-sm-12 col-md-6 col-lg-3">
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
<h2> Supported on behalf of the  <a href="https://www.bmva.org/">BMVA</a> by </h2>
<br />
<div class="row">
{% assign bmva_list = site.data.people.bmva %}
{% for person in bmva_list %}
    <div class="col-sm-12 col-md-6 col-lg-3">
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
{% if site.data.people.helpers %}
<h2> With the fantastic support of our helpers:</h2>
<br  />
<div class="row">

{% assign helper_list = site.data.people.helpers | sort: "name" %}
{% for person in helper_list %}
    <div class="col-sm-12 col-md-3 col-lg-2">
        <div class="text-center">
            <img src="{{ site.baseurl }}{{ person.img }}" class="rounded-circle img-fluid" style="max-width: 125px;">
            <h4 class="pt-2">{{ person.name }}</h4>
            <p class="pb-2">{{ person.job }}</p>
        </div>
    </div>
{% endfor %}

</div>
{% endif %}
