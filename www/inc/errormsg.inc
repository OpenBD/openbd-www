<cfsilent>

	<!--- 
		$Id:$ 
	--->
	
	<cfparam name="errormsgtitle" default="Oops, something went wrong ..." />
	<cfparam name="errormsgsub" default="That's all we know" />
	
</cfsilent>
<div class="content title">
	<div class="container cf">
		<h1><cfoutput>#errormsgtitle#</cfoutput></h1>
	</div><!--- end container --->
</div><!--- end content --->

<div class="content">
	<div class="container cf">
	
		<div class="full">
			<h2><cfoutput>#errormsgsub#</cfoutput></h2>
				<p>It looks like you have tried to access something that is either not here or has been moved.</p>
				<p>We updated the site recently, and some stuff has moved, we tried to updated all the addresses for the old stuff to point to the new stuff, 
					but it looks like we might have missed one.</p>
				<p>Why not drop us an email with the details on what you where trying to find using the form on the <a href="/contact/" title="Contact Page">contact</a> page, 
				and we'll do out best to point you in the right direction, and if need be update our site with the missing information.</p>
		</div>
		
	</div><!--- end container --->
</div><!--- end content --->