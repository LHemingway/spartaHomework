
function addListItem(value) {
    var newItem = document.createElement("li");
    newItem.innerHTML = value;
    var list = document.getElementsByTagName("ul")[0];
    list.append(newItem);
}

for (var i = 0; i < 64; i++) {
	addListItem("");
}

var whiteItems = document.getElementsByTagName("li");
for (var i = 0; i < 64; i += 2) {
	whiteItems[i].className = "white";
}	

var blackItems = document.getElementsByTagName("li");
for (var i = 1; i < 64; i += 2) {
	blackItems[i].className = "black";
}	