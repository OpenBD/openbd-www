<cfsilent>
	
<cfset request.page = {
		title 		: "OpenBD | OpenBD Local",
		thispage 	: "local", 
		section 	: "main"
	}>
	
	<cfset u = new a.private.utils() />
	<cfset openBDLocalPath = "http://files.aw20.net/openbdlocal.zip" />
	<cfset openBDLocalSize = u.getFileSize( openBDLocalPath )>

</cfsilent><cfinclude template="/inc/header.cfm" />


<div class="wrapper">

<div class="content title">
	<div class="container cf">
			<h1>OpenBD Local</h1>
	</div><!--- end container --->
</div><!--- end content --->


<div class="content">
	<div class="container cf">
		
			<div class="twothirds left">
				<h2>Desktop applications for Windows</h2>
				<p>OpenBD Local is an exciting new way for you to ship your OpenBD #CFML Web Applications as quick, runnable desktop applications for Microsoft Windows.</p>
				<p>CFML can do more than just service web applications. With CFML you have a full language that can interact with the local computer it is running on. Examples include:</p>
				<ul>
					<li><span>File Explorer / Indexing system</span></li>
					<li><span>Utilities for file manipulation (advanced search and replace)</span></li>
					<li><span>MP3 Player and playlist editor</span></li>
				</ul>
			
				
				<!--- TODO: Screenshots required --->
				
				<p>You have the power to create rich web applications that run just locally on a users computer. </p>
				<p>From your users point of view they have NO complicated setup. OpenBD Local ships with everything they need to execute, including a JavaRunEnvironment (JRE) and an embedded webserver. When they install your application and run it up, it appears as a System Tray application</p>
				<p>What is running is a complete web-stack that is restricted (by default) only to the local computer. They can right hand click on the icon and when they click, their default browser is opened up, navigating to the home page of your webapp. </p>
				<p>Bundling your application as a OpenBD Local couldn't be easier. Simply develop your web app as normal and then drop it into the pre-configured folder, bundle it, and then give it to your users. </p>
				<p>You can even go further and build a complete Windows Installer, using Nullsoft Scriptable Install System. Full details in the <a href="http://www.openbd.org/manual/?/local_nsis" title="OpenBD NSIS Manual">OpenBD NSIS Manual</a>.</p>
				<p>All elements are completley customizable, including the icons and wording for your local application.</p>
			</div>
			
			<cfoutput>
			<div class="third left">
				<a class="btn btnblue bigload" href="#openBDLocalPath#" title="Download openBDlocal.zip">
					<span class="nowrap">Download OpenBD Local (<cfif( openBDLocalSize != "0KB")>#openBDLocalSize#<cfelse>31MB</cfif>)</span>
				</a>
			</div>
			</cfoutput>
			
	</div><!--- end container --->
</div><!--- end content --->


</div><!--- end wrapper --->

<cfinclude template="/inc/footer.cfm" />