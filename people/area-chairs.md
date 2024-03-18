---
layout: default_sparse
title: Area Chairs
permalink: /people/area-chairs/
index: 1
---

The conference [organisers]({{site.baseurl}}{% link people/organisers.md %}) would like to extend their gradititude to all the area chairs who worked very hard to currate both the reviewing process and the final conference programme.

<div class="row justify-content-around pl-4 pr-4">

{% for person in site.data.people.area-chairs %}
    <div class="col-3"><!--col-6 col-md-4 col-lg-3">-->
        <div class="text-center">
            <p class="">{{ person.name }}</p>
        </div>
    </div>
{% endfor %}

</div>

