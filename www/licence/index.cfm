<cfsilent>
	
<cfscript>
request.page = {
		title : "OpenBD | Licence",
		thispage : "licence", 
		section : "main"
	};
</cfscript>

</cfsilent><cfinclude template="/inc/header.cfm" />


<div class="wrapper">

<div class="content title">
	<div class="container cf">
		<h1>Public License</h1>		
	</div><!--- end container --->
</div><!--- end content --->

<div class="content">
	<div class="container cf">
	
		<div class="full">
		<h2>OpenBD Licence</h2>
		<p>&copy; Copyright <cfoutput>#Year(now())#</cfoutput> TagServlet Ltd This file is part of Open BlueDragon (OpenBD) CFML Server Engine.</p>
		<p>OpenBD is free software: you can redistribute it and/or modify it under the terms of the GNU General Public Licence as published by Free Software Foundation, version 3.</p>
		<p>OpenBD is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.</p>
		<p>See the GNU General Public License for more details. You should have received a copy of the GNU General Public License along with OpenBD. If not, see <a href="http://www.gnu.org/licenses/">www.gnu.org/licenses</a> </p>
		<p>Additional permission under GNU GPL version 3 section 7 If you modify this Program, or any covered work, by linking or combining it with any of the JARS listed in the README.txt (or a modified version of (that library), containing parts covered by the terms of that JAR, the licensors of this Program grant you additional permission to convey the resulting work. README.txt @ <a href="http://www.openbluedragon.org/license/README.txt http://openbd.org/">www.openbluedragon.org/license/README.txt</a> <a href="http://openbd.org/">openbd.org/</a></p>
		</div>
		
	</div><!--- end container --->
</div><!--- end content --->


</div><!--- end wrapper --->

<cfinclude template="/inc/team.cfm" />


<cfinclude template="/inc/footer.cfm" />