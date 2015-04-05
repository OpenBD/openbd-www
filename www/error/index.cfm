<cfsilent>

	<!--- 
		$Id:$ 
	--->
	
<cfset request.page = {
		title : "Oops a daisy | OpenBD",
		thispage : "error", 
		section : "main"
	}>
	
<cfset errormsgtitle = "Oops, something went wrong ..." />
<cfset errormsgsub = "That's all we know" />

</cfsilent><cfinclude template="/inc/header.cfm" />

<div class="wrapper">

	<cfinclude template="/inc/errormsg.inc" />

</div><!--- end wrapper --->

<cfinclude template="/inc/footer.cfm" />