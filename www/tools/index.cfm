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
				A <a href="http://www.sublimetext.com/">Sublime</a> 2/3 plugin for generating JavaDoc/YUIDoc style comments in CFML (Both tags and script)
			</p>
			<p>
				Available on <a href="https://github.com/MFernstrom/cfmldocplugin">GitHub</a> or through the <a href="https://packagecontrol.io/">Sublime package manager</a> under the name <strong>CFMLDocPlugin</strong><br>
			</p>
			<p>
				Simple and straight forward, install the plugin and set a shortcut key.
			</p>
			<p>
				Running it will create JavaDoc/YUIDoc style comments based off of your CFML code.
			</p>
			<p>
				While it automatically pulls in information about the code, it's not quite psychic yet, so to add comments to the header, simply use the hint or description!
			</p>
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
				You can find the <a href="https://github.com/MFernstrom/cfmldoc">source</a> and binaries on GitHub, there are binaries for <a href="https://github.com/MFernstrom/cfmldoc/tree/master/bin/windows/CFMLDoc">Windows</a> and <a href="https://github.com/MFernstrom/cfmldoc/tree/master/bin">Linux</a>.
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
				<strong>Manual installation:</strong> Download the <a href="https://github.com/MFernstrom/OpenBD-Cli-bridge">source</a> from GitHub, unzip the .cfm file into a local web server, and drop the .exe and config.ini wherever you want (Keep the .ini and .exe in the same folder), add the .exe to your PATH and edit the config.ini file to point to your webserver.
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
				While there are plenty of useful projects written in CFML, the idea here is to create a list if auxiliary tools, used on their own or in conjunction with other tools but not reliant on a web server.
			</p>
			<p>
				If you have suggestions for tools you think should be added, please contact <a href="mailto:marcus@marcusfernstrom.com">Marcus Fernstrom</a>.
			</p>
		</div>

	</div><!--- end container --->
</div><!--- end content --->

</div><!--- end wrapper --->

<cfinclude template="/inc/footer.cfm" />