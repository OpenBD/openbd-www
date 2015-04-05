<cfsilent>

	<!--- 
		$Id:$ 
	--->

	<cfparam name="request.page.title" default="">
	<cfparam name="request.page.thispage" default="">
	<cfparam name="request.page.section" default="">

</cfsilent>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if (gte IE 9)]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<title><cfoutput>#request.page.title#</cfoutput></title>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="description" content="OpenBD Java CFML Engine - OpenBD is the worlds first truly open source and free GPL Java CFML runtime." />
	<meta name="author" content="aw2.0 Ltd" />
	<meta name="keywords" content="openbd, cfml" />

	<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
	
	<!--- common css files --->
	<cfset commonCss = [
		"/a/css/reset.css",
		"/a/css/base.css"
	]>
	<cfstylesheet src="#commonCss#" path="/a/css/" media="screen,projection" minimize="true" />
	<link rel="icon" type="image/png" href="/a/img/favicon.png" />	
	
</head>
<cfif ( len(request.page.thispage) != 0 )>
<cfoutput><body class="#request.page.thispage#"></cfoutput>
<cfelse>
<body>
</cfif>

<cfinclude template="/inc/header-display.cfm" />

