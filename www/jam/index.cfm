<cfsilent>
	
<cfset request.page = {
		title 		: "OpenBD | OpenBD JAM Stack",
		thispage 	: "jam", 
		section 	: "main"
	}>
	
	<cfset u = new a.private.utils() />
	<cfset jamLatestUrl = "/download/#request.releaseversion#/OpenBDJAM.sh" />
	<cfset jamNightlyUrl = "/download/nightly/OpenBDJAM.sh" />
	
	<cfset jamLatestSize = u.getFileSize( jamLatestUrl ) />
	<cfset jamNightlySize = u.getFileSize( jamNightlyUrl ) />

</cfsilent><cfinclude template="/inc/header.cfm" />


<div class="wrapper">

<div class="content title">
	<div class="container cf">
		<h1>OpenBD JAM Stack</h1>	
	</div><!--- end container --->
</div><!--- end content --->

<div class="content">
	<div class="container cf">
		
			<div class="half left">
				<h2>OpenBD Jam</h2>
				<h3>The easiest way to get CFML running on Linux</h3>
				<p>The first full purpose Open Source CFML Linux stack, all pre-configured and ready for you to start using OpenBD CFML.</p>
				<ul>
					<li><span>Apache 2.4</span></li>
					<li><span>MySQL 5.5 (use the CFML datasource 'mysql' to access)</span></li>
					<li><span>Jetty 8.1</span></li>
					<li><span>JDK 1.7</span></li>
				</ul>
			</div>
			
			<div class="half left">
				<h3>Requirements / Download</h3>
				<p>This stack has been designed to be run on Linux 64bit systems, making it an ideal canidate for Amazon EC2, GoGrid and other cloud and hosting vendors. No prior software is required but the base Linux operating system. Everything you need to run is bundled in the OpenBDJam package.</p>
				<a class="btn btnblue dload" href="<cfoutput>#jamLatestUrl#</cfoutput>" title="Download OpenBDJAM.sh"><span>Download OpenBD Jam (<cfif( jamLatestSize != "0KB")><cfoutput>#jamLatestSize#</cfoutput><cfelse>194MB</cfif>)</span></a>
				<p>If you have MySQL or a web server already running on your machine, then please turn them off, or move them to non-standard ports.</p>		
			</div><!--- end full --->

	</div><!--- end container --->
</div><!--- end content --->				
				

<div class="content">
	<div class="container cf">
				
			<div class="full left">		
				<h2>Installation</h2>
				<p>Installation is a breeze. Simply untar, and run! Obtain the OpenBDJam distribution and then untar it into the /opt/ directory.</p>
<pre>[root@openbdjam]# wget <cfoutput>http://openbd.org/#jamLatestUrl#</cfoutput>
[root@openbdjam]# bash OpenBDJAM.sh</pre>
				<p>It will put itself into /opt/openbdjam/. This location is fixed, so please do not move it, otherwise it may not work. It will replace any installation that is already there, so beware.</p>
				<p>You must be 'root' to run this stack.</p>
			</div>
				
	</div><!--- end container --->
</div><!--- end content --->


<div class="content">
	<div class="container cf">
					
			<div class="full left">	
				<h2>Running OpenBDJam</h2>
				<p>Once you have untarred OpenBDJam into /opt/openbdjam/ you access all the components using the 'openbdjam' command line launcher.</p>
				<pre>[root@openbdjam]# ./openbdjam
  ___                 ___ ___     _
 / _ \ _ __  ___ _ _ | _ )   \ _ | |__ _ _ __
| (_) | '_ \/ -_) ' \| _ \ |) | || / _` | '  \
 \___/| .__/\___|_||_|___/___/ \__/\__,_|_|_|_|
      |_|

 Command Console  http://www.openbluedragon.org/openbdjam/

   start      - starts all; Apache, MySQL, Jetty and OpenBD
   stop       - shutsdown all the components
   status     - reports the status of each component
   mysql      - jump straight into the MySQL database console
   stopjetty  - Stops the Jetty process
   startjetty - Starts the Jetty process
   stopmysql  - Stops MySQL
   startmysql - Starts MYSQL
   clean      - Deletes all tmp/rotated logs from Jetty/OpenBD
   upgrade    - Upgrades OpenBD to the latest nightly build

   usage: ./openbdjam</pre>
		</div>
				
	</div><!--- end container --->
</div><!--- end content --->


<div class="content">
	<div class="container cf">
				
			<div class="full left">
				<h2>Starting/Stopping OpenBDJam</h2>
				<p>Starting the OpenBDJam stack couldn't be easier. Simply use the OpenBDJam launcher and type in the command 'start' and you should see it all come alive.</p>
				<pre>[root@openbdjam]# ./openbdjam start
  ___                 ___ ___     _
 / _ \ _ __  ___ _ _ | _ )   \ _ | |__ _ _ __
| (_) | '_ \/ -_) ' \| _ \ |) | || / _` | '  \
 \___/| .__/\___|_||_|___/___/ \__/\__,_|_|_|_|
      |_|

