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
