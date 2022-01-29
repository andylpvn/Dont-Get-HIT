/// @description Insert description here
// You can write your code in this editor


//player 2  lifebar
if (playerCurrentHP2 > 80 ) 
{
	
 draw_healthbar(x*.2, y*0.15, 500, 70, (playerCurrentHP2/playerMaxHP2) * 100, c_ltgray, c_black, c_green, 1, true, true);
}
else if (playerCurrentHP2 > 50 ) 
{
	draw_healthbar(x*.2, y*0.15, 500, 70, (playerCurrentHP2/playerMaxHP2) * 100, c_ltgray, c_black, c_yellow, 1, true, true);
}
else if (playerCurrentHP2 > 20 )
{
	draw_healthbar(x*.2, y*0.15, 500, 70, (playerCurrentHP2/playerMaxHP2) * 100, c_ltgray, c_black, c_orange, 1, true, true);
}

else 
{
	draw_healthbar(x*.2, y*0.15, 500, 70, (playerCurrentHP2/playerMaxHP2) * 100, c_ltgray, c_black, c_red, 1, true, true);	
}

