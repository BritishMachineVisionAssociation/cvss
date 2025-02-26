---
layout: default_sparse
title: School
permalink: /school/
---


British Machine Vision Association runs an annual Computer Vision Summer School aimed at PhD students in their first year, though it will be beneficial to other researchers at an early stage in their careers. Despite the title, students from non-UK universities are welcome to attend, as well as students from UK universities. Places are limited to ensure good interaction in lab classes.

The 2025 Summer School will take place at the {{site.host-name}}, {{site.host-name-city}}, between {{ site.dates }}. It will consist of an intensive week of lectures and lab sessions covering a wide range of topics in Computer Vision. Lecturers are researchers in the field from some of the most active research groups in the UK and abroad.

In addition to the academic content, the Summer School provides a networking opportunity for students to interact with their peers, and to make contacts among those who will be the active researchers of their own generation.

<ul class="list-group">

  
  <li>4D Video Scene Understanding in the Wild</li>
  

  
  <li>Multimodal Behaviour Understanding and Generation for Human-Robot Interaction</li>
  

  
  <li>Contrastive Language-Image Pretraining (CLIP) for Video Analytics</li>
  

  
  <li>Computer Vision in Robotics and SLAM</li>
  

  
  <li>Egocentric Vision - Making Sense of the First-Person Perspective</li>
  

  
  <li>Human vs Computer Vision</li>
  

  
  <li>Efficient Models - Neural Architecture Search</li>
  

  
  <li>Graph and Geometric Computer Vision</li>
  

  
  <li>Python (Pytorch) for Computer Vision</li>
  

  
  <li>Revolutionizing Medical Imaging Using Generative Models</li>
  

  
  <li>Self-supervised Learning</li>
  

  
  <li>Classical Computer Vision</li>
  

  
  <li>Hyperbolic and Hyperspherical Learning</li>
  

  
  <li>Structured Generative models for Computer Vision</li>
  

  
  <li>Uncertainty and Evaluation in Vision</li>
  

  
  <li>Video Understanding</li>
  

</ul>

<hr />
<!-- TODO: Add in Aberdeen Blurb -->

<!-- Durham University is situated about twenty miles south-west of Newcastle in the North East of England. A number of train operators offer direct and regular routes to Durham Railway Station, including London and Edinburgh. Durham is around 3 hours from London, just over 3 hours from Birmingham, 2½ hours from Manchester, 1½ hours from Edinburgh and 45 minutes from York. Durham University is an internationally renowned university based across Durham that provides top-quality academic, social and cultural facilities to over 20,000 students.  -->

The school covers the following topics:
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
TBA
{% endif %}
<hr />

{% include venue_carousel.html %}
