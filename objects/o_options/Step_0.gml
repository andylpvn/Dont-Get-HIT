 /// @description Insert description here
// You can write your code in this editor

/*
//------CHOOSE CHARACTER------
if ( selected == 0 ) 
{
	//Open character menu
}

//------MAP------
else if ( selected == 1 ) 
{
	//Open map menu
}

//------VOLUME------
else if (selected == 2 ) 
{
	//open volume
}
*/
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
selected = clamp(selected, 0, array_length_1d(menu) - 1);

// Whenever you press the confirm button, do whatever
// it should do depending on what menu element is selected

if(keyboard_check_pressed(confirmButt))
{
	if(selected == 0) // Go to volume
	{
		// Display volume
		
		audio_play_sound(snd_menuConfirm, 1000,false);
		///button is clicked on, whatever that means in your case.

 audio_pause_sound(snd_menuBackground);

			 

	}
	
	if(selected == 1) // Return to main menu
	{
	

		audio_resume_sound(snd_menuBackground);
		     audio_play_sound(snd_menuConfirm, 1000,false);
			
			// audio_play_sound(snd_menuNavigate, 1000,false);
			 if(keyboard_check_pressed(upButt) || keyboard_check_pressed(downButt) )
{
	audio_play_sound(snd_menuNavigate, 1000, false);
}

	}
	
	if(selected == 2) // Sounds
	{
		  audio_play_sound(snd_menuConfirm, 1000,false);
		// Display the sound menu
		room_goto(r_Menu);
		
	}       
	/*
	if(selected == 3) // Return to Main menu
	{
		room_goto(r_Menu);
	}
	*/
}