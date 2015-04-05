/* 
 * $Id:$
 * 
 * downloads js
 */
$(function() {
	
	var top = $('#fixnav').offset().top - parseFloat($('#fixnav').css('marginTop').replace(/auto/, 0));

	$('#fixnav a').on("click", function(event) {
			event.preventDefault();
		
			$('#fixnav a').removeClass('active');
			clicked = $(this).attr('href');
			$(clicked).addClass('anim');
			el = $(clicked).offset();

				$('html, body').animate({ scrollTop: el.top }, 2000);
				setTimeout("$('a[href='+clicked+']').addClass('active');",2100);	

	});


		$(document).scroll(function (event) {
		    // what the y position of the scroll is
		    var y = $(this).scrollTop();
		    $('#fixnav a').removeClass('active');
  
		    // whether that's below the form
	    if (y >= top) {
	      // if so, ad the fixed class
	      $('#fixnav').addClass('fixed');
	    } else {
	      // otherwise remove it
	      $('#fixnav').removeClass('fixed');
	    }
	  });
		
	
	var filesArray = [
		           	  { element : "._lr-r2r" },
		        	  { element : "._lr-war" },
		        	  { element : "._lr-jam" },
		        	  { element : "._nb-r2r" },
		        	  { element : "._nb-war" },
		        	  { element : "._nb-jar", btntext : "Jar Only" },
		        	  { element : "._nb-jam" },
		        	  { element : "._pl-wiki", btntext : "Download Latest" },
		        	  { element : "._pn-wiki", btntext : "Download Nightly" },
		        	  { element : "._pl-msg", btntext : "Download Latest" },
		        	  { element : "._pn-msg", btntext : "Download Nightly" },
		        	  { element : "._pl-lib", btntext : "Download Latest" },
		        	  { element : "._pn-lib", btntext : "Download Nightly" },
		        	  { element : "._lr-local", btntext : "OpenBD Local" }
	                 ];

	getFileSize(filesArray);

});