
function addListItem(value) {
    var newItem = document.createElement("li");
    newItem.innerHTML = value;
    var list = document.getElementsByTagName("ul")[0];
    list.append(newItem);
}

//Add Squares
for (var i = 0; i < 64; i++) {
	addListItem("");
}

//Add colour to squares

var fillSquares = document.getElementsByTagName("li");
	for (var i = 0; i < fillSquares.length; i+= 2){
		fillSquares[i].className = "white";
		if (i === 6 || i === 22 || i === 38 || i === 54) {
			i++;
	} 
		if (i === 15 || i === 31 || i === 47) {
			i--;
	}
}

	for (var i = 1; i < fillSquares.length; i+= 2){
		fillSquares[i].className = "black";
		if (i === 7 || i === 23 || i === 39 || i === 55) {
			i--;
	} 
		if (i === 14 || i === 30 || i === 46) {
			i++;
	}
}


//Add checkers
// for (var i = 0; i < 8; i ++){
// var lis = document.getElementsByTagName("li");
// lis[1].innerHTML = ("&#x26c0");
// }

// var whiteItems = document.getElementsByTagName("li");
// for (var i = 0; i < 64; i += 2) {
// 	whiteItems[i].className = "white";
// }	

// var blackItems = document.getElementsByTagName("li");
// for (var i = 1; i < 64; i += 2) {
// 	blackItems[i].className = "black";
// }	