Starting MySQL5.1...
Starting Jetty7.1...
Starting Apache2.2...</pre>
				<p>Once started, point your browser to the IP of that machine and you are ready to work. To stop the complete stack you run <strong>'./openbdjam stop'</strong> and it will shutdown all the components.</p>
			</div>

	</div><!--- end container --->
</div><!--- end content --->

				
<div class="content">
	<div class="container cf">
					
			<div class="full left">	
				<h2>Installing your CFML application</h2>
				<p>The main web document root is /opt/openbd/webapp/. This directory should contain all your application code.</p>
				<p>The connection to the MySQL database has already been made and is available through the CFML datasource MYSQL, which maps to the embedded database "openbddatabase". You can access the console of MySQL by:</p>	
				<pre>[root@openbdjam]# ./openbdjam mysql</pre>
				<p>If you wish to import any data or tables into the MySQL database you can by using:</p>
				<pre>[root@openbdjam]# ./bin/mysql openbddatabase < /path/to/mysql/dump/file.sql</pre>
			</div>

	</div><!--- end container --->
</div><!--- end content --->				


<div class="content">
	<div class="container cf">
					
			<div class="full left">	
				<h2>Pre-configured CFML runtime</h2>
				<p>OpenBDJam has been designed for you the CFML developer with everything already setup and pre-configured for you. There is no configuration files you have to start editing, or additional steps to take.</p>
				<dl>
					<dt>MySQL Connection </dt>
					<dd>The connection to MySQL has already been setup and is available to your CFML app as the datasource "mysql" </dd>
					<dt>Outgoing Mail </dt>
					<dd>This has been setup to relay to 127.0.0.1 the localhost. With Linux, you will most likely have a sendmail or postfix runtime already installed that is already setup to relay email for localhost only </dd>
					<dt>WebServices </dt>
					<dd>Special consideration has been made for the availability of the tools to allow webservices to work from within your CFML app.</dd>					
				</dl>
			</div>

	</div><!--- end container --->
</div><!--- end content --->


<div class="content">
	<div class="container cf">			
				
			<div class="full left">
				<h2>Security Considerations</h2>
				<p>The stack has been designed with security in mind from the start. The only open port is from Apache with Port#80. Apache runs as the user 'nobody' and has had all cgi-bin and perl access removed. MySQL is listening only on the local (127.0.0.1) interface, and the user account that OpenBD utilises, is locked to that IP address only. Jetty is listening for requests on Port#8080 and will only accept connections from the local Apache web server.</p>
			</div>
				
	</div><!--- end container --->
</div><!--- end content --->


<div class="content">
	<div class="container cf">
					
			<div class="full left">	
				<h2>Upgrading OpenBDJam</h2>
				<p>Once you have installed your open source stack, it is very simple to upgrade the embedded OpenBD runtime to the latest and greatest from the nightly build distribution.</p>
				<p>This will only upgrade the JAR files of OpenBD; it will not touch or remove any configuration settings or web files you have installed to OpenBDJam. If the upgrade doesn't work for you, then all the pervious JAR files can be restored.</p>
				<pre>[root@openbdjam]# ./openbdjam upgrade</pre>
				<p>Should you have to roll back an upgrade, then you will find all your historical JAR files in the /opt/openbdjam/var/upgrade/previous/ directory. Simply copy the contents of this directory to /opt/openbdjam/webapp/WEB-INF/lib/ and you will be back in business.</p>
			</div>
			
</div><!--- end container --->
</div><!--- end content --->
				

<div class="content">
	<div class="container cf">
					
			<div class="full left">
				<h2>Customize</h2>
				<p>The configuration for Apache, MySQL and Jetty are all available for you to customize for your production environment. Apache has all the popular modules made available to you with this stack.</p>
				<p>Configuration files are found in: /opt/openbdjam/etc/</p>
			</div>

	</div><!--- end container --->
</div><!--- end content --->				


<div class="content">
	<div class="container cf">
					
			<div class="full left">	
				<h2>Inspiration</h2>
				<p>The OpenBDJam stack has been discussed for sometime now. Since it was easy for people to get started with PHP via the excellent <a href="http://www.apachefriends.org/en/xampp-linux.html" title="Apache Friends XAMPP">Apache Friends XAMPP</a> stack, or using the superb <a href="http://bitnami.com/">Bitnami</a> for the large collection of stacks on offer, we felt it should be that easy for people coming to CFML. They have been an inspiration to all on how easy and powerful open source software should be when it comes to ease of installation</p>
				<p>With the power of GPL, we can bundle OpenBD with other GPL software and make it available for everyone, to enjoy without the headaches of editing configuration files. We've repurposed the Apache web server from XAMPP as well as some script snippets, but built our own MySQL build to produce OpenBDJam.</p>
			</div>
								
	</div><!--- end container --->
</div><!--- end content --->
			

</div><!--- end wrapper --->

<cfinclude template="/inc/footer.cfm" />