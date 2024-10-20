---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

[<a href="https://scholar.google.com/citations?hl=en&user=K-isjagAAAAJ&view_op=list_works">google scholar</a>]
[<a href="#all" onclick="showAll()">all</a>]
[<a href="#representative" onclick="showRepresentative()">representative</a>]

<div id="all-publications" style="display: block;">
{% include publication.html %}
</div>

<div id="representative-publications" style="display: block;">
{% include representative.html %}
</div>

<script>
function showAll() {
  document.getElementById("all-publications").style.display = "block";
  document.getElementById("representative-publications").style.display = "none";
}

function showRepresentative() {
  document.getElementById("all-publications").style.display = "none";
  document.getElementById("representative-publications").style.display = "block";
}

function copy(dest, source) {
	if(dest.source == source) {
	  dest.innerHTML = "";
	  dest.source = null;
	}
	else {
	  dest.innerHTML = source.innerHTML;
	  dest.source = source;
	}
	dest.blur();
}
</script>
