// The player move is gathered and stored in a variable
    // Prompt
    

// The app generates a random computer move
  // Math.random, Math.floor 
  // The computer move is stored in a variable
    
    var win = "Human Wins!";
    var draw = "Draw!";
    var lose = "Computer Wins!";
    var result;
    var quit;
    var humanWin = 0;
    var compWin = 0;  

  while ((quit != "N") && (compWin < 3 && humanWin < 3)){
    var pMove = parseInt(prompt("Pick a move Rock(0), Paper(1), Scissors(2)"));
    var cMove = Math.floor(Math.random() * 3);
// Compare moves and see who has won, or if it's a draw
  // If the moves are the same, it's a draw

    if (pMove === cMove){
      result = draw;
    } else if (pMove === 0 && cMove === 1){ 
      result = lose; 
      compWin++;
    } else if (pMove === 0 && cMove === 2){
      result = win;
      humanWin++;
    } else if (pMove === 1 && cMove === 0){
      result = win;
      humanWin++;
    } else if (pMove === 1 && cMove === 2){
      result = lose;
      compWin++;
    } else if (pMove === 2 && cMove === 0){
      result = lose;
      compWin++;
    } else if (pMove === 2 && cMove === 1){
      result = win;
      humanWin++;
    } else { 
      alert("How did you &*%@ this up?");
    }
    // Rock beats scissors
    // Scissors beat paper
    // Paper beats rock

  // Tell the user the outcome of the game
      // Alert
    alert(result);

    if (humanWin === 3){
      alert("Human Wins, Survival!");
      quit = prompt("Do you want to reset? Y/N");
    } else if (compWin === 3) {
      alert("Computer Wins, All Heil Skynet");
      quit = prompt("Do you want to reset? Y/N");
    }

}
// BONUS
    // Update the scores for computer and player

    // The first player to reach a score of 10 is the overall winner

    // Be able to reset the game



    //ALL LOGIC IN AN ARRAY!
// var resultsMatrix = [
//       ["draw", "win", "lose"],
//       ["lose", "draw", "win"],
//       ["win", "lose", "draw"]
//     ];
// var moves = ["r", "p", "s"];

// var playerMove = prompt("Pick a move (r)ock, (p)aper, (s)cissors");
// var playerIndex = moves.indexOf(playerMove);
// var computerIndex = Math.floor(Math.random()*3);
// var computerMove = moves[computerIndex];

// alert("Computer chose" + computerMove);

// alert(resultsMatrix[computerIndex][playerIndex]);