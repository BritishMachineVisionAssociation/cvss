---
layout: default_sparse
title: Sponsorship
permalink: /sponsorship/
---

{% comment %}

<p class="mb-3" align="center"><strong>We are very grateful to our sponsors for supporting the conference this year:</strong></p>

{% assign grouped_sponsors = site.data.sponsors.sponsors | group_by:"type" %}
<!--<div class="container mb-3">-->
{% for group in grouped_sponsors %}
<div class="row mt-1 mb-1 justify-content-around align-items-center">
  <div class="col-12 mt-3 mb-3">
    <h3>{{-group.name-}}&nbsp;Sponsors</h3>
  </div>
{% for item in group.items %}
  <div class="col mb-1 text-center">
    <a href="{{item.url}}"><img src="{{ site.baseurl }}/assets/images/sponsors/{{item.logo}}" class="img-fluid" alt="{{ item.id }}" style="max-height: 100px;"></a>
  </div>
{% endfor %}
</div>
{% endfor %}
<!--</div>-->

{% endcomment %}

<h3 class="mt-3">Sponsorship Opportunities</h3>

<p class="mt-3" align="center"><strong>
            There are various sponsorship opportunities at {{site.short-title}}; please get in touch with <a href="mailto:martin.fergie@manchester.ac.uk">Martin Fergie</a> to discuss sponsoring the conference.
        </strong></p>

<p><b>
    Our intention is to provide sponsors with a joint opportunity at the <a href="{{site.bmva-event-url}}">BMVA September event</a> where sponsors will have the option of hosting a stall and in-person events.
</b></p>

{% comment %}

<div class="row pl-2 pr-2 pt-2 pb-2 mx-auto justify-content-center">
    <table class="table table-striped table-bordered" style="max-width: 750px;">
        <tbody>
            <tr>
                <th style="text-align: center">PACKAGE OFFERS</th>
                <th style="text-align: center">PLATINUM £5000</th>
                <th style="text-align: center">GOLD £2000</th>
                <th style="text-align: center">SILVER £1000</th>
            </tr>
            <tr>
                <td>Sponsor logo and link on the conference website</td>
                <td align="center">✔</td>
                <td align="center">✔</td>
                <td align="center">✔</td>
            </tr>
            <tr>
                <td>Sponsor logo and details on sponsors page</td>
                <td align="center">✔</td>
                <td align="center">✔</td>
                <td align="center">✔</td>
            </tr>
            <tr>
                <td>Sponsor presence at the virtual careers fair</td>
                <td align="center">✔</td>
                <td align="center">✔</td>
                <td align="center">✔</td>
            </tr>
            <tr>
                <td>Complimentary virtual registrations</td>
                <td align="center">8</td>
                <td align="center">4</td>
                <td align="center">2</td>
            </tr>
            <!--<tr>
                <td><strong>Young researcher attendance bursaries named after the sponsor</strong></td>
                <td align="center">✔</td>
                <td align="center">✔</td>
                <td align="center">✘</td>
            </tr>-->
            <tr>
                <td>Acknowledgment in the opening address and sponsor logo on livestream title slide</td>
                <td align="center">✔</td>
                <td align="center">✔</td>
                <td align="center">✘</td>
            </tr>
            <tr>
                <td>Sponsor promotional video shown during breaks in the livestream</td>
                <td align="center">✔</td>
                <td align="center">✘</td>
                <td align="center">✘</td>
            </tr>
            <!--<tr>
                <td><strong>Sponsor name associated with invited talk</strong></td>
                <td align="center">✔</td>
                <td align="center">✘</td>
                <td align="center">✘</td>
            </tr>
            <tr>
                <td><strong>Sponsor name associated with prize</strong></td>
                <td align="center">✔</td>
                <td align="center">✘</td>
                <td align="center">✘</td>
            </tr>-->
        </tbody>
    </table>
</div>

{% endcomment %}

