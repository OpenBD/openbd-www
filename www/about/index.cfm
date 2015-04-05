<cfsilent>
	
<cfscript>
request.page = {
		title : "OpenBD | About Us",
		thispage : "about", 
		section : "main"
	};
</cfscript>

</cfsilent><cfinclude template="/inc/header.cfm" />


<div class="wrapper">

<div class="content title">
	<div class="container cf">
		<h1>About Us</h1>		
	</div><!--- end container --->
</div><!--- end content --->

<div class="content">
	<div class="container cf">
	
		<div class="full">
		<h2>OpenBD Philosophy</h2>
		<p>The group of people behind OpenBD believe strongly in the ideals of the Open Source movement. We believe that software that is made available under an open source model, should always remain under that model, and never be abused or incorporated into products that would result in the harm of the original project. </p>
		<p>To that end, we believe that any changes that anyone makes to the core engine should be contributed back to the community, for the benefit of the community as a whole. This is what the GPL license frames.</p>
		<p>We do not believe in doing things by half - therefore, all the features you come to expect from an Enterprise web language, such as OpenBD CFML Engine, are available from the start, including any plugin technologies we release. No hidden costs, no extra charge.</p>
		<p>We understand not all businesses are comfortable with the notion of GPL software and the impact it can have to their own offerings. To that end, from the 1.3 release of OpenBD, we are permitting you to embed/ship OpenBD as your core CFML engine, without your CFML applications themselves having to be released under GPL. This truly gives you the freedom to use the best language and CFML engine inside and outside of your organization.</p>
		<p>OpenBD CFML engine allows you to utilise the best language around to grow and make your business into a profitable substainable organization.</p>
		<p>You have no excuse not to try the wonders that CFML can offer and how quickly and easily it is to get up and running.</p>
		</div>
		
	</div><!--- end container --->
</div><!--- end content --->


<div class="content blue">
	<div class="container cf">
	
		<div class="sixty left">
			<h2>Meet the team</h2>
			<p>The steering committee decides the direction of Open BlueDragon, making sure all decisions, patches, features are for the good of the community.</p>
			<p>These gentlemen need no introductions. With well known names in the CFML community we have a representative from all walks of our industry. From high performance, to massively scalable, to hosting, to standards, to community leaders, to tools developers, to language experts, we have it all here within this select group.</p>
		</div>
			
		<div class="meet_team fourty left cf">
			<a href="#peterfarrell" data-toggle="modal"><img src="/a/img/peterfarrell.jpg" alt="Peter Farrell" title="Peter Farrell"/></a>
			<a href="#adamhaskell" data-toggle="modal"><img src="/a/img/adamhaskell.jpg" alt="Adam Haskell" title="Adam Haskell"/></a>
			<a href="#nitai" data-toggle="modal"><img src="/a/img/nitai.jpg" alt="Nitai" title="Nitai"/></a>
			<a href="#jordanmichaels" data-toggle="modal"><img src="/a/img/jordanmichaels.jpg" alt="Jordan Michaels" title="Jordan Michaels"/></a>
			<a href="#alexskinner" data-toggle="modal"><img src="/a/img/alexskinner.jpg" alt="Alex Skinner" title="Alex Skinner"/></a>
			<a href="#alanwilliamson" data-toggle="modal"><img src="/a/img/alanwilliamson_head.jpg" alt="Alan Williamson" title="Alan Williamson"/></a>
			<a href="#mattwoodward" data-toggle="modal"><img src="/a/img/mattwoodward.jpg" alt="Matt Woodward" title="Matt Woodward"/></a>
			<a href="#andywu" data-toggle="modal"><img src="/a/img/andywu.jpg" alt="Andy Wu" title="Andy Wu"/></a>
		</div>
		
	</div><!--- end container --->
</div><!--- end content --->


<div class="content">
	<div class="container cf">
			
		<div class="third left">
		<h2>Project History</h2>
		<p class="history cf"><a href="/history/" title=""><img src="/a/img/alanwilliamson_head.jpg" alt="Alan Williamson" title="Alan Williamson"/><br />Read an interview with the original creator Alan Williamson about the projects origins.</a></p>
		</div>
		
		<div class="twothirds left">
		<cfinclude template="/inc/opensource.cfm">
		</div>
		
	</div><!--- end container --->
</div><!--- end content --->


<div class="content blue">
	<div class="container cf">		
			<div class="full">
			<h2>Frequently asked questions</h2>
			<h5>How much does OpenBD cost?</h5>
			<p>$0.00 dollars/euros/pounds/yen. Zero. There is no cost for you to download, use, develop, deploy and ship your applications with.</p>
			
			<h5>Do I have to release my CFML/CFC application as GPL to use OpenBD?</h5>
			<p>From the 1.3 Release of OpenBD you will not have to do that. You can ship your application in whatever license you wish. Even charge for it!</p>
			
			<h5>Is OpenBD changing license then?</h5>
			<p>No. The core engine and all plugins are still under the GPL license. Any chances you make to the core engine, or any of the plugins, must be released as an open source GPL change. We want the community to benefit from any innovation or bug fixes you make. We believe the GPL license is the only pure open source license.</p>
			
			<h5>Can I sell OpenBD?</h5>
			<p>No. You cannot sell OpenBD as it is not yours to sell. You may sell installation or consultancy services for OpenBD. You may even charge people shipping costs if you wish to burn OpenBD onto DVD or USB stick. But you are not permitted to sell OpenBD.</p>
			
			<h5>Can I sell my applications deployed on OpenBD?</h5>
			<p>Yes! Of course and we encourage you to do so. Start selling those $49 applications, or $49,999 installations. There is no license cost to use as many OpenBD instances as you require, both in and out of the cloud (such as Amazon, GoGrid, Rackspace installations).</p>
			
			<h5>Okay, where&rsquo;s the catch? What features are you not shipping?</h5>
			<p>There is no catch. All software we develop for OpenBD is available to you in the 6 month release, or as and when they are developed using the nightly release branch. We believe in the power CFML has to offer and we want to get it into the hands of as many people as possible.</p>
			</div>
			
	</div><!--- end container --->
</div><!--- end content --->


</div><!--- end wrapper --->

<cfinclude template="/inc/team.cfm" />


<cfinclude template="/inc/footer.cfm" />