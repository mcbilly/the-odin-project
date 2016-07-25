/* Javascript project for Sketch Pad. The Odin Project */

var gridNumInt = 16; //how many initial grids of blocks starting with 16x16
var sketchpadWidth = 960;
var sketchpadHeight = 600;

$(document).ready(function(){

	startSketchPad(gridNumInt);

	var block = '.block'

	$('#restart-button').click(function(){
		var newGridNum = prompt("Enter how many grids for your new sketchpad:");
		clearSketchPad();
		startSketchPad(newGridNum);
		drawSketch(block);
	});

	drawSketch(block);

});


function startSketchPad(gridNumInt){ //initialize sketchpad with number of grids

	var $sketchpad = $('#sketchpad');

	var blockWidth = (sketchpadWidth / gridNumInt)-1;
	var blockHeight = (sketchpadHeight / gridNumInt)-1;

	for(var x=0; x < gridNumInt; x++){

		for(var y=0; y < gridNumInt; y++){
	
			$sketchpad.append("<div class='block'></div>");
		}

		$sketchpad.append("<div style='clear:both'></div>")
	}

	$('.block').css('width',blockWidth);
	$('.block').css('height',blockHeight);
	$('.block').css('opacity',0.1);
};

function clearSketchPad(){ //clear sketchpad
	$('#sketchpad').empty();
}

function drawSketch(block){ //start drawing

	$(block).hover(
		function(){
		var hue = 'rgb(' + (Math.floor(Math.random() * 256)) + ',' + (Math.floor(Math.random() * 256)) + ',' + (Math.floor(Math.random() * 256)) + ')';
		$(this).css('background-color',hue); //changes background to random color
	},
		function(){
		$(this).fadeTo(1000,0.7); //on hover out, opacity fades to 0.7

	});
}