<cfcomponent output="false">
	 
	<!---
	 $Id: ApplicationPublic.cfc 2437 2014-03-30 23:20:39Z alan $
		--->
 
	<cfscript>
			
		function onRequestStart( pageuri ) {
			// set up some constants for the site
			request.sitename            = "openbd.org";
			request.siteurl							= "http://" & request.sitename;
			request.releaseversion      = "3.1";
			request.releasedate         = "March 2014";
			request.nextreleaseversion  = "3.2.0";
			request.nightlyversion      = "3.2.0";
			
			// set up some email constants for the contact form
			request.email = {};
			request.email.to = "info@aw20.co.uk";
			request.email.cc = "";
			request.email.bcc = "";
			request.email.smtp = "127.0.0.1";
			request.email.un = "";
			request.email.pw = "";
			request.email.failto = "";
		}
		
		
		function onError( catchdata, eventname ) {
			writelog( text="Error details: " & catchdata.detail, file="onError", application="NO", thread="NO" );
			location( "/error/" );
		}
		
		
		function onMissingTemplate( pageuri ) {
			writelog( text="Page not found: " & pageuri, file="onMissingTemplate", application="NO", thread="NO" );
			location( "/error/404/" );
		}
		 
	</cfscript>
 
</cfcomponent>