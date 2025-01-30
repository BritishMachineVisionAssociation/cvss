---
layout: default_sparse
title: Speakers
permalink: /speakers/
index: 10
---

<div class="row justify-content-around pl-4 pr-4">
{% if site.data.programme.keynotes %}
{% assign sorted_keynotes = site.data.programme.keynotes | sort: "id" %}
<div class="col-12"><div class="row pt-2 pb-2">
{% for person in sorted_keynotes %}
	    <div class="col-12 col-md-2 col-lg-2">
	        <div class="text-center">
	            <img src="{{ site.baseurl }}{{ person.img }}" class="rounded-circle img-fluid" style="max-width: 125px;">
	            <h4 class="pt-2"><a href="#{{ person.id }}">{{ person.name }}</a></h4>
	            <p class=""><!--<span><b>{{ person.topic }}</b></span><br/>-->
	            <span class=""><small>{{ person.job }}</small></span></p>
	        </div>
	    </div>
{% endfor %}
</div>
<hr />
{% assign sorted_topic = site.data.programme.keynotes | sort: "topic" %}
{% for person in sorted_topic %}
{% unless person.topic contains  "TBC" %}
<a class="btn btn-xs btn-primary tag" href="#{{ person.id }}">{{ person.topic }} </a>
{% endunless %}
{% endfor %}

<hr />


{% for person in sorted_keynotes %}
	{% capture keynote_day %}
		{% for day in site.data.schedule.schedule %}
			{% for session in day.contents %}
				{% if session.keynote-id == person.id %}
					{{ day.day }}
					{% assign details = session %}
				{% endif %}
			{% endfor %}
		{% endfor %}
	{% endcapture %}
	<div class="col-12"><div class="row pt-2 pb-2 align-items-center">
	    <div class="col-12 col-md-4 col-lg-3"><a class="anchor" id="{{ person.id }}"></a>
	        <div class="text-center">
	            <img src="{{ site.baseurl }}{{ person.img }}" class="rounded-circle img-fluid" style="max-width: 125px;">
	            <h4 class="pt-2"><a href="{{ person.url }}">{{ person.name }}</a></h4>
	            <p class=""><!--<span><b>{{ person.topic }}</b></span><br/>-->
	            <span class=""><small>{{ person.job }}</small></span></p>
	        </div>
	    </div>
	    <div class="col-12 col-md-8 col-lg-9">
	        <div class="">
	            <h4 class="pt-1 text-center">Session Topic: {{ person.topic }}</h4>
              {% comment %}
	            <p class="text-center mb-1"><small >({{keynote_day | strip}}: {{details.start-time}} - {{details.end-time}} BST)</small></p>
	            <p class="pb-1 mb-1">{{ person.abstract }}</p>
	            <p class="pb-1 text-center">~</p>
              {% endcomment %}
	            <p class="pb-2">{{ person.bio }}</p>
	        </div>
	    </div>
	</div></div>
{% endfor %}

{% else %}
TBA

{% endif %}


</div>

