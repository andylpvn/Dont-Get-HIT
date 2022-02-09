// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function characterMovements(){
	
		//move right
		if ( keyboard_check_pressed(ord("D")))
		{
			x+=5;
		}

		//move left
		if (keyboard_check_pressed(ord("A")))
		{
			x-=5;		
		}		

		//move up
		if (keyboard_check_pressed(ord("A")))
		{
			y+=5
		}
}