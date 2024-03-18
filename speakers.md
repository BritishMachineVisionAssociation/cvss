---
layout: default_sparse
title: Speakers
permalink: /speakers/
index: 10
---

<div class="row justify-content-around pl-4 pr-4">
To be announced.

{% comment %}
{% assign sorted_keynotes = site.data.programme.keynotes | sort: "id" %}

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
	            <p class=""><!--<span><b>{{ person.title }}</b></span><br/>-->
	            <span class=""><small>{{ person.job }}</small></span></p>
	        </div>
	    </div>
	    <div class="col-12 col-md-8 col-lg-9">
	        <div class="">
	            <h4 class="pt-1 text-center">{{ person.title }}</h4>
	            <p class="text-center mb-1"><small >({{keynote_day | strip}}: {{details.start-time}} - {{details.end-time}} BST)</small></p>
	            <p class="pb-1 mb-1">{{ person.abstract }}</p>
	            <p class="pb-1 text-center">~</p>
	            <p class="pb-2">{{ person.bio }}</p>
	        </div>
	    </div>
	</div></div>
{% endfor %}



{% endcomment %}

</div>

