// feature highlighting

$(function() {
	
	// get file sizes for downloads via ajax to keep page load time speedy
	getFileSize = function( elementArray ) {

		$.each( elementArray, function( eIndex, eData ){
			eData.link = $( eData.element ).attr("href");
			if ( typeof(eData.btntext) == "undefined" || eData.btntext == "" ) {
				eData.btntext = "Download";
			}
		});
		
		$.ajax({
			url : "/a/public/ajax.cfc?method=getFileSizeAjax",
			type : "POST",
			data : { filePath : $.toJSON(elementArray) },
			success : function( result ) {
				var result = $.parseJSON(result);
				$.each( result, function( rIndex, rData ){
					if ( rData.size == "0KB" ) {
						// don't change the text
					} else {
						$( rData.element + " span" ).text( rData.btntext + " " + "(" +rData.size + ")" );
					}
				});
			},
			error : function ( result ) {
				// do nothing :-)
			}
		});

	}

});