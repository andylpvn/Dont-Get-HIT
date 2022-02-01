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
		global.mychar = 20;
		//go to pick character for player 2
		  audio_play_sound(snd_menuConfirm, 1000,false);
		room_goto(r_options_chooseCharacter_Rod2);
		//audio_play_sound(snd_menuConfirm, 1000,false);
		
		
	}
	if(selected == 1) //pick character
	{
		global.mychar = 21;
		  audio_play_sound(snd_menuConfirm, 1000,false);
		//go to pick character for player 2
	    room_goto(r_options_chooseCharacter_Steph2);
		//audio_play_sound(snd_menuConfirm, 1000,false);
	}
	if(selected == 2) //pick character
	{
		global.mychar = 22;
		  audio_play_sound(snd_menuConfirm, 1000,false);
		//go to pick character for player 2
		room_goto(r_options_chooseCharacter_Roger2);
		//audio_play_sound(snd_menuConfirm, 1000,false);
	}
	if(selected == 3)//pick character
	{
		
		global.mychar = 23;
		  audio_play_sound(snd_menuConfirm, 1000,false);
		//go to pick character for player 2
		room_goto(r_options_chooseCharacter_Red2);
		//audio_play_sound(snd_menuConfirm, 1000,false);
	}
	if(selected == 4)//pick character
	{
		global.mychar = 24;
		  audio_play_sound(snd_menuConfirm, 1000,false);
		//go to pick character for player 2
		room_goto(r_options_chooseCharacter_Will2);
		//audio_play_sound(snd_menuConfirm, 1000,false);
	}
	if(selected == 5) //pick character
	{
		global.mychar = 25;
		  audio_play_sound(snd_menuConfirm, 1000,false);
		//go to pick character for player 2
		room_goto(r_options_chooseCharacter_Green2);
		//audio_play_sound(snd_menuConfirm, 1000,false);
	}
	if(selected == 6) // got to map room
	{
		  audio_play_sound(snd_menuConfirm, 1000,false);
		// choose map
		room_goto(r_options_map);
		//audio_play_sound(snd_menuConfirm, 1000,false);
	}
	

	
}
			 if(keyboard_check_pressed(upButt) || keyboard_check_pressed(downButt) )
{
	audio_play_sound(snd_menuNavigate, 1000, false);
}