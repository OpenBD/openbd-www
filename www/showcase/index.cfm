<cfsilent>

<cfset request.page = {
		title : "OpenBD | Showcase",
		thispage : "showcase", 
		section : "main"
	}>

</cfsilent><cfinclude template="/inc/header.cfm" />

<div class="wrapper">

<div class="content title">
	<div class="container cf">
		<h1>Showcase</h1>
	</div><!--- end container --->
</div><!--- end content --->


<div class="content">
	<div class="container cf">
			
		<div class="third left">
			<img src="/a/img/desktop_server.png" alt="OpenBD Desktop" />
		</div>
		
		<div class="twothirds right">
			<h2>OpenBD Desktop Server</h2>
			<p>Develop, debug and deploy your CFML applications from one cross-platform application.</p>
			<p>No installation, unzip and run, and you will be creating brand new web applications within seconds.</p>
			<ul>
				<li><span>Everything you need: Embedded Java/Jetty ready to run</span></li>
				<li><span>Easily create new apps from scratch without preparing any web folder</span></li>
				<li><span>Ships with the latest OpenBD runtime already to run</span></li>
				<li><span>Customize the port, context, directory and logging</span></li>
				<li><span>Console logging for easy debugging of your CFML application</span></li>
			</ul>
		</div>
		
	</div><!--- end container --->
</div><!--- end content --->

<div class="content blue">
	<div class="container cf">
			
		<div class="third right">
			<img src="/a/img/bug_target.png" alt="CFML Bug" />
		</div>
		
		<div class="twothirds left">
			<h2>CFMLBug</h2>
			<p>Developing and debugging your CFML applications just got a whole lot easier with our easy, drop-in, interactive debugger</p>
			<p>It's easy to set break points, step-through code, variable inspection and a whole lot more.</p>
			<ul>
				<li><span>Multiple session tracking</span></li>
				<li><span>Set break points in any CFML page, custom tag or CFC by simply clicking on any line</span></li>
				<li><span>Conditionally Break on Exceptions</span></li>
				<li><span>Step through CFML tags and statements within CFSCRIPT blocks</span></li>
				<li><span>Step over files</span></li>
				<li><span>Run to end</span></li>
				<li><span>Run to break points</span></li>
				<li><span>Fully Variable Inspection</span></li>
			</ul>

		</div>

	</div><!--- end container --->
</div><!--- end content --->

<div class="content">
	<div class="container cf">
		
		<div class="third left">
			<img src="/a/img/profiler.png" alt="OpenBD Profiler" />
		</div>
		
		<div class="twothirds right">
			<h2>Web Request Dashboard</h2>
			<p>Discover what requests are running on your OpenBD server in real time with the request dashboard.</p>
			<p>Quickly see the amount of time each request is taking and what it is doing, see in real time the precise tag
			that the request is running.  If stuck in a query, inspect the SQL statement.</p>
			<p>See uptime, bytes sent, total requests, memory usage, cache hits.</p>
		</div>

	</div><!--- end container --->
</div><!--- end content --->



</div><!--- end wrapper --->

<cfinclude template="/inc/footer.cfm" />