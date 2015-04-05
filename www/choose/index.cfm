<cfsilent>
	
<cfscript>
request.page = {
		title : "OpenBD | Help me choose",
		thispage : "helpme", 
		section : "main"
	};
</cfscript>


</cfsilent><cfinclude template="/inc/header.cfm" />

<!--- Make Release version varibale accessable in JavaScript --->
<cfoutput><script>
	releaseversion = '#request.releaseversion#';
</script></cfoutput>


<div class="wrapper">

<div class="content title">
	<div class="container cf">
		<h1>Help me choose</h1>	
	</div><!--- end container --->
</div><!--- end content --->


<div id="latest" class="content">
	
		<div id="q1" class="choose cf" data-question="q1">
			<h2>Step 1</h2>
			<h3>Would you like to&hellip;</h3>	
			<h3 class="question" data-answer="local"><span><img src="/a/img/choose-desktop.png"/><br />Develop locally on your desktop</span></h3>
			<h3 class="question" data-answer="server"><span><img src="/a/img/choose-server.png"/><br />Deploy on a server</span></h3>
			<h3 class="question" data-answer="update"><span><img src="/a/img/choose-update.png"/><br />Update an existing J2EE server (e.g. tomcat, jetty)?</span></h3>
		</div>

		
		<div id="q2" class="choose blue hide cf" data-question="q2">
			<h2>Step 2</h2>
			<h3>What operating system will you be running on?</h3>	
			<h3 class="question" data-answer="linux"><span><img src="/a/img/choose-linux.png"/><br />Linux</span></h3>
			<h3 class="question" data-answer="windows"><span><img src="/a/img/choose-windows.png"/><br />Windows</span></h3>
			<h3 class="question" data-answer="mac"><span><img src="/a/img/choose-mac.png"/><br />Mac</span></h3>
		</div>
		
		
		<div id="q2a" class="choose blue hide cf" data-question="q2">
			<h2>Step 2</h2>
			<h3>All you need is the WAR. Would you like a bleeding edge night build or the latest release?</h3>	
			<h3 class="question two" data-answer="latest"><span><img src="/a/img/choose-latest.png"/><br />Latest release</span></h3>		
			<h3 class="question two" data-answer="nightly"><span><img src="/a/img/choose-nightly.png"/><br />Nightly build</span></h3>
		</div>
		
		
		<div id="q3" class="choose hide cf" data-question="q3">
			<h2>Step 3</h2>
			<h3>Would you like a user friendly GUI to help with deploying?</h3>		
			<h3 class="question two" data-answer="gui"><span><img src="/a/img/choose-yes.png"/><br />Yes please!</span></h3>	
			<h3 class="question two" data-answer="nogui"><span><img src="/a/img/choose-no.png"/><br />No thanks.</span></h3>	
		</div>
		
		
		<div id="q3a" class="choose hide cf" data-question="q3">
			<h2>Step 3</h2>
			<h3>Would you like the full JAM package which includes Apache and mySQL distributions in the download?</h3>	
			<h3 class="question two" data-answer="jam"><span><img src="/a/img/choose-yes.png"/><br />Yes please!</span></h3>	
			<h3 class="question two" data-answer="nojam"><span><img src="/a/img/choose-no.png"/><br />No thanks.</span></h3>
		</div>
		
		
		<div id="q4" class="choose blue hide cf" data-question="q4">
			<h2>Step 4</h2>
			<h3>Would you like the latest stable release or a bleeding edge nightly build?</h3>	
			<h3 class="question two" data-answer="latest"><span><img src="/a/img/choose-latest.png"/><br />Latest release</span></h3>
			<h3 class="question two" data-answer="nightly"><span><img src="/a/img/choose-nightly.png"/><br />Nightly build</span></h3>
		</div>

			
		<div id="download" class="answer hide cf">
			<div class="full">
				<h2>Based on your selection we suggest</h2>
				<h3>OpenBD Desktop Nightly Build</h3>

				<a class="btn btnblue bigload" href=""><span>Download Now! <small>[32mb zip file]</small></span></a>
				<!--- some instructions could go here 
				<h4>Some instructions</h4>
				<ul>
					<li>Click this thing to download</li>
					<li>Copy that there folder to that other one</li>
					<li>Change something somewhere</li>
					<li>Begin to enjoy OpenBD</li>
				</ul>
				--->
			</div>
		</div>
	
</div><!--- end content --->

</div><!--- end wrapper --->

<cfinclude template="/inc/footer.cfm" />