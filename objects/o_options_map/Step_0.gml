/// @description Insert description here
// You can write your code in this editor


//DISPLAY CHARACTER OPTION

cursorLevitate = dsin(cursorTime);

// Use this as an "angle" to use in the sin function
// to oscillate cursor
cursorTime += leviRate;


// Vertical input is determined by the press of up
// and down buttons
var vert =  keyboard_check_pressed(downButt) -  keyboard_check_pressed(upButt);

// Move cursor up or down depending on inputs
selected += vert;
selectLerp = lerp(selectLerp, selected, lerpAmt); // Smooth cursor movement

// Don't let cursor move past where it should be
selected = clamp(selected, 0, array_length_1d(menu) - 1);

// Whenever you press the confirm button, do whatever
// it should do depending on what menu element is selected
if(keyboard_check_pressed(confirmButt))
{
	if(selected == 0) //go to game room
	{
		// Waiting for Tanner to finish the game room
	}
	
	if(selected == 1) // Go back to choose character character
	{
		// Display map option
		room_goto(r_options_chooseCharacter);

	}
	
	if(selected == 2) //Go back to main menu
	{
		// Display the main menu
		room_goto(r_game);
		
	}
	/*
	if(selected == 3) // Return to Main menu
	{
		room_goto_previous();
	}
	*/
}