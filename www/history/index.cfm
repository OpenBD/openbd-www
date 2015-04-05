<cfsilent>
	
<cfset request.page = {
		title 		: "OpenBD | OpenBD Local",
		thispage 	: "local", 
		section 	: "main"
	}>

</cfsilent><cfinclude template="/inc/header.cfm" />

<div class="wrapper">

<div class="content title">
	<div class="container cf">
		<h1>Project History</h1>		
	</div><!--- end container --->
</div><!--- end content --->


<div class="content first">
	<div class="container cf">
	
		<div class="full left">
			<h2>An interview with the original creator Alan Williamson</h2>
			
			<h5>What would you say is your biggest contribution to the CFML community?</h5>
			<p>The first ever alternative CFML engine, BlueDragon.</p>
			
			<h5>How did it come about?</h5>
			<p>Many many years ago, I was involved in the steering of the Java Servlet API back in the days with James Duncan Davidson and Jason Hunter where running things (pre JCP days). Being Europe's only Java Servlet expert at the time, SUN would send me to deliver talks and evangelise the technology. I wasn't a SUN employee at the time, and since SUN didn't really have any full time evangelists like they do nowadays, noted external people were tapped on the shoulder to help.</p>
			<p>I was hooked up with the United Nations in Rome, where they had a ton of traditional CGI scripts pushing huge volumes of data to the web. They had pretty much one CGI script per page, that would detail tabular or graphical statistical data collected from inside the agency. The number was vast. It was a classic problem the Java Servlet technology was looking to solve. </p>
			<p>I started by converting their CGI to Java Servlets, one page at a time, and before soon a pattern emerged. All the pages were pretty much identical, except different SQL and the odd report different. I then hit upon the idea of coding up a very simple template engine that would allow me to have a single Servlet that would load in templates, with SQL embedded in the page. To make life easier for myself, in terms of readability, I opted for <code>{{{ ... }}}</code> as my delimitor. So a quick SQL example looked like <code>{{{SQL:SELECT[SELECT * from blah]}}}</code>. I then outputed the result <code>{{{SQL:ROWS}}} -- {{{/SQL:ROWS}}}</code>, etc. Sounds crazy, but at the time, the notion of templates was quite rare. </p>
			<p>I documented this approach in a book I was writing at the time, and Chapter5 (if memory serves me right) was the first ever dbServlet, or tagServlet as it later became.</p>
			
			<h5>When did you make the leap to CFML?</h5>
			<p>Aah, now this is what I call my "flux capacitor" moment. Recall, from <a href="http://www.imdb.com/title/tt0088763/" title="Back To The Future listing on imdb.com">Back To The Future</a>, Doc Brown invented time travel when he fell off the toilet and the vision of the flux capacitor came to him. For me, it wasn't quite as dramatic as falling off the toilet, but nonetheless life changing.</p>
			<p>I had written a few articles for a new magazine, Java Developers Journal, from <a href="http://www.sys-con.com/" title="sys-con.com">SYS-CON</a>. I was travelling back to the UK, from Toronto via Newark. Fuat emailed me and asked me to pop in to say hello and meet the crew. Since my lay over was overnight, it wasn't a problem and I welcomed the distraction. So I popped up to see them and spent a few hours talking with Fuat and his company. Time to head home. I needed to pee! Nipping into the toilet, I noticed a stack of their magazines on the top of toilet, to which I thought, wonderful, something to read! I settled down, and noticed a 4 page pullout. This pullout was titled "ColdFusion Journal" and it was SYS-CON's way of testing the market, slipping it into an established magazine to see what interest there was. </p>
			<p>Flicking through it, I noticed the CFQUERY tag and boom, my flux-capacitor moment had occurred. It was very close to what I was doing with my curly brackets and the change to my parser to support the angular brackets wasn't going to take a huge effort. So, the 30 minutes of battery life my portable afforded me in the old days (and that was fully charged!) I converted my dbServlet to tagServlet and the genesis for BlueDragon was born, mid-Atlantic.</p>
		
			<h5>How did New Atlanta get involved?</h5>
			<p>At the time the whole notion of open source wasn't really on the table. The notion of free software was also somewhat foreign. So for me, tagServlet was purely an internal tool that allowed me to deliver consultancy much faster. The first big project for tagServlet was actually for Nortel. There was a chap in there that took to tagServlet and he encouraged me to round the features of it to support the tags that Allaire was doing. At the time, Allaire couldn't deliver to AIX, and since I was Java, I was able to support the Nortel environment.</p>
			<p>So skip forward a year or two, and tagServlet was rounded out quite extensively but still used as our own internal consultancy tool. At this time, I was an editor at Java Developers Journal and was sent to JavaOne to do some interviews, and I was also involved in driving a BOF. The Servlet world was small in those days and I had known Vince from the Servlet mailing list, but had never met him face-2-face. I recall going up to the New Atlanta stand at the time and introducing myself and started talking to Vince and Dan. I believe I was also scheduled to interview Vince for SYS-CON Radio (SYS-CON did podcasts before it was called podcasts!).</p>
			<p>We got talking and I mentioned tagServlet and what I was doing with it. At the time I had no plans for wider adoption but through our conversation it was clear this was a route to take. So fast forward 6 months, a visit to Scotland for Vince/Dan, we inked a deal to have New Atlanta exclusively license tagServlet in a partnership to take it to market.</p>
			<p>We've never looked back.</p>
			
			<h5>And the name, BlueDragon?</h5>
			<p>Originally we called it tagFusion, but the Allaire boys got a little jumpy at that one. So we changed it. BlueDragon was a joint naming effort. At the time, our company colour, n-ary, was bright blue, and I always liked that. One of the directors of n-ary was from Wales, and he contributed the 'Dragon' part. I wish I could recall some of the other names, but we played on the "tag" word a lot. A conference room in Dumfries, Scotland, around the 2001 mark, the name 'BlueDragon' was birthed. Originally only ever intended to be an internal project name, but it kinda stuck and when Dan presented us with a logo one of their NA guys had played with, we instantly fell in love.</p>
			
			<h5>Why Open Source it now? </h5>
			<p>The whole idea of open sourcing the engine has always been kicked about. Vince himself will tell you, he was dead against it at the start, and to be honest, I wasn't sure I was completely for it either, merely presenting the discussion. But as the computer world changed, and we, as an industry, gained more experience with the value proposition of open source, it was clear there was a couple of ingredients for successful open source project. An established proven project, and a ready community. BlueDragon, we feel, was never ready for open source until now. The timing is perfect.</p>
			
			<h5>Is New Atlanta really not involved with the Steering Committee?</h5>
			<p>New Atlanta has done sterling work on BlueDragon. If it wasn't for NA, we wouldn't have the quality of engine we have today. For example NA drove and lead the .NET version. BlueDragon was designed to generate revenue and we have always been customer driven. The customers of BlueDragon determined the direction of the engine, not the community. I have always taken a back seat role in terms of the public facing BlueDragon. I have lurked around the support lists, but the project manager was Vince.</p>
			<p>As we move to open source though, it was clear that this was a different animal and model from what New Atlanta is traditionally experienced with. We decided that Vince would concentrate on the commercial side, where his experience is second to none, and I would concentrate my efforts on the open source community side <a href="http://alan.blog-city.com/about.htm" title="alan.blog-city.com/about.htm">where my experience is deep</a>, having worked on a number of open source projects and with the open source support company <a href="http://www.spikesource.com/" title="spikesource.com">SpikeSource</a>. I am the sole representative for NA on the Steering Committee, were I will weigh up the commercial drivers against the community directives.</p>
			<p>Or to put it another way, I will be ensuring we don't create a two headed animal that serves neither party any good since NA will still be funding a lot of engineering, in terms of new development and bug fixes to the community branch.</p>
			
			<h5>What are you hoping to bring to the Steering Committee? </h5>
			<p>I will be bringing the wisdom and experience of BlueDragon to the committee. Personally, I am more involved in the Java world than I am in the CFML world. Think of me like a "Sean Corfield" but for Java. So I bring this community perspective including contacts to the project with a view to reaching out into a new world.</p>
			
			<h5>What one thing would you like to change about CFML? </h5>
			<p>There are a number of 'features' that are in the language that I am sure was never designed to be there. I can imagine the engineers saying "oh. it does that?" and for us to be compatiable we have had to follow them, for better or worse. But for me the one thing I would love to change, is the local scoping of variables inside functions. The requirement to prefix variables with "var" is just asking for trouble and goes against the vast majority of popular languages.</p>
			
			<p>I would like to thank the Steering Committee for their contribution and helping us move BlueDragon into a whole new world and community. I am very proud to have each and every one of them and feel very confident they can take it to the places it needs to go.</p>
			
		</div> <!--- end full --->
		
	</div><!--- end container --->
</div><!--- end content --->


<div class="content first">
	<div class="container cf">
		
		<div class="full history left">
			<h2>Details</h2>
			<a href="#alanwilliamson" data-toggle="modal"><img src="/a/img/alanwilliamson_head.jpg" alt="Alan Williamson" title="Alan Williamson"/></a>
			<p>originally published in 2008 @ <a href="http://alan.blog-city.com/interview_alanwilliamson.htm" title="Interview with Alan Williamson">http://alan.blog-city.com/interview_alanwilliamson.htm</a></p>
		</div> <!--- end full --->
		
		
	</div><!--- end container --->
</div><!--- end content --->

</div><!--- end wrapper --->

<cfinclude template="/inc/team.cfm" />

<cfinclude template="/inc/footer.cfm" />