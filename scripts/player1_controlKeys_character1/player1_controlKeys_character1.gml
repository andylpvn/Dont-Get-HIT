	//player1_controlKeys_character1();
		//default position once the game starts
function player1_controlKeys_character1(){
//default position once the game starts
	if(keyboard_check_released(vk_space))
	{
			sprite_index = s_character1_idle_leftside;	
	}
	
	//right side walk and idle 
	if ( keyboard_check_released(ord("D")))
	{

		x+=0;
			sprite_index = s_character1_idle;
		
	}

	 if (keyboard_check(ord("D"))) 
		{
		if (!place_meeting(x, y, o_chosen_player1))
		{
			x+=5;
		}
		else 
		{
			x-=1;
		}

			sprite_index = s_character1_walk;
			
		}
	
	
		//left side walk and idle
	 if (keyboard_check(ord("A"))) 
		{
		if (!place_meeting(x, y, o_chosen_player1))
		{
			x-=5;
		}
		else 
		{
			x-=1;
		}
			sprite_index = s_character1_walk_leftside;
	
		}

	if (keyboard_check_released(ord("A")))

	{
		x-=0;
			sprite_index = s_character1_idle_leftside;

	}	
	
		//crouch	
	if (keyboard_check_pressed(ord("S")))
	{
		if (sprite_index = s_character1_idle_leftside)
		{
		sprite_index = s_character1_crouch_leftside;
		}
		else
		{
			sprite_index = s_character1_crouch;
		}
	}
	
    if (keyboard_check_released(ord("S"))) 
	{
		if (sprite_index = s_character1_crouch_leftside)
		{
		sprite_index = s_character1_idle_leftside;
		}
		else
		{
			sprite_index = s_character1_idle;
		}		
	}
	
}