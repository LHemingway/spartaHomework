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

//Do if val 1 already store as val 2 
	for(var i = 0; i < buttonNos.length; i++)	{
		buttonNos[i].addEventListener("click", function() {
			if (val1 == null){
			display.innerText = this.value;
			val1=parseInt(this.value);
			console.log(val1);
		} else {
			//display.innerText = null;
			display.innerText = this.value;
			val2 = parseInt(this.value);
			console.log(val2);
		}
		});
	}

	for(var i = 0; i < buttonOps.length; i++)	{
		buttonOps[i].addEventListener("click", function() {
			display.innerText = this.value;
			op1=(this.value);
			console.log(op1);
		});
	}



	buttonEqu.addEventListener("click", function(){
		if (op1 ==="+") {
			sum =  val1 + val2;
		} else if (op1 === "-") {
				sum = val1 - val2;
			} else if (op1 === "*") {
				sum = val1 * val2;
				} else if (op1 === "/") {
					sum = val1 / val2;
					}
		//sum=(this.value);
		console.log(sum);
	}); 





	buttonCe.addEventListener("click", function() {
			val1 = null;
			val2 = null;
			op1 = null;
			sum = null;
		});
});

//Store values user inputs

//parseInt Values into intergers from strings if true its number if not come back false

//Change operators from strings to operators

//Clear user inputs with c button

//do the math