


// Whenever you press the confirm button, do whatever
// it should do depending on what menu element is selected

if(keyboard_check_pressed(confirmButt))
{
	if(selected == 0) // Go to volume
	{
		// Display volume
		
		audio_play_sound(snd_menuConfirm, 1000,false);
		room_goto(r_Menu);

			 

	}
	

}