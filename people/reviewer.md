---
layout: default_sparse
title: Reviewers
permalink: /people/reviewers/
index: 2
---

The conference [organisers]({{site.baseurl}}{% link people/organisers.md %}) would like to extend their gradititude to all the reviewers who worked very hard to review and discuss all the conference submissions. In particular we would like to recognise our outstanding reviewers for their extensive contributions to the review process.

<h2 class="text-center">Outstanding Reviewers</h2>

<div class="row justify-content-around pl-4 pr-4 pt-4">

{% assign sorted-outstanding-reviewers = site.data.people.outstanding-reviewers | sort: "name" %}

{% for person in sorted-outstanding-reviewers %}
    <div class="col-3"><!--col-6 col-md-4 col-lg-3">-->
        <div class="text-center">
            <p class="">{{ person.name }}</p>
        </div>
    </div>
{% endfor %}

</div>

<h2 class="text-center pt-3">Reviewers</h2>

<div class="row justify-content-around pl-4 pr-4 pt-4">

{% assign sorted-reviewers = site.data.people.reviewers | sort: "name" %}

{% for person in sorted-reviewers %}
    <div class="col-3"><!--col-6 col-md-4 col-lg-3">-->
        <div class="text-center">
            <p class="">{{ person.name }}</p>
        </div>
    </div>
{% endfor %}

</div>

