$(function() {

var boxes = $(".boxes");
var turn = true;

//console.log check when box is clicked.
$('li').click(function(){
	if ($(this).text() === "" ){
		placePiece(this);
	}
		
		wiener();
	});

function placePiece(box){
	if(turn === true){
		$(box).html("X");
		turn = false;
	} else {
		$(box).html("O");
		turn = true;
	}
};

function wiener(){
	if($("#box1").text() === "X" && $("#box2").text() === "X" && $("#box3").text() === "X"){
		alert("X is the winner");
	} else if($("#box1").text() === "X" && $("#box4").text() === "X" && $("#box7").text() === "X"){
		alert("X is the winner");
	} else if($("#box1").text() === "X" && $("#box5").text() === "X" && $("#box9").text() === "X"){
		alert("X is the winner");
	} else if($("#box1").text() === "O" && $("#box2").text() === "O" && $("#box3").text() === "O"){
		alert("O is the winner");
	} else if($("#box1").text() === "O" && $("#box4").text() === "O" && $("#box7").text() === "O"){
		alert("O is the winner");
	} else if($("#box1").text() === "O" && $("#box5").text() === "O" && $("#box9").text() === "O"){
		alert("O is the winner");
	}

	
	};

	$(".reset").click(function(){
          document.location.reload(true);
	});

});


// change class on click to X and O? maybe

// make on click method to display X in box

// make loop to go through X and O in turn

// check row for 3 of the same.

// if true stop game and say you win

// reset game

// maybe leader board
