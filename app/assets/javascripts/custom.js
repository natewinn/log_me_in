$(function(){

	$('.text-box').on('input', function() {
	    var input=$(this);
	    var is_name=input.val();
	    if(is_name){
	    	input.removeClass("invalid").addClass("valid");
	    }
	    else{
	    	input.removeClass("valid").addClass("invalid");
	    }
	});

	$('.modal-reveal').on('click', function () {  
  
	$('#bottom').show();	

	$('#top').show();

	});

	$('.modal-hide').on('click', function () {  

	$('#bottom').hide();	

	$('#top').hide();
	
	});

});
