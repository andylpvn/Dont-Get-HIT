/// @description Insert description here
// You can write your code in this editor





//Display volume menu


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
	if(selected == 0) // Choose character
	{
		// Display character menu
		
	}
	
	if(selected == 1) // Map
	{
		// Display map option


	}
	
	if(selected == 2) // Sounds
	{
		// Display the sound menu
		room_goto(r_option);
		
	}
	/*
	if(selected == 3) // Return to Main menu
	{
		room_goto_previous();
	}
	*/
}