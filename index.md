---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
toc: true
---
## About this group
We meet weekly to discuss papers from A\* system conferences: OSDI, SOSP,
Eurosys, FAST, ATC, ASPLOS, PLDI, NSDI, SIGCOMM, MobiSys, and MobiCom.

## Logistics

* *When:* Fridays 1-2:30pm
* *Where:* SIT 411 or virtually in [MS Teams](https://teams.microsoft.com/l/team/19%3aRCfaq891_efLuFCzx8w4qEjO4sFxH6d_7rQvBkWUwgc1%40thread.tacv2/conversations?groupId=7329f207-f51b-439c-90b2-36896cc7eeaa&tenantId=624d5c4b-45c5-4122-8cd0-44f0f84e945d).


*How can I give a talk?* 
* Easiest is to just send a PR to [this link](https://github.com/systems-rg/systems-rg.github.io).
* Or you can let [Abhilash](mailto:ajindal@cse.iitd.ac.in) know when you'd like to give a talk.

## Honor code
If you will be unable to give the talk in your committed slot due to unforeseen
emergency, let [Abhilash](mailto:ajindal@cse.iitd.ac.in) or
[Sorav](mailto:sbansal@iitd.ac.in) ASAP.

We will occasionally serve lunch. We will float a form to get the head count
for such days.  If you've committed that you'll attend a session in-person,
	please ensure that you do attend. 

## Schedule
<ul>
{% for pub in site.data.talks %}
<li>
	<a href="{{ pub.url }}" target="_blank">[{{ pub.abbrvenue }} {{ pub.year }}] {{ pub.title }}</a>
	<br/>
	<div style="justify-content: space-between; display: flex">
		<span> When: {{ pub.when }}</span>
		<span> <i>Speaker:</i> {{ pub.speaker }} </span> 
		<span> <a href="{{ pub.slides }}" target="_blank">Talk slides</a> </span>
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
