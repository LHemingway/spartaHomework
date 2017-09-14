document.addEventListener("DOMContentLoaded", function(){

	var buttonNos = document.getElementsByClassName("buttonNo");
	var buttonOps = document.getElementsByClassName("buttonOp");
	var buttonEqu = document.getElementById("buttonEq");
	var buttonCe = document.getElementById("buttonC");
	var display = document.getElementById("display");

	var val1 = null;
	var val2 = null;
	var op1 = null;
	var sum = null;

	//Funtions
	function add(val1, val2){
    return val1 + val2; 
	}
	function subtract(val1, val2){
    return val1 - val2; 
	}

	function multiply(val1, val2){
	return val1 * val2; 
	}

	function divide(val1, val2){
	return val1 / val2; 
	}

	// function pow(val1, val2){
	// sum = val1 ** val2; 
	// }

	// function sqroot(val1){
	// sum = (Math.sqrt(val1));
	// }

	function clear(){
		val1 = null;
		val2 = null;
		op1 = null;
		// if(sum == null){
		// 	display.innerText = "Giz sumat then..";
		// }
		sum = null;
		display.innerText = null;
	}




	for(var i = 0; i < buttonNos.length; i++)	{
		buttonNos[i].addEventListener("click", function() {
			if (val1 == null){
			display.innerText = this.value;
			val1=parseInt(this.value);
		} else {
			display.innerText = this.value;
			val2 = parseInt(this.value);
		}
		});
	}

	for(var i = 0; i < buttonOps.length; i++)	{
		buttonOps[i].addEventListener("click", function() {
			display.innerText = this.value;
			op1=(this.value);
		});
	}



	buttonEqu.addEventListener("click", function(){
		if (op1 ==="+") {
			sum = add(val1, val2);
		} else if (op1 === "-") {
			sum = subtract(val1, val2);
		} else if (op1 === "*") {
			sum = multiply(val1, val2);
		} else if (op1 === "/") {
			sum = divide(val1, val2);
		}
		
		display.innerText = sum;
		
	}); 


	buttonCe.addEventListener("click", function() {
		clear();
	});
});