---
layout: default_sparse
title: Organisers
permalink: /people/organisers/
index: 0
---

<div class="row justify-content-around pl-4 pr-4">

{% assign organiser_list = site.data.people.organisers %}

{% for person in organiser_list %}
    <div class="col-6 col-md-4 col-lg-4">
        <div class="text-center">
            <img src="{{ site.baseurl }}{{ person.img }}" class="rounded-circle img-fluid" style="max-width: 125px;">
            <h4 class="pt-2"><a href="{{ person.url }}">{{ person.name }}</a></h4>
            <p class="pb-2">{{ person.job }}</p>
        </div>
    </div>
{% endfor %}

</div>

