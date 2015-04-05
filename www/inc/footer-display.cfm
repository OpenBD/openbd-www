</div><!--- end wrap --->

<div class="footer">
	<div class="container cf">
	
		<ul class="left cf">
			<li><a <cfif request.page.thispage == "showcase">class="active"</cfif> href="/showcase/">Showcase</a></li> 
			<li><a <cfif request.page.thispage == "downloads">class="active"</cfif> href="/downloads/">Downloads</a></li>
			<li><a <cfif request.page.thispage == "manual">class="active"</cfif> href="/manual/">Manual</a></li>
			<li><a <cfif request.page.thispage == "services">class="active"</cfif> href="/services/">Services</a></li>
			<li><a <cfif request.page.thispage == "about">class="active"</cfif> href="/about/">About</a></li>
			<li><a <cfif request.page.thispage == "logos">class="active"</cfif> href="/resources/">Resources</a></li>
			<li><a <cfif request.page.thispage == "contact">class="active"</cfif> href="/contact/">Contact</a></li>
			<li><a href="https://github.com/OpenBD/">GitHub</a></li>
			<li><a class="twit" href="http://twitter.com/openbluedragon">Twitter</a></li>
		</ul>

		<ul class="right cf">
			<li><cfoutput>Latest Release: v#request.releaseversion# #request.releasedate# &ndash; <a href="/licence/">Core Engine Licenced under GPLv3</a></cfoutput></li>
		</ul>
		
		<p>&copy; Copyright Tag Servlet Ltd, <cfoutput>#Year(now())#</cfoutput></p>
		
	</div><!--- end container --->	
</div><!--- end footer --->