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
	if(selected == 0) //pick character
	{
		//go to pick character for player 2
		
		
	}
	if(selected == 1) //pick character
	{
		//go to pick character for player 2
	}
	if(selected == 2) //pick character
	{
		//go to pick character for player 2
	}
	if(selected == 3)//pick character
	{
		//go to pick character for player 2
	}
	if(selected == 4)//pick character
	{
		//go to pick character for player 2
	}
	if(selected == 5) //pick character
	{
		//go to pick character for player 2
	}
	if(selected == 6) // got to map room
	{
		// choose map
		room_goto(r_options_map);
	}
	
	if(selected == 7) // return to Main menu
	{
		// Display Main menu
		room_goto(r_game);

	}
	
}