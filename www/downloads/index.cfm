<cfsilent>
	
	<!--- $Id: index.cfm 2436 2014-03-30 23:11:20Z alan $ --->
	
<cfset request.page = {
		title : "OpenBD | Downloads",
		thispage : "downloads", 
		section : "main"
	}>

</cfsilent><cfinclude template="/inc/header.cfm" /> 

<div class="feature">
	<div class="container cf">
		<h1><img src="/a/img/downloads-headline.png" alt="OpenBD Downloads" title="OpenBD Downloads"/></h1>
		<p>OpenBD is available to download and use in a wide variety of different formats.</p>
	</div>
</div>	


<div class="wrapper">

<div id="fixnav" class="downloadnav">
	<div class="container">
		<ul class="cf">
		<li><a href="#latest">Latest Release</a></li>		
		<li><a href="#nightly">Nightly Build</a></li>	
		<li><a href="#plugins">OpenBD Plugins</a></li>
		<li><a href="#openbdlocal">OpenBD Local</a></li>
		</ul>
	</div><!--- end container --->
</div><!--- end downloadnav --->


<div id="latest" class="content latest">
	<div class="container cf">
		<cfoutput>
		<h2>OpenBD Latest Release (#request.releaseversion#)</h2>
	
		<div class="quarter left">
		<h3>Jetty Launcher</h3>
		<p>A desktop launcher to control one or more Jetty instances. Make developing web-apps very easy by running up apps quickly and easily.</p>
		<a class="btn btnblue dload _lr-desktop" href="https://github.com/aw20/jettydesktop"><span>Get JettyDesktop</span></a>
		</div>
		
		<div class="quarter left">
		<h3>Ready2Run</h3>
		<p>Official OpenBD+Jetty distribution has been configured with OpenBD within the root context. In other words, you can utilise CFML across all contexts and virtual hosts, in much the same way you can with JSP.</p>
		<a class="btn btnyellow dload _lr-r2r" href="/download/#request.releaseversion#/jetty-openbd.zip"><span>Download Now</span></a>
		</div>
	
		<div class="quarter left">
		<h3>J2EE Standard WAR</h3>
		<p>Standard web application runtime.</p>
		<a class="btn btngreen dload _lr-war" href="/download/#request.releaseversion#/openbd.war"><span>Download Now</span></a>
		</div>
		
		<div class="quarter left">
		<h3>OpenBD Jam</h3>
		<p>The first full purpose Open Source CFML Linux stack, all pre-configured and ready for you to start using OpenBD CFML.</p>
		<a class="btn btnorange dload _lr-jam" href="/download/#request.releaseversion#/OpenBDJAM.sh"><span>Download Now</span></a>
		<a class="docu" href="/jam/"><span>View documentation</span></a>
		</div>
		
		
		<div class="download-info">
			<a class="notes" href="/manual/?/releases">View release notes</a>
			<a class="code" href="/download/#request.releaseversion#/openbluedragon-src-#request.releaseversion#.zip">Download source code</a>
			<a class="source" href="http://websvn.openbd.org/">Browse source</a>
		</div>
		</cfoutput>
	</div><!--- end container --->
</div><!--- end content --->


<div id="nightly" class="content nightly">
	<div class="container cf">
		<cfoutput>
		<h2>OpenBD Nightly Build (#request.nightlyversion#)</h2>
		
		<div class="quarter left">
		<h3>Jetty Launcher</h3>
		<p>A desktop launcher to control one or more Jetty instances. Make developing web-apps very easy by running up apps quickly and easily.</p>
		<a class="btn btnblue dload _nb-desktop" href="https://github.com/aw20/jettydesktop"><span>Get JettyDesktop</span></a>
		</div>
		
		<div class="quarter left">
		<h3>Ready2Run</h3>
		<p>Official OpenBD+Jetty distribution has been configured with OpenBD within the root context. In other words, you can utilise CFML across all contexts and virtual hosts, in much the same way you can with JSP.</p>
		<a class="btn btnyellow dload _nb-r2r" href="/download/nightly/jetty-openbd.zip"><span>Download Now</span></a>
		</div>
	
		<div class="quarter left">
		<h3>J2EE Standard WAR</h3>
		<p>Standard web application runtime.</p>
		<a class="btn btngreen dload _nb-war" href="/download/nightly/openbd.war"><span>Download Now</span></a>
		<a class="btn btnbeige dload _nb-jar" href="/download/nightly/OpenBlueDragon.jar"><span>Download Jar Only</span></a>
		</div>
		
		<div class="quarter left">
		<h3>OpenBD Jam</h3>
		<p>The first full purpose Open Source CFML Linux stack, all pre-configured and ready for you to start using OpenBD CFML.</p>
		
		<a class="btn btnorange dload _nb-jam" href="/download/nightly/OpenBDJAM.sh"><span>Download Now</span></a>
		<a class="docu" href="/jam/"><span>View documentation</span></a>
		</div>
		
		
		<div class="download-info">
			<a class="notes" href="/notes/">View release notes</a>
			<a class="code" href="/download/nightly/openbluedragon-src.zip">Download source code</a>
			<a class="source" href="http://websvn.openbd.org/">Browse source</a>
			<a class="console" href="https://github.com/OpenBD/openbd-administrator">Admin console</a>
		</div>
		</cfoutput>
	</div><!--- end container --->
</div><!--- end content --->


<div id="plugins" class="content plugins">
	<div class="container cf">
		<h2>OpenBD Plugins</h2>
		<cfoutput>		
		<div class="quarter left">
		<h3>Wiki Plugin</h3>
		<a class="btn btnblue dload _pl-wiki" href="/download/#request.releaseversion#/openbdplugin-wiki.jar"><span>Download Latest</span></a>
		<a class="btn btnbeige dload _pn-wiki" href="/download/nightly/openbdplugin-wiki.jar"><span>Download Nightly</span></a>
		<a class="btn btngrey smload" href="/download/nightly/openbdplugin-wiki-src.zip"><span>Download Source Code</span></a>
		</div>
	
		<div class="quarter left">
		<h3>Message Plugin</h3>
		<a class="btn btnblue dload _pl-msg" href="/download/#request.releaseversion#/openbdplugin-message.jar"><span>Download Latest</span></a>
		<a class="btn btnbeige dload _pn-msg" href="/download/nightly/openbdplugin-message.jar"><span>Download Nightly</span></a>
		<a class="btn btngrey smload" href="/download/nightly/openbdplugin-messagejar-src.zip"><span>Download Source Code</span></a>
		</div>
		
		<div class="quarter left">
		<h3>cfLIB Plugin</h3>
		<a class="btn btnblue dload _pl-lib" href="/download/#request.releaseversion#/openbdplugin-cflib.jar"><span>Download Latest</span></a>
		<a class="btn btnbeige dload _pn-lib" href="/download/nightly/openbdplugin-cflib.jar"><span>Download Nightly</span></a>
		<a class="btn btngrey smload" href="/download/nightly/openbdplugin-cflib-src.zip"><span>Download Source Code</span></a>
		</div>

		<div class="quarter left">
		<h3>MS Exchange Plugin</h3>
		<a class="btn btnblue dload _pl-lib" href="/downloads/plugin/openbdplugin-exchange.jar"><span>Download Latest</span></a>
		<a class="btn btngrey smload" href="/downloads/plugin/openbdplugin-exchange-src.zip"><span>Download Source Code</span></a>
		</div>
		</cfoutput>

	</div><!--- .container --->
</div><!--- end content --->


<div id="openbdlocal" class="content blue local-jam">
	<div class="container cf">
		<h2>OpenBD Local</h2>
		
		<div class="twothirds left">
		<p>OpenBD Local is an exciting new way for you to ship your OpenBD #CFML Web Applications as quick, runnable desktop applications for Microsoft Windows.</p>
		<p>CFML can do more than just service web applications. With CFML you have a full language that can interact with the local computer it is running on. Examples include:</p>
		<ul>
			<li><span>File Explorer / Indexing system</span></li>
			<li><span>Utilities for file manipulation (advanced search and replace)</span></li>
			<li><span>MP3 Player and playlist editor</span></li>
		</ul>
		</div>
		
		<div class="third right">
		<a class="btn btnblue bigload _lr-local" href="http://files.aw20.net/openbdlocal.zip"><span>Download OpenBD Local</span></a>
		<a class="docu" href="/local/"><span>View documentation</span></a>
		</div>
		
	</div><!--- .container --->
</div><!--- end content --->


</div><!--- end wrapper --->

<cfinclude template="/inc/footer.cfm" />