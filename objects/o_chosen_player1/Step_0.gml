/*PLAYER 1*/



//movement limitation
x = clamp(x, 50, 1315);

//-----player if statement
if (global.chosenPlayer1 == 0) 
{
	player1_controlKeys_character1(); 
}

else if (global.chosenPlayer1 == 1) 
{
	player1_controlKeys_character2();
}

else if (global.chosenPlayer1 == 2)
{
	player1_controlKeys_character3();
}

else if (global.chosenPlayer1 == 3)
{
	player1_controlKeys_character4();
}


else if (global.chosenPlayer1 == 4)
{
	player1_controlKeys_character5();
}

else if (global.chosenPlayer1 == 5)
{
	player1_controlKeys_character6();
}


