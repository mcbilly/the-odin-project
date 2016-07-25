/* Javascript project for Sketch Pad. The Odin Project */

var gridNumInt = 30; //how many initial grids of blocks
var sketchpadWidth = 960;
var sketchpadHeight = 800;

$(document).ready(function(){

	startSketchPad(gridNumInt);

	var block = '.block'

	$('#restart-button').click(function(){
		var newGridNum = prompt("Enter how many grids for your new sketchpad:");
		clearSketchPad();
		startSketchPad(newGridNum);
		drawSketch(block, 'color');
	});

	$('#sketch-button').click(function(){
		drawSketch(block, 'sketch');
	});

	$('#color-button').click(function(){
		drawSketch(block, 'color');
	});

	$('#eraser-button').click(function(){
		drawSketch(block, 'eraser');
	});

	drawSketch(block,'color');

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

function drawSketch(block,ink){ //start drawing

	$(block).hover(
		function(){
		if(ink === "color"){
		var hue = 'rgb(' + (Math.floor(Math.random() * 256)) + ',' + (Math.floor(Math.random() * 256)) + ',' + (Math.floor(Math.random() * 256)) + ')';
		$(this).css('background-color',hue); //changes background to random color
		} else if(ink === "sketch"){
			$(this).css('background-color','#000000');
		} else if(ink === "eraser"){
			$(this).css('background-color','#ffffff');
		}
	},
		function(){
		$(this).fadeTo(1000,0.7); //on hover out, opacity fades to 0.7

	});
}