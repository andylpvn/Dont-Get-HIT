// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player2_controlKeys_character6(){
	//default position once the game starts
	if(keyboard_check_released(vk_space))
	{
			sprite_index = s_character6_idle_leftside;	
	}
	
	//right side walk and idle 
	if ( keyboard_check_released(ord("L")))
	{

		x+=0;
			sprite_index = s_character6_idle;
		
	}

	 if (keyboard_check(ord("L"))) 
		{
		if (!place_meeting(x, y, o_chosen_player1))
		{
			x+=5;
		}
		else 
		{
			x-=1;
		}
			sprite_index = s_character6_walk;
			
		}
	
	
		//left side walk and idle
	 if (keyboard_check(ord("J"))) 
		{
		if (!place_meeting(x, y, o_chosen_player1))
		{
			x-=5;
		}
		else 
		{
			x+=1;	
		}
			sprite_index = s_character6_walk_leftside;
	
		}

	if (keyboard_check_released(ord("J")))

	{
		x-=0;
			sprite_index = s_character6_idle_leftside;

	}	
	
		//crouch	
	if (keyboard_check_pressed(ord("K")))
	{
		if (sprite_index = s_character6_idle_leftside)
		{
		sprite_index = s_character6_crouch_leftside;
		}
		else
		{
			sprite_index = s_character6_crouch;
		}
	}
	
    if (keyboard_check_released(ord("K"))) 
	{
		if (sprite_index = s_character6_crouch_leftside)
		{
		sprite_index = s_character6_idle_leftside;
		}
		else
		{
			sprite_index = s_character6_idle;
		}		
	}
}