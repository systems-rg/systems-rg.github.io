---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
toc: true
---
We meet weekly to discuss papers from A\* system conferences: OSDI, SOSP,
Eurosys, FAST, ATC, ASPLOS, POPL, PLDI, NSDI, SIGCOMM, MobiSys, and MobiCom.

## Logistics

* *When:* Fridays 1-2:30pm IST
* *Where:* SIT 113 or virtually in [MS Teams](https://teams.microsoft.com/l/team/19%3aRCfaq891_efLuFCzx8w4qEjO4sFxH6d_7rQvBkWUwgc1%40thread.tacv2/conversations?groupId=7329f207-f51b-439c-90b2-36896cc7eeaa&tenantId=624d5c4b-45c5-4122-8cd0-44f0f84e945d).

> If you are having trouble joining the Team from the link above, please fill
[this form](https://forms.gle/Pv17nNVFrSaHPL2t6), and we will add you. Joining
Teams will also let you access any previous talk recordings, and you will get notified
about the upcoming talks. Otherwise, you may directly join the meeting by
clicking on the "Talk link" in the "Schedule" below.

*How can I give a talk?* 
* Easiest is to send a PR to [this link](https://github.com/systems-rg/systems-rg.github.io).
* Or you can let [Abhilash](mailto:ajindal@cse.iitd.ac.in) know when you'd like to give a talk.

## Honor code
If you will be unable to give the talk in your committed slot due to unforeseen
emergency, let [Abhilash](mailto:ajindal@cse.iitd.ac.in) or
[Sorav](mailto:sbansal@iitd.ac.in) know ASAP.

## Schedule
<ul>
{% for pub in site.data.talks %}
<li>
	<a href="{{ pub.url }}" target="_blank">[{{ pub.abbrvenue }} {{ pub.year }}] {{ pub.title }}</a>
	<br/>
	<div style="justify-content: space-between; display: flex">
		<span> <i>When:</i> {{ pub.when }}</span>
		{% if pub.spurl %}
			<span> <i>Speaker:</i> <a href="{{ pub.spurl }}" target="_blank"> {{ pub.speaker }} </a> </span> 
		{% else %}
			<span> <i>Speaker:</i> {{ pub.speaker }} </span> 
		{% endif %}
		{% if pub.slides %}
			<span> <a href="{{ pub.slides }}" target="_blank">Talk slides</a> </span>
		{% endif %}
		{% if pub.recording %}
			<span> <a href="{{ pub.recording }}" target="_blank">Talk recording</a> </span>
		{% elsif pub.talk %}
			<span> <b><a href="{{ pub.talk }}" target="_blank">Talk link</a></b> </span>
		{% endif %}
	</div>
	{% if pub.abstract %}
		<details>
			<summary><i>Abstract</i></summary>
			{{ pub.abstract }}
		</details>
	{% endif %}
	<br>
</li>
{% endfor %}
</ul>
