<cfcomponent output="false">
	
	<!---
		$Id: $ 
		
		Utility functions
	--->
	
	<cfscript>
		// get file size for download files
		// note: the filePath should be the full url including the filename
		function getFileSize( required filePath ){
			var fileSize = "-MB";
			
			if ( findNoCase( "://", arguments.filepath  ) == 0 ) {
					arguments.filepath = expandpath(arguments.filepath);
			}
			
			try {
				var fileInfo = getFileInfo( arguments.filepath );
				fileSize = numberFormat( (fileInfo.size/1048576*100000)/100000 ) & "MB";
				if ( fileSize == "0MB" ) { 
					fileSize = numberFormat( (fileInfo.size/1024*100000)/100000 ) & "KB"; 
				}
			} catch( Any e) {
				// TODO: Log the error
			}
			return fileSize;
		}
	</cfscript>

</cfcomponent>