<cfcomponent output="false">

	<!---
		$Id: $ 
		
		Ajax functions
	--->
	
	<cffunction name="getFileSizeAjax" access="remote" returnformat="JSON">
		<cfargument name="filePath" required="true" >
		
		<cfset f = new a.private.utils()>
		
		<cfset arguments.filePath = deserializeJson(arguments.filepath)>
		
		<cfif ( !isArray( arguments.filePath) )>
			<cfset var fileSize = f.getFileSize( arguments.filePath )>
			<cfreturn fileSize />
			
		<cfelse>
			<cfloop array="#arguments.filePath#" index="i" from="1" to="#arraylen(arguments.filePath)#">
				<cfset var fileSize = f.getFileSize( arguments.filePath[i].link )>
				<cfset arguments.filePath[i].size = fileSize />
			</cfloop>
			
			<cfreturn arguments.filePath>
		</cfif>
		
	</cffunction>
	
</cfcomponent>