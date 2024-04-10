---
layout: default_sparse
title: School
permalink: /school/
---


British Machine Vision Association runs an annual Computer Vision Summer School aimed at PhD students in their first year, though it will be beneficial to other researchers at an early stage in their careers. Despite the title, students from non-UK universities are welcome to attend, as well as students from UK universities. Places are limited to ensure good interaction in lab classes.

The 2024 Summer School will take place at the Durham University, Durham, UK, between {{ site.dates }}. It will consist of an intensive week of lectures and lab sessions covering a wide range of topics in Computer Vision. Lecturers are researchers in the field from some of the most active research groups in the UK and abroad.

In addition to the academic content, the Summer School provides a networking opportunity for students to interact with their peers, and to make contacts among those who will be the active researchers of their own generation.

Durham University is situated about twenty miles south-west of Newcastle in the North East of England. A number of train operators offer direct and regular routes to Durham Railway Station, including London and Edinburgh. Durham is around 3 hours from London, just over 3 hours from Birmingham, 2½ hours from Manchester, 1½ hours from Edinburgh and 45 minutes from York. Durham University is an internationally renowned university based across Durham that provides top-quality academic, social and cultural facilities to over 20,000 students. 

The school covers the following topics:
{% assign sorted_keynotes = site.data.programme.keynotes | sort: "topic" %}
<ul class="list-group">
{% for person in sorted_keynotes %}
  {% unless person.topic contains  "TBC" %}
  <li>{{ person.topic }}</li>
  {% endunless %}
{% endfor %}
</ul>

<hr />

{% include venue_carousel.html %}