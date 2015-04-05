<cfsilent>

	<!--- 
		$Id:$ 
	--->
	
<cfset request.page = {
		title : "OpenBD | Contact",
		thispage : "contact", 
		section : "main"
	}> 

<!--- email contact form validation and submission --->
<cfparam name="error_msg" 				default="">
<cfparam name="errormsg_name" 		default="">
<cfparam name="errormsg_message" 	default="">
<cfparam name="errormsg_email" 		default="">
<cfparam name="errormsg_robot" 		default="">
<cfparam name="success_msg"				default="">
	
	
<cfif (  !structisempty(form) ) >
	
	<cfif	( structkeyexists(form, "name") &&
				structkeyexists(form, "message") && 
				structkeyexists(form, "email")  && 
			 	structkeyexists(form, "robotest")  )>
		
		<cfset valid_name = false />
		<cfset valid_message = false />
		<cfset valid_email = false />
		<cfset valid_norobot = false />
	
		<cfif ( len(form.name) == 0 )>
			<cfset errormsg_name = "Please fill in your name" />
		<cfelse>
			<cfset valid_name = form.name />
		</cfif>
		
		<cfif ( len(form.message) == 0 )>
			<cfset errormsg_message = "Please leave a message for us" />
		<cfelse>
			<cfset valid_message = form.message />
		</cfif>
		
		<cfif ( len(form.email) == 0 )>
			<cfset errormsg_email = "Please fill in your email address so we can reply" />
		<cfelseif ( listContains(form.email, "@") == 0 )>
			<cfset errormsg_email = "Please make sure you've entered a valid email address" />
		<cfelse>
			<cfset valid_email = form.email />
		</cfif>
		
		<cfif ( len(form.robotest) != 0 )>
			<cfset errormsg_robot = "It seems like you are a robot, either that or you are able to see the hidden form field put there just for robots and filled it in, or your browser has accidentally added some text to it. Unfortunately, as a result your message has not been sent." />
		<cfelse>
			<cfset valid_norobot = true />
		</cfif>
		
		<cfif ( valid_name != false && valid_email != false && valid_message != false && valid_norobot == true )>
		
		<cfsavecontent variable="emailcontent">
			<cfoutput>
			<div class="your_message">
			<p><small>From:</small> <em>#valid_name#</em></p>
			<p><small>Email:</small> <em>#valid_email#</em></p>
			<p><small>Message:</small> <em>#valid_message#</em></p>
			</div>
			</cfoutput>
		</cfsavecontent>
		
		<!--- TODO: Get email server details form contact form --->
		<cfmail
			to="#request.email.to#"
			cc="#request.email.cc#"
			bcc="#request.email.bcc#"
			from="#valid_email#"
			failto="#request.email.failto#"
			subject="[openbd.org/contact] message from #valid_name#" 
			charset="utf-8" 
			
			server="#request.email.smtp#"
			username="#request.email.un#" password="#request.email.pw#">
				
			<cfmailpart type="html">
<cfoutput>
#emailcontent#
</cfoutput>
			</cfmailpart>

			<cfmailpart type="plain">
<cfoutput>
From: #valid_name#
Email: #valid_email#
Message: #valid_message#
</cfoutput>
			</cfmailpart>
				
		</cfmail>
		
		<cfsavecontent variable="success_msg">
			<div class="full">
				<h3>A member of the openBD team will be in touch soon.</h3>
				<p>Here's your message:</p>
				<cfoutput>#emailcontent#</cfoutput>
			</div>
		</cfsavecontent>
		
		<cfelseif ( valid_norobot == false )>
		
		<cfsavecontent variable="error_msg">
			<h3>Seems there's a spanner in the works.</h3>
			<cfoutput>
			<div class="full">
				<p>Please try sending your message again, or email us directly <a href="#urlencodedformat('mailto:info@aw20.co.uk?subject=[openbd.org/contact] Message')#">info@openbd.org</a></p>
				<cfif (len(errormsg_robot) != 0 )><small>Feedback: </small><p class="your_message">#errormsg_robot#</p></cfif>
			</div>
			</cfoutput>
		</cfsavecontent>
		
		</cfif>

	</cfif>

</cfif>
	
</cfsilent><cfinclude template="/inc/header.cfm" />

<div class="wrapper">

	<div class="content title">
		<div class="container cf">
			<h1>Contact Us</h1>		
		</div><!--- end container --->
	</div><!--- end content --->
	
	<div class="content">	
		<div class="container cf">
					
			<cfif ( len(success_msg) != 0 )>
				<h2>Thankyou!</h2>
				<cfoutput>#success_msg#</cfoutput>
			
			<cfelseif (len(error_msg) != 0 )>
				<h2>Oopsies!</h2>
				<cfoutput>#error_msg#</cfoutput>
			
			<cfelse>
			
			<h2>Want to get in touch?</h2>
			
			<div class="full">
				<p>If you would like to get in touch, please fill in the form below and a member of the openBD team will get back to you as soon as possible.</p>
			</div>
				
				<form method="post" action="/contact/" class="msg cf">
				<cfoutput>
					<div class="sixty left">
					<fieldset>
						<label for="form_message">Your message:</label>
						<textarea type="text" name="message" id="form_message"><cfif structkeyexists(form, "message")>#form.message#</cfif></textarea>
						<cfif len(errormsg_message) != 0><p class="errormsg">#errormsg_message#</p></cfif>
					</fieldset>
					</div>
	
					<div class="fourty left">
					<fieldset>
						<label for="form_name">Your name:</label>
						<input id="form_name" name="name" type="text" value="<cfif structkeyexists(form, "name")>#form.name#</cfif>"/>
						<cfif len(errormsg_name) != 0><p class="errormsg">#errormsg_name#</p></cfif>
					</fieldset>
	
					<fieldset>
						<label for="form_email">Your email:</label>
						<input id="form_email" name="email" type="text" value="<cfif structkeyexists(form, "email")>#form.email#</cfif>"/>
						<cfif len(errormsg_email) != 0><p class="errormsg">#errormsg_email#</p></cfif>
					</fieldset>
					
					<!--- 
					Honeypot spam test - adapted from http://devgrow.com/simple-php-honey-pot/
					The following field is for robots only, invisible to humans.
					If the field gets completed, the chances are it's a robot filling out the form
					so in that case we prevent the form from sending 
					--->
								
	      	<fieldset class="robotic" id="pot">
	         <label>If you're human leave this blank:</label>
	         <input name="robotest" type="text" id="robotest" class="robotest"/>
	       	</fieldset>
					
					<fieldset class="submit">
						<input type="submit" value="Send message"/>
						<a class="form_clear" href="/contact/" title="clear form information">clear</a>
					</fieldset>
					</div>
				</cfoutput>
				</form>
				
			</cfif>
			
		</div><!--- end container --->	
	</div><!--- end content --->
</div><!--- end wrapper --->

<cfinclude template="/inc/footer.cfm" />