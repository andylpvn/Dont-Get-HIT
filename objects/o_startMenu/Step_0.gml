audio_play_sound(snd_menuBackground,100, true);
		if(keyboard_check_pressed(upButt) || keyboard_check_pressed(downButt) )
{
	audio_play_sound(snd_menuNavigate, 1000, false);
}


// Oscillate the cursor using sin function
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
selected =  clamp(selected, 0, array_length_1d(menu) - 1);

// Whenever you press the confirm button, do whatever
// it should do depending on what menu element is selected

if(keyboard_check_pressed(confirmButt))
{
	if(selected == 0) // Play by default
	{
		  audio_play_sound(snd_menuConfirm, 1000,false);
		// choose character
	//	audio_play_sound(snd_menuConfirm, 1000,false);
		room_goto(r_options_chooseCharacter);
		
	 	
		
	}
	
	if(selected == 1) // Options by default
	{
		  audio_play_sound(snd_menuConfirm, 1000,false);
		//audio_play_sound(snd_menuConfirm, 1000,false);
		room_goto(r_option);
		
	}
	
	if(selected == 2) 
	{
		  audio_play_sound(snd_menuConfirm, 1000,false);
		// Go to HowToPlay room
		//audio_play_sound(snd_menuConfirm, 1000,false);
	}
	
	if(selected == 3) // Exit by default
	{
		  audio_play_sound(snd_menuConfirm, 1000,false);
		// audio_play_sound(snd_menuConfirm, 1000,false);
		game_end();
	}
			


}





