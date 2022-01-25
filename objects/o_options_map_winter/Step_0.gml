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
		  audio_play_sound(snd_menuConfirm, 1000,false);
		// Waiting for Tanner to finish the game room
		room_goto(r_options_map_summer);
	}
	
	if(selected == 1) // Go back to choose character character
	{
		  audio_play_sound(snd_menuConfirm, 1000,false);
		// Display map option
		room_goto(r_options_map_winter);

	}
	
	if(selected == 2) //Go back to main menu
	{
		  audio_play_sound(snd_menuConfirm, 1000,false);
		// Display the main menu
		room_goto(r_main);
		
	}


	
}
			 if(keyboard_check_pressed(upButt) || keyboard_check_pressed(downButt) )
{
	audio_play_sound(snd_menuNavigate, 1000, false);
}