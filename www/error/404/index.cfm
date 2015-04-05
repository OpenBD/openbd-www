<cfsilent>

	<!--- 
		$Id:$ 
	--->
	
<cfset request.page = {
		title : "Oops a daisy | OpenBD",
		thispage : "404", 
		section : "main"
	}>
	
<cfset errormsgtitle = "Oops, something's missing ..." />
<cfset errormsgsub = "404 Page Not Found" />

</cfsilent><cfinclude template="/inc/header.cfm" />

<div class="wrapper">

	<cfinclude template="/inc/errormsg.inc" />

</div><!--- end wrapper --->

<cfinclude template="/inc/footer.cfm" />