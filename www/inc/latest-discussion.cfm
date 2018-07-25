<cfcachecontent ACTION="CACHE" CACHENAME="maillist2" CACHEDWITHIN="#CreateTimeSpan( 0, 1, 0, 0 )#">

<cfsilent>
	<cfset rssObj = new a.private.rss() />
	<cfset rssQry	= rssObj.getFeed( "https://groups.google.com/forum/feed/openbluedragon/topics/atom_v1_0.xml" ) />
</cfsilent>

	<h3>Latest Discussion</h3>
		<ul class="posts">
			<cfoutput query="rssQry" maxrows="5">
			<li><span><a href="#rssQry.link#">#rssQry.title#</a></span></li>
			</cfoutput>
		</ul>

</cfcachecontent>
