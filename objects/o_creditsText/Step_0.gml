y -=0.5; //move upwards (speed 0.5)


// if text reaches top of screen
if y==(0-height) {
	instance_destroy(); // destroy the text
	//room_goto(r_Menu); // end game instead
	game_end();
}
