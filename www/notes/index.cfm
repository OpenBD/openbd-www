<cfsilent>
	
<cfset request.page = {
		title 		: "OpenBD | Release Notes",
		thispage 	: "notes", 
		section 	: "main"
	}>

	<cfparam default="Nightly" name="url.t">
	<cfparam default="56" name="url.id">
	
	<cfif NOT IsNumeric(url.id)>
		<cfset url.id = 56>
	</cfif>

</cfsilent><cfinclude template="/inc/header.cfm" />

<div class="wrapper">

<div class="content title">
	<div class="container cf">
		<h1>Release Notes</h1>	
	</div><!--- end container --->
</div><!--- end content --->

<div class="content first">
	<div class="container cf">
		
			<div class="full left">
				<h2><cfoutput>#url.t#</cfoutput></h2>
				<cfif url.t eq "Nightly">
					<cftry>
						<cffile action="read" file="#ExpandPath("/download/nightly/ReleaseNotes.txt")#" variable="tmp">
						<pre><cfoutput>#XmlFormat( tmp )#</cfoutput></pre>
						<cfcatch>
							<pre>Nightly release notes not available at the moment, please try again later.</pre>
						</cfcatch>
					</cftry>
					
				<cfelse>
					<cfif cfhttp.StatusCode eq "200 OK">
						<cfhttp url="http://openbd.viviotech.net/downloader.cfm/id/#url.id#/file/ReleaseNotes.txt" timeout="30" method="get"></cfhttp>
						<pre><cfoutput>#XmlFormat( cfhttp.FileContent )#</cfoutput></pre>
					</cfif>
				</cfif>
			</div>
			
	</div><!--- end container --->
</div><!--- end content --->

</div><!--- end wrapper --->

<cfinclude template="/inc/footer.cfm" />


