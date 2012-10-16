# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(document).ready( ()->
	$('#new_button').live("click",  ()->
		
		$('.lightbox_wrapper').fadeIn();
	);
	$('.lightbox .close').live("click" , ()->
	
		$('.lightbox_wrapper').fadeOut();
	);
)	

close = ->
	$('.lightbox .close').trigger('click');


