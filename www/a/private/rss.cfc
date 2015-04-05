<cfcomponent output="false">

<cffunction name="getFeed" returntype="query">
	<cfargument name="xmlFeed" required="true">

	<cfhttp url="#xmlFeed#" timeout="30" method="get"></cfhttp>

	<cfset var qry = QueryNew("title,summary,link")>

	<cfif cfhttp.StatusCode eq "200 OK">

		<cfset var xmlDoc = XmlParse( cfhttp.FileContent )>
		<cfif NOT isDefined('xmlDoc.feed.entry')>
			<cfreturn qry>
		</cfif>

		<cfset var entryArr 		= xmlDoc.feed.entry>
		<cfset var x 						= 0>
		<cfset var entryElement = 0>

		<cfloop index="x" from="1" to="#ArrayLen( entryArr )#">
			<cfset entryElement = entryArr[x]>

			<cfset QueryAddRow(qry,1)>

			<cfset QuerySetCell( qry, "title", 		entryElement.title.XmlText )>

			<cfif isDefined('entryElement.content')>
				<cfset QuerySetCell( qry, "summary", 	entryElement.content.XmlText )>
			<cfelseif isDefined('entryElement.summary')>
				<cfset QuerySetCell( qry, "summary", 	entryElement.summary.XmlText )>
			</cfif>

			<cfset QuerySetCell( qry, "link", 		entryElement.link.XmlAttributes.href )>
		</cfloop>

	</cfif>

	<cfreturn qry>
</cffunction>

</cfcomponent>