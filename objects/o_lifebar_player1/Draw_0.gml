/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_monogram);


//player 1 lifebar
if (playerCurrentHP1 > 80 ) 
{
draw_healthbar(x*0.25, y*0.15, 500, 70, (playerCurrentHP1/playerMaxHP1) * 100, c_ltgray, c_black, c_green, 0, true, true);
}
else if (playerCurrentHP1 > 50 ) 
{
	draw_healthbar(x*0.25, y*0.15, 500, 70, (playerCurrentHP1/playerMaxHP1) * 100, c_ltgray, c_black, c_yellow, 0, true, true);
}
else if (playerCurrentHP1 > 20 )
{
	draw_healthbar(x*0.25, y*0.15, 500, 70, (playerCurrentHP1/playerMaxHP1) * 100, c_ltgray, c_black, c_orange, 0, true, true);
}

else 
{
	draw_healthbar(x*0.25, y*0.15, 500, 70, (playerCurrentHP1/playerMaxHP1) * 100, c_ltgray, c_black, c_red, 0, true, true);	
}

