


y -=1; //move upwards at speed

// if text reaches top of screen
if y==(0-height) {
	instance_destroy(); // destroy the text
	game_end();
	//room_goto(r_Menu);
}
