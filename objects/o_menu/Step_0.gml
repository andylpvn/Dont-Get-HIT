//add menu music
//audio_play_sound(snd_menuBackground, 1000, true);

// Oscillate the cursor using sin function
cursorLevitate = dsin(cursorTime);

// Use this as an "angle" to use in the sin function
// to oscillate cursor
cursorTime += leviRate;


// Vertical input is determined by the press of up
// and down buttons
var vert =  keyboard_check_pressed(downKey) -  keyboard_check_pressed(upKey);

// Move cursor up or down depending on inputs
selected += vert;
selectLerp = lerp(selectLerp, selected, lerpAmt); // Smooth cursor movement

// Don't let cursor move past where it should be
selected = clamp(selected, 0, array_length_1d(menu) - 1);


// Whenever you press the confirm button, do whatever
// it should do depending on what menu element is selected

if(keyboard_check_pressed(confirmKey))
{
	
	
	if(selected == 0) // Play by default
	{
		//room_goto_next();
		// Whatever happens when you play
		audio_play_sound(snd_menuConfirm, 1000, false);
		
		// choose character
		room_goto(r_options_chooseCharacter);
	}
	
	if(selected == 1) // Options by default
	{
		// Go to options room (choose characters, map)
		audio_play_sound(snd_menuConfirm, 1000, false);
		
		room_goto(r_option);
	}
	
	if(selected == 2) 
	{
		// Go to HowToPlay room
		
		audio_play_sound(snd_menuConfirm, 1000, false);
		
		room_goto(r_controls);
		
		
	} 
	
	if(selected == 3) // Exit by default
	{
		game_end();
		audio_play_sound(snd_menuConfirm, 1000, false);
	}
}


	if(keyboard_check_pressed(upKey) || keyboard_check_pressed(downKey))
{
	audio_play_sound(snd_menuClick, 1000, false);
} 

