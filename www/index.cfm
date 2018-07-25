<cfsilent>

<cfset request.page = {
		title : "OpenBD | Home",
		thispage : "home",
		section : "main"
	}>

</cfsilent><cfinclude template="/inc/header.cfm" />

<div class="feature">
	<div class="container cf">
		<h1><img src="/a/img/home-headline.png" alt="OpenBD Java CFML Engine" title="OpenBD Java CFML Engine"/></h1>
		<p>OpenBD is the worlds first truly <strong class="ylw">open source</strong> and <strong class="grn">free</strong> GPL Java CFML runtime.</p>

		<a class="helpme cf" href="/choose/"><em>First time here?</em> <span>Help me choose</span></a>
		<a class="opensource cf" href="/downloads/"><em>No Cost! It's Free</em> <span>Download now</span></a>
	</div>
</div>

<div class="wrapper">

<div class="flex-container">
	<div class="flexslider">
		<ul class="container slides">

			<li>
				<div class="flex-image">
					<img src="/a/img/cfml_manual.png" />
				</div>
				<div class="flex-info">
				<h2>OpenBD Chrome Extension</h2>
				<p>Now Available: A Google Chrome Extension for quick access to OpenBD tags and functions</p>
				<a class="cf" href="https://chrome.google.com/webstore/detail/openbd/khcnhdehhgbmkncjefpifbfekmkhbgnf"><em>Download the Chrome Extension</em> <span>Visit Web Store</span></a>
				</div>
			</li>

			<li>
				<div class="flex-image">
					<div id="gears">
						<img src="/a/img/big-gear.png" id="big-gear"/>
						<img src="/a/img/small-gear.png" id="small-gear"/>
					</div>
				</div>
				<div class="flex-info">
				<h2>OpenBD Desktop Server</h2>
				<p>Develop, debug and deploy your CFML applications from one cross-platform application. No installation, unzip and run, and you will be creating brand new web apps within seconds.</p>
				<a class="cf" href="/showcase/"><em>The quickest way to develop CFML apps!</em> <span>Find out more</span></a>
				</div>
			</li>

			<li>
				<div class="flex-image">
					<div id="cfmlbug">
						<img src="/a/img/abug.png" id="bug"/>
						<img src="/a/img/sight.png" id="sight"/>
					</div>
				</div>
				<div class="flex-info">
				<h2>CFMLBug</h2>
				<p>Developing and debugging your CFML applications just got a whole lot easier with our easy, drop-in, interactive debugger allowing you to easily set break points, step-through code, variable inspection and a whole lot more.</p>
				<a class="cf orange" href="/showcase/"><em>Want to get started now?</em> <span>Find out more</span></a>
				</div>
			</li>

			<li>
				<div class="flex-image">
					<div id="graph">
						<img src="/a/img/openbd_profiler.png"/>
						<ul>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</div>
				</div>
				<div class="flex-info">
				<h2>Request Dashboard</h2>
				<p>See in realtime the requests that are hitting your OpenBD server and what precisely they are doing.</p>
				<a class="cf purple" href="/showcase/"><em>Who is hitting my server?</em> <span>Find out more</span></a>
				</div>
			</li>

		</ul><!--- end container slides --->
	</div><!--- end flexslider --->
</div><!--- end flex-container --->


<div class="content blue">
	<div class="container cf">

		<h2>Integrate</h2>

		<div class="third left">
			<h3>Amazon</h3>
			<a href="http://www.openbd.org/manual/?/amazon_s3" title="OpenBD Amazon Integration"><img src="/a/img/amazon.png" alt="OpenBD Amazon Functions"></a>
			<p>OpenBD makes light work of Intergrating your CMFL apps with many of Amazon AWS, S3, SimpleDB and SQS.</p>
		</div>

		<div class="third left">
			<h3>MongoDB</h3>
			<a href="http://www.openbd.org/manual/?/database_mongodb" title="OpenBD Mongo Integration"><img src="/a/img/mongo.png" alt="OpenBD Mongo Functions" /></a>
			<p>OpenBD has MongoDB functions built in. Start using a scalable, high performance, open-source NoSQL database.</p>
		</div>

		<div class="third left">
			<h3>SalesForce</h3>
			<a href="http://www.openbd.org/manual/?/plugin_salesforce" title="OpenBD Salesforce Plugin"><img src="/a/img/salesforce.png" alt="OpenBD Salesforce Plugin" /></a>
			<p>Integration with salesforce has never been easier with OpenBD.</p>
		</div>

		<div class="third left">
			<h3>Manual</h3>
			<a href="http://www.openbd.org/manual/" title="OpenBD Manual"><img src="/a/img/manual.png" alt="OpenBD Manual" /></a>
			<p>CFML is primarily a tag based language. But what does that mean exactly? Visit the official OpenBD Manual.</p>
		</div>

		<div class="third left">
			<h3>Professional Services</h3>
			<a href="/services/" alt="Professional Services for OpenBD"><img src="/a/img/services.png" alt="Professional Services for OpenBD" /></a>
			<p>Professional support, both incident based and policy based, then aw2.0 Ltd. can assist with your requirements.</p>
		</div>

		<div class="third left">
			<h3>Downloads</h3>
			<a href="/downloads/" title="OpenBD Downloads"><img src="/a/img/downloads_icon.png" alt="OpenBD Downloads" /></a>
			<p>OpenBD is available to download and use in a wide variety of different formats for multiple platforms.</p>
		</div>

	</div><!--- end container --->
</div><!--- end content --->


<div class="social">

	<div class="container cf">

		<h2>Connect</h2>

		<div class="third left">
		<h3>Twitter</h3>
		<a href="http://twitter.com/openbluedragon"><img src="/a/img/twitter.png" alt=""></a>
		<p>Join us on twitter and track the project updates.</p>
		</div>

		<div class="third left">
		<h3>Mailing List</h3>
		<a href="http://groups.google.com/group/openbluedragon/"><img src="/a/img/mailinglist.png" alt=""></a>
		<p>Have a question? Join fellow developers on the mailing list.</p>
		</div>

		<div class="third left">
		<h3>About Us</h3>
		<a href="/about/"><img src="/a/img/aboutus.png" alt=""></a>
		<p>Find out more about us, why we do this etc&hellip;</p>
		</div>

		<div class="break"></div>

		<div class="third left">
		<cfinclude template="/inc/latest-discussion.cfm" />
		</div>

		<div class="twothirds left">
		<cfinclude template="/inc/open-issues.cfm" />
		</div>

	</div><!--- end container --->
</div><!--- end social --->


</div><!--- end wrapper --->

<cfinclude template="/inc/footer.cfm" />
