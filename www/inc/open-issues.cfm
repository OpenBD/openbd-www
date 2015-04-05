<!---

Still to be do: pull the active issues from GitHub https://github.com/OpenBD/openbd-core/issues

<cfcachecontent ACTION="CACHE" CACHENAME="issuesfeed" CACHEDWITHIN="#CreateTimeSpan( 0, 1, 0, 0 )#">

<cfsilent>
	<cftry>
		<cfhttp method="get" name="issuesQry" timeout="30"  url="http://code.google.com/p/openbluedragon/issues/csv">
		</cfhttp>
		<cfset QuerySort( issuesQry, "ID", "NUMERIC", "DESC") />
		<cfcatch>
			<cfset issuesQry = QueryNew( "ID,summary") />
		</cfcatch>
	</cftry>
</cfsilent>

	<h3>Open Issues</h3>
		<ul class="posts">
			<cfoutput query="issuesQry" maxrows="5">
			<li><span><a href="http://code.google.com/p/openbluedragon/issues/detail?id=#Id#" title="click to view issue on the Issue Tracker">###Id#</a>&nbsp;#Left(summary, 80)#&hellip;</span></li>
			</cfoutput>
		</ul>

</cfcachecontent>

--->