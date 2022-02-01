/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_monogram);
if (global_time > 10) {
draw_set_color(c_white);

}
else 
{
	 draw_set_color(c_red);
}


if (global_time > 9) 
{
	draw_text_transformed(room_width*0.47, room_height*0.15 , string(displayedTime), timerTextSize, timerTextSize,0);
}
else 
{
	draw_text_transformed(room_width*0.48, room_height*0.15 , string(displayedTime), timerTextSize, timerTextSize,0);
}

//player 1 lifebar
if (playerCurrentHP1 > 80 ) 
{
draw_healthbar(x*0.18, y*0.15, 250, 55, (playerCurrentHP1/playerMaxHP1) * 100, c_ltgray, c_black, c_green, 0, true, true);
}
else if (playerCurrentHP1 > 50 ) 
{
	draw_healthbar(x*0.18, y*0.15, 250, 55, (playerCurrentHP1/playerMaxHP1) * 100, c_ltgray, c_black, c_yellow, 0, true, true);
}
else if (playerCurrentHP1 > 20 )
{
	draw_healthbar(x*0.18, y*0.15, 250, 55, (playerCurrentHP1/playerMaxHP1) * 100, c_ltgray, c_black, c_orange, 0, true, true);
}

else 
{
	draw_healthbar(x*0.18, y*0.15, 250, 55, (playerCurrentHP1/playerMaxHP1) * 100, c_ltgray, c_black, c_red, 0, true, true);	
}


//player 2  lifebar
if (playerCurrentHP2 > 80 ) 
{
	
 draw_healthbar(x*0.18, y*0.15, 850, 55, (playerCurrentHP2/playerMaxHP2) * 100, c_ltgray, c_black, c_green, 0, true, true);
}
else if (playerCurrentHP2 > 50 ) 
{
	draw_healthbar(x*0.18, y*0.15, 850, 55, (playerCurrentHP2/playerMaxHP2) * 100, c_ltgray, c_black, c_yellow, 0, true, true);
}
else if (playerCurrentHP2 > 20 )
{
	draw_healthbar(x*0.18, y*0.15, 850, 55, (playerCurrentHP2/playerMaxHP2) * 100, c_ltgray, c_black, c_orange, 0, true, true);
}

else 
{
	draw_healthbar(x*0.18, y*0.15, 850, 55, (playerCurrentHP/playerMaxHP) * 100, c_ltgray, c_black, c_red, 0, true, true);	
}
//draw_text_transformed(room_width*0.45, room_height*0.1 , "Timer", timerTextSize, timerTextSize,0);
//Make an imageText for "TIMER"
