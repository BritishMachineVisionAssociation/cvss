---
layout: default_sparse
title: School Schedule
permalink: /programme/schedule/
index: 0
---

<!-- TODO: ADD BACK IN FOR CONFERENCE!
<div class="row no-gutters pt-0 d-xs-block {%comment%}d-xl-none{%endcomment%}">
    <div class="mb-1 pl-2 pr-2 mx-auto mx-sm-left col-xs-auto">
        <p><a class="btn btn-warning" role="button" href="{{site.baseurl}}/conference/schedule/"><b>Go to the Virtual Conference!</b></a></p>
    </div>
</div>
-->

To be announced.

<!-- 
<p>Details of the conference timetable over the four days are provided below. <strong>Please note that papers for poster presentation are allocated a specific day and will be presented during both morning and afternoon sessions along with the oral papers for the sessions on the same day.</strong></p> -->

<div class="row pl-2 pr-2 pt-2 pb-2 mx-auto justify-content-center">

	<table class="table table-striped table-bordered" style="max-width: 1000px;">
{% for day in site.data.schedule.schedule %}
	  	<thead class="thead-dark">
		  	<!--<tr><th scope="col" colspan="4">{{ day.day }}</th></tr>
		    <tr><th scope="col">Session</th>
		        <th scope="col">UK Time<br>(UTC + 1)</th>
		        <th scope="col">EDT Time<br>(UTC - 4)</th>
		        <th scope="col">CST Time<br>(UTC + 8)</th>
		    </tr>-->
		    <tr><th scope="col">{{ day.day }}</th>
		        <th scope="col" style="text-align: center;">UK GMT<br>(UTC)</th>
		        <th scope="col" style="text-align: center;">Eastern ST<br>(UTC - 5)</th>
		        <th scope="col" style="text-align: center;">China ST<br>(UTC + 8)</th>
		    </tr>
	    </thead>
        <tbody>
        	{% for session in day.contents %}
        		{% capture start-mins %}{{ session.start-time | split: ":" | last }}{% endcapture %}
        		{% capture end-mins %}{{ session.end-time | split: ":" | last }}{% endcapture %}
            <tr >
                <td><a class="anchor" id="session-id-{{session.session-id}}"></a>
                	{% if session.poster-session-id %}<a class="anchor" id="poster-session-id-{{session.poster-session-id}}"></a>{% endif %}
                	{% if session.keynote-id %}
                		{% assign keynote-details = site.data.programme.keynotes | where: "id", session.keynote-id | first %}
                		<a href="{{site.baseurl}}/keynotes/#{{session.keynote-id}}">Keynote: {{ keynote-details.name }}</a><br><strong>{{keynote-details.title}}</strong>
                	{% else %}
                        {% if session.session-id %}<a href="{{site.baseurl}}/programme/accepted-papers/#session-id-{{session.session-id}}">{% endif %}{{-session.session-}}{% if session.session-id %}</a>{% endif %}
                        {% if session.title %}
                            <br><strong>{{-session.title-}}</strong>
                        {% endif %}
                	{% endif %}

            	</td>
                <td style="text-align: center;">
                	{{ session.start-time | append: ":" | append: start-mins | date: "%H:%M" }} - 
                    {{ session.end-time   | append: ":" | append: end-mins | date: "%H:%M" }}</td>
                <td style="text-align: center;">
                	{{ session.start-time | plus: -5 | append: ":" | append: start-mins | date: "%H:%M" }} - 
                    {{ session.end-time   | plus: -5 | append: ":" | append: end-mins | date: "%H:%M" }}</td>
                <td style="text-align: center;">
                	{{ session.start-time | plus: 8 | append: ":" | append: start-mins | date: "%H:%M" }} - 
                    {{ session.end-time   | plus: 8 | modulo: 24 | append: ":" | append: end-mins | date: "%H:%M" }}</td>
            </tr>
            {% endfor %}
        </tbody>
        <tbody >
        	
        </tbody>
{% endfor %}
    </table>

</div>




