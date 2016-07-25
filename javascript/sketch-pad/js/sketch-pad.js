/* Javascript project for Sketch Pad. The Odin Project */

var gridNumInt = 16; //how many initial grids of blocks starting with 16x16

$(document).ready(function(){

	for(var x=0; x < gridNumInt; x++){

		for(var y=0; y < gridNumInt; y++){
	
			$('#sketchpad').append("<div class='block'></div>");
		
		}

		$('#sketchpad').append("<div style='clear:both'></div>")
	}

	$('.block').hover(
		function(){
			$(this).addClass('onHover');
		}
	);

});

