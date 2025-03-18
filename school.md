---
layout: default_sparse
title: School
permalink: /school/
---


The British Machine Vision Association runs an annual Computer Vision Summer School aimed at PhD students, though it will also be beneficial to other researchers at an early stage in their careers as well as professionals working in industry. Despite the title, students from non-UK universities are welcome to attend, as are students and professionals from UK universities and industry. Places are limited, so we encourage early registration.

The 2025 Summer School will take place at the {{site.host-name}}, {{site.host-name-city}}, between {{ site.dates }}. It will consist of an intensive week of lectures and lab sessions covering a wide range of topics in Computer Vision. Lecturers are researchers in the field from some of the most active research groups in the UK and abroad.

In addition to the academic content, the Summer School provides a networking opportunity for students to interact with their peers, and to make contacts among those who will be the active researchers of their own generation.

The school covers the following topics:

<hr />
<!-- TODO: Add in Aberdeen Blurb -->

<!-- Durham University is situated about twenty miles south-west of Newcastle in the North East of England. A number of train operators offer direct and regular routes to Durham Railway Station, including London and Edinburgh. Durham is around 3 hours from London, just over 3 hours from Birmingham, 2½ hours from Manchester, 1½ hours from Edinburgh and 45 minutes from York. Durham University is an internationally renowned university based across Durham that provides top-quality academic, social and cultural facilities to over 20,000 students.  -->

{% if site.data.programme.keynotes %}
{% assign sorted_keynotes = site.data.programme.keynotes | sort: "topic" %}
<ul class="list-group">
{% for person in sorted_keynotes %}
  {% unless person.topic contains  "TBC" %}
  <li>{{ person.topic }}</li>
  {% endunless %}
{% endfor %}
</ul>
{% else %}

{% endif %}
<hr />

{% include venue_carousel.html %}
