// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player1_controlKeys_character3(){
	//default position once the game starts
	if(keyboard_check_released(vk_space))
	{
			sprite_index = s_character3_idle;	
	}
	
	//right side walk and idle 
	if ( keyboard_check_released(ord("D")))
	{

		x+=0;
			sprite_index = s_character3_idle;
		
	}

	 if (keyboard_check(ord("D"))) 
		{
		if (collision_circle(x-1, y, 35, o_ball2, false, true))
		{
			x-=1;
		}
		else 
		{
			x+=5;
		}
			sprite_index = s_character3_walk;
			
		}
	
	
		//left side walk and idle
	 if (keyboard_check(ord("A"))) 
		{
		if (!place_meeting(x, y, o_chosen_player2))
		{
			x-=5;
		}
		else 
		{
			x+=1;
		}
			sprite_index = s_character3_walk_leftside;
	
		}

	if (keyboard_check_released(ord("A")))

	{
		x-=0;
			sprite_index = s_character3_idle_leftside;

	}	
	
		//crouch	
	if (keyboard_check_pressed(ord("S")))
	{
		if (sprite_index = s_character3_idle_leftside)
		{
		sprite_index = s_character3_crouch_leftside;
		}
		else
		{
			sprite_index = s_character3_crouch;
		}
	}
	
    if (keyboard_check_released(ord("S"))) 
	{
		if (sprite_index = s_character3_crouch_leftside)
		{
		sprite_index = s_character3_idle_leftside;
		}
		else
		{
			sprite_index = s_character3_idle;
		}		
	}
}