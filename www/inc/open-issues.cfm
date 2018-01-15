<!---
	Pulls issue-data from GitHub and presents as a list
--->
<cfcachecontent ACTION="CACHE" CACHENAME="issuesfeed" CACHEDWITHIN="#CreateTimeSpan( 0, 1, 0, 0 )#">
	<cfset issueArr = []>
	
	<cftry>
		<!--- Grab the issues from GitHub --->
		<cfhttp method="get" timeout="30"  url="https://api.github.com/repos/OpenBD/openbd-core/issues" />
		
		<!--- Make sure we got some data, and that it's actually an array --->
		<cfif len(cfhttp.filecontent) GT 0 AND isJson(cfhttp.filecontent)>
			<cfset tempArr = deSerializeJson(cfhttp.filecontent)>
			<cfif isArray(tempArr)>
				<cfset issueArr = tempArr>
			</cfif>
		</cfif>
		<cfcatch>
			<!--- Just in case --->
			<cfset issueArr = []>
		</cfcatch>
	</cftry>

	<h3>Open Issues</h3>
		<ul class="posts">
			<cfoutput>
				<cfloop from="1" to="#arrayLen(issueArr) GT 4 ? 5: arrayLen(issueArr)#" index="i">
					<li>
						<span><a href="#issueArr[i].html_url#" title="click to view issue on the Issue Tracker">###issueArr[i].number#</a>&nbsp;#Left(issueArr[i].body, 80)#&hellip;</span>
					</li>
				</cfloop>
			</cfoutput>
		</ul>

</cfcachecontent>