/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_monogram);

 draw_sprite_stretched(s_elementsBar, 0, 20,-5, 1320, 150);
if (global_time > 10) {
draw_set_color(c_white);

}
else 
{
	 draw_set_color(c_red);
}


if (global_time > 9) 
{
	draw_text_transformed(room_width*0.47, room_height*0.02 , string(displayedTime), timerTextSize, timerTextSize,0);
}
else 
{
	draw_text_transformed(room_width*0.48, room_height*0.02 , string(displayedTime), timerTextSize, timerTextSize,0);
}

//draw_text_transformed(room_width*0.45, room_height*0.1 , "Timer", timerTextSize, timerTextSize,0);
//Make an imageText for "TIMER"

if (global_time == 0) {
	if (global.playerCurrentHP1 > global.playerCurrentHP2)
	{
		gameTitle = "PLAYER 1 WIN!"
		
		instance_deactivate_object(o_chosen_player1);
	instance_deactivate_object(o_chosen_player2);
instance_deactivate_object(o_ball);
	instance_deactivate_object(o_lifebar_player1);
	instance_deactivate_object(o_lifebar_player2);

	}
	else if (global.playerCurrentHP1 < global.playerCurrentHP2) 
	{
		gameTitle = "PLAYER 2 WIN!"
	
		instance_deactivate_object(o_chosen_player1);
	instance_deactivate_object(o_chosen_player2);
instance_deactivate_object(o_ball);
	instance_deactivate_object(o_lifebar_player1);
	instance_deactivate_object(o_lifebar_player2);

	}
	else 
	{
		gameTitle = "DRAW!"

		instance_deactivate_object(o_chosen_player1);
	instance_deactivate_object(o_chosen_player2);
instance_deactivate_object(o_ball);
	instance_deactivate_object(o_lifebar_player1);
	instance_deactivate_object(o_lifebar_player2);

	}

//END
/// @description Insert description here
// You can write your code in this editor

	/*
	draw_set_color(c_black);
	draw_set_alpha(0.1);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_halign(fa_center);
	draw_set_font(fnt_monogram);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(room_width/2, room_height/2, "Game Paused");
	*/
	// Set default font
draw_set_font(fnt_monogram);


// Loop through the array containing each menu element
for(i = 0; i < array_length_1d(menu); i++)
{
	// If you're looking at the currently selected element, 
	// then draw it with a certain color, if not, then with
	// another color
	if(selected == i)
	{
		draw_set_color(selectedCol);
	}
	else
	{
		draw_set_color(notSelectedCol);
	}
	
	// Draw the text
	draw_text_transformed(room_width*0.35, (room_height*0.35) +i*spacing, menu[i], p_fontSize, p_fontSize, 0);
	//draw_text(x,y+i*spacing, menu[i]);	
}
// Getting width of cursor to separate it a bit from the menu


// Draw game title (at 10% of screen width and height, hence 0.1)
draw_set_color(titleCol);
draw_text_transformed(room_width*0.35, room_height*0.25 , gameTitle, p_titleSize, p_titleSize,0);

}
