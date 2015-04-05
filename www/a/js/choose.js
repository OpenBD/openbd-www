$(function() {
  
	oo = [];

	$('div.hide').removeClass('.hide').hide();

	// Help me choose !!
	$('#latest h3').on('click', function(event) {
		event.preventDefault();

	  	// Set elm to $(this)
	  	elm = $(this);
	
	  	// Get Parent id and remove class active from all H3's within ID
		var pid = elm.parent().attr('id');
		var q 	= elm.parent().attr('data-question');
		$('#'+pid+' h3').removeClass('active');
	
	
	  	var selected = elm.attr('data-answer');
	    if (selected == 'latest') {
	      oo[q] = releaseversion;
	    } else {
	    	oo[q] = selected;
	    }
	
	  	// Depending on what you have selected depends what gets shown next
	  	if (pid == 'q1') {
	  		$('#q2, #q2a, #q3, #q3a, #q4, #download').fadeOut();
	  		$('#q2 h3, #q2a h3').removeClass('active');
	  		if(oo.q1 != 'update') {
	  			$('#q2').delay(200).fadeIn();
	  		} else {
	  			$('#q2a').delay(200).fadeIn();
	  		}
	  	}
	  	if (pid == 'q2') {
	  		$('#q2a, #q3, #q3a, #q4, #download').fadeOut();
	  		$('#q3 h3, #q3a h3').removeClass('active');
	  		if (oo.q1 == 'server') {
	  			$('#q3, #q4').fadeOut();
	  			$('#q3a').fadeIn();	
	  		} else {
	  			$('#q3').fadeIn();
	  		}
	  	} else if (pid == 'q2a') {
	  		$('#q3a, #q3').fadeOut();
	  		$('#download').fadeIn();
	  	}
	
	  	if (pid == 'q3' || pid == 'q3a') {
	      $('#download').hide();
	  		$('#q4 h3').removeClass('active');
	  		$('#q4').fadeIn();
	  	}
	  	
	  	if (pid == 'q4') {
	  		$('#download').fadeIn();
	  	}
	
	  	// Animate scroll effect, scrolls body to make the question you selected the closed to window top
	  	var nextq = $('#'+pid).offset();
		  $('html, body').animate({scrollTop : nextq.top},800);
	
		  // Build link and title text and add it to the download area
		  if (oo.q1 == 'update') {
	      var title = 'OpenBD ' + oo.q2 + ' War';
		  	var dl = '/download/' + oo.q2 + '/openbd.war';	
	      //var dl = 'download/' +  
		  } else if (oo.q1 == 'local' && oo.q3 == 'gui') {
		  	var title = 'Jetty Desktop'
	  		var dl = 'https://github.com/aw20/jettydesktop';
	    	// var title = 'OpenBD Desktop ' + oo.q4
	  		// var dl = '/download/' + oo.q4 + '/OpenBlueDragonDesktop.zip';
	  	} else if (oo.q1 == 'local' && oo.q3 == 'nogui') {
	      var title = 'Ready to Run Jetty + OpenBD ' + oo.q4;
	      var dl = '/download/' + oo.q4 + '/jetty-openbd.zip';
	    } else if (oo.q1 == 'server' && oo.q2 == 'windows') {
	      var title = 'OpenBD IIS - "Coming Soon"';
	      var dl = '';
	      // prevent default click action on the download button in this case
	      $('#download a').on('click', function(event) {
	    	  event.preventDefault();
	      });
	    }else if (oo.q1 == 'server' && oo.q3 == 'jam') {
	      var title = 'OpenBD JAM ' + oo.q4;
	      var dl = 'http://openbdjam.s3.amazonaws.com/OpenBDjam-install-2.0.sh';
	    } else if (oo.q1 == 'server' && oo.q3 == 'nojam') {
	      var title = 'Ready to Run Jetty + OpenBD ' + oo.q4;
	      var dl = '/download/' + oo.q4 + '/jetty-openbd.zip';     
	    }

	    //dl = 'donwload' + releaseversion + ''
		$('#download a').attr('href', dl);
	    $('#download h3').text(title);
	    $('#download span').text(title);
	
		// Add active class to selected h3
	  	elm.addClass('active');
	  	
	}); // click event

});
