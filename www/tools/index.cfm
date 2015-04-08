<cfsilent>
	
<cfset request.page = {
		title 		: "OpenBD | Tools",
		thispage 	: "tools", 
		section 	: "main"
	}>

</cfsilent><cfinclude template="/inc/header.cfm" />

<div class="wrapper">


<div class="content title">
	<div class="container cf">
		<h1>Tools</h1>		
	</div><!--- end container --->
</div><!--- end content --->


<div class="content">
	<div class="container cf">
		
		<div class="full left">
			<h2>Sublime Plugin</h2>
			<p>
				A Sublime 2/3 plugin for generating JavaDoc/YUIDoc style comments in CFML (Both tags and script)
			</p>
				Simple and straight forward, you simply install the plugin and set a shortcut key.
			<p>
				Running it will create JavaDoc/YUIDoc style comments based off of your CFML code.
			</p>
				While it automatically pulls in information about the code, it's not quite psychic yet, so to add comments to the header, simply use the hint or description!
			<p>
				So for example:
				<pre>
public array function myAwesomeFunction( required string awesome, maybeAwesome = "totally" ) hint="My text here" {
    return arguments.awesome;
}
				</pre>
				becomes this:<br>
				<br>
				<pre>
/**
  * My text here
  *
  * @method myAwesomeFunction
  * @public
  * @param {string} awesome (required) 
  * @param {any} [maybeAwesome = "totally" ]  
  * @return {array}
  */

public array function myAwesomeFunction( required string awesome, maybeAwesome = "totally") hint="My text here" {
    return arguments.awesome;
}
				</pre>
			</p>
			<p>
				This is the first release, if you find bugs please let me know.
			</p>
			<p>
				You can download it on <a href="https://github.com/MFernstrom/cfmldocplugin">GitHub</a> or through the Sublime package manager under the name <strong>CFMLDocPlugin</strong><br>
				Author: <a href="http://www.marcusfernstrom.com/">Marcus Fernstrom</a>
			</p>
		</div>

	</div><!--- end container --->
</div><!--- end content --->


<div class="content">
	<div class="container cf">
		
		<div class="full left">
			<h2>Documentation Generation</h2>
			<p>
				This is a program designed for generating documentation from CFML source code.
			</p>
			<p>
				It relies on YuiDoc/JavaDoc style comment blocks, created manually or by using the plugin above.
			</p>
			<p>
				Simply point it to the root of a project, a target folder, specify what files to process (Default is .cfc and .cfm) and hit Go, after a few seconds you should have documentation.
			</p>
			<p>
				You can find both <a href="https://github.com/MFernstrom/cfmldoc">source</a> and <a href="https://github.com/MFernstrom/cfmldoc/tree/master/bin"></a> on GitHub, right now there is only a binary for Windows, Linux will be available soon.
			</p>
			<img src="cfdocScreen.png" /><br>
			<p>
				This is the first release, if you find bugs please let me know.<br>
				Author: <a href="http://www.marcusfernstrom.com/">Marcus Fernstrom</a>
			</p>
		</div>

	</div><!--- end container --->
</div><!--- end content --->



<div class="content">
	<div class="container cf">
		
		<div class="full left">
			<h2>Commandline OpenBD</h2>
			<p>
				You can now run OpenBD directly from the commandline, you can run functions/tags, cfml files, or run in interpreter mode.
			</p>
			<p>
				You can install manually or using an installer.<br>
			</p>
			<p>
				<strong>Manually:</strong> Download the <a href="">source</a> from GitHub, unzip the .cfm file into a local web server, and drop the .exe and config.ini wherever you want (Keep the .ini and .exe in the same folder), add the .exe to your PATH and edit the config.ini file to point to your webserver.
			</p>
			<p>
				<strong>Installer:</strong> An installer is in the works.
			</p>
			<p>
				That's it, you should now be able to run OpenBD from the commandline.
			</p>
			<p>
				Example:
				<pre>
C:\>openbd -v

OpenBD version 3.1
CLI bridge version 0.1


C:\> openbd now()
{ts '2015-04-06 10:49:21'}


C:\>openbd -f test.cfm
This is a regular cfml file.
Current timestamp: {ts '2015-04-06 10:51:08'}


C:\>openbd -i
Starting interpreter in single-line mode, type -h for help

>> #Hash('OpenBD is awesome')#
5E1DA9EA3980D7BBAC7572C16D3BC083

>> -ml
Multi-line mode active, type -run to run commands

>> #now()#
>> #Hash('OpenBD is awesome')#
>> -run
{ts '2015-04-06 10:53:23'}
5E1DA9EA3980D7BBAC7572C16D3BC083

>> -q
Exiting interpreter mode
				</pre>
			</p>
			<p>
				This is the first release of the CLI bridge, if you find any bugs, please let me know<br>
				Author: <a href="http://www.marcusfernstrom.com/">Marcus Fernstrom</a>
			</p>
		</div>

	</div><!--- end container --->
</div><!--- end content --->



<div class="content">
	<div class="container cf">
		
		<div class="full left">
			<h2>Suggestions</h2>
			<p>
				While there are plenty of useful projects written in CFML, the idea here is to create a list if auxiliary tools, used on their own or in conjunction with other tools, such as the Sublime IDE, but not reliant on a web server.
			</p>
			<p>
				If you have suggestions for more tools you think should be added, please contact <a href="mailto:marcus@marcusfernstrom.com">Marcus Fernstrom</a>.
			</p>
		</div>

	</div><!--- end container --->
</div><!--- end content --->



<!--- <div class="content">
	<div class="container cf">
	
		<div class="full left">	
			<h2>Pixl8</h2>
			<a href="http://pixl8.co.uk" title="pixl8.co.uk">
				<img class="left" src="/a/img/logo_pixl8_84px.png" alt="Pixl8 logo" title="pixl8.co.uk" />
			</a>
			<p><a href="http://pixl8.co.uk" title="pixl8.co.uk">Pixl8</a> is full service web agency based in London, England. We specialise in large website, intranet and application development including back-office integration and mobile applications. In addition we troubleshoot web applications and provide a range of consulting services. Our team have been building applications with CFML since 1998.</p>
			<ul>
				<li><span class="label">w: </span><a href="http://pixl8.co.uk" title="pixl8.co.uk">pixl8.co.uk</a></li>
				<li><span class="label">e: </span><a href="mailto:openbd@pixl8.co.uk" title="openbd@pixl8.co.uk">openbd@pixl8.co.uk</a></li>
			</ul>
		</div>

	</div><!--- end container --->
</div><!--- end content ---> --->

</div><!--- end wrapper --->

<cfinclude template="/inc/footer.cfm" />