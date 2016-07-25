/* Javascript project for Sketch Pad. The Odin Project */

var gridNumInt = 16; //how many initial grids of blocks starting with 16x16

$(document).ready(function(){

	startSketchPad(gridNumInt);

	$('button').click(function(){
		var newGridNum = prompt("Enter how many grids for your new sketchpad:");
		clearSketchPad();
		startSketchPad(newGridNum);
		drawSketch('.block');
	});

	drawSketch('.block');

});


function startSketchPad(gridNumInt){ //initialize sketchpad with number of grids

	for(var x=0; x < gridNumInt; x++){

		for(var y=0; y < gridNumInt; y++){
	
			$('#sketchpad').append("<div class='block'></div>");
		
		}

		$('#sketchpad').append("<div style='clear:both'></div>")
	}

};

function clearSketchPad(){ //clear sketchpad
	$('#sketchpad').empty();
}

function drawSketch(block){ //start drawing
	$(block).hover(function(){
		$(this).addClass('onHover');
	});
}