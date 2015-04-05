<cfsilent>

	<!---
		$Id:$
	--->

<cfscript>
	// common site wide js files
	commonJs = [
		"/a/js/jquery.1.7.2.min.js",
		"/a/js/jquery.json-2.3.min.js",
		// css3 media queries for IE
		"/a/js/respond.min.js",
		// modals
		"/a/js/bootstrap-modal.js",
		// base js
		"/a/js/base.js"
	];

	// homepage specific js files
	homeJs = [
		"/a/js/jquery.flexslider-min.js",
		"/a/js/home.js"
	];

	// downloads specific js
	downloadsJs = [
		"/a/js/downloads.js"
	];

	// help me choose specific js files
	chooseJs = [
		"/a/js/choose.js"
	];
</cfscript>

</cfsilent><cfinclude template="footer-display.cfm" />

	<!--- common js, minimized --->
	<cfjavascript src="#commonJs#" MINIMIZE="true" path="/a/js/">

	<!--- HTML5 IE Enabling Script --->
	<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

	<!--- Home page specific js --->
	<cfif (request.page.thispage == 'home')>
		<cfjavascript src="#homeJs#" MINIMIZE="true" path="/a/js/">
	</cfif>

	<!--- Downloads page specific js --->
	<cfif (request.page.thispage == 'downloads')>
		<cfjavascript src="#downloadsJs#" MINIMIZE="true" path="/a/js/">
	</cfif>

	<!--- help me choose page js --->
	<cfif (request.page.thispage == 'helpme')>
		<cfjavascript src="#chooseJs#" MINIMIZE="true" path="/a/js/">
	</cfif>

	<cfif (request.page.thispage == 'about')>
	<script type="text/javascript">
		$(function() {
			$('div.hide').hide();
		});
	</script>
	</cfif>

	<!--- put this in the page you want to time...
		<cfset request.start.time = getTickCount() />
	--->
	<!--- get page loading time by subtracting the tick count in the page from this one --->
	<cfif structkeyexists(request, "start")>
		<cfset tickCount = getTickCount() />
			<cfset pageLoadTime = tickCount - request.start.time & "ms"/>
	<cfelse>
			<cfset pageLoadTime = "not active on this page">
	</cfif>
	<!-- page load time: <cfoutput>#pageLoadTime#</cfoutput> -->

</body>
</html>
