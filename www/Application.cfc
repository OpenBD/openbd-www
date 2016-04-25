<cfcomponent output="false" extends="a.public.ApplicationPublic">
	
	<!--- $Id:$	--->

	<cffunction name="onApplicationStart">
		<!--- Setup cron directory and enable cron. --->
		<cfset CronSetDirectory("/cron.d")>
		<cfset CronEnable(true)>
	</cffunction>
	
</cfcomponent>