// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player1_controlKeys_character2(){
	//default position once the game starts
	if(keyboard_check_released(vk_space))
	{
			sprite_index = s_character2_idle;	
	}
	

//right side walk and idle 
	if ( keyboard_check_released(ord("D")))
	{

		x+=0;
			sprite_index = s_character2_idle;
		
	}

	 if (keyboard_check(ord("D"))) 
		{
		
			x+=6;
		
			sprite_index = s_character2_walk;
			
		}
	
	
		//left side walk and idle
	 if (keyboard_check(ord("A"))) 
		{
		
			x-=6;
	
			sprite_index = s_character2_walk_leftside;
	
		}

	if (keyboard_check_released(ord("A")))

	{
		x-=0;
			sprite_index = s_character2_idle_leftside;

	}	
	
		//crouch	
	if (keyboard_check_pressed(ord("S")))
	{
		if (sprite_index = s_character2_idle_leftside)
		{
		sprite_index = s_character2_crouch_leftside;
		}
		else
		{
			sprite_index = s_character2_crouch;
		}
	}
	
    if (keyboard_check_released(ord("S"))) 
	{
		if (sprite_index = s_character2_crouch_leftside)
		{
		sprite_index = s_character2_idle_leftside;
		}
		else
		{
			sprite_index = s_character2_idle;
		}		
	}
	
	
}
