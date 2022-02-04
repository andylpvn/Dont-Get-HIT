/// @description Insert description here
// You can write your code in this editor

//movement limitation
x = clamp(x, 55, 1310);

if (global.mychar == 20) 
{
	//default position once the game starts
	if(keyboard_check_released(vk_space))
	{
			sprite_index = s_character1_idle_leftside;	
	}
	
	//right side walk and idle 
	if ( keyboard_check_released(ord("L")))
	{

		x+=0;
			sprite_index = s_character1_idle;
		
	}

	 if (keyboard_check(ord("L"))) 
		{
		if (!place_meeting(x-1, y, o_chosen_player1))
		{
			x+=5;
		}

			sprite_index = s_character1_walk;
			
		}
	
	
		//left side walk and idle
	 if (keyboard_check(ord("J"))) 
		{
		if (!place_meeting(x, y, o_chosen_player1))
		{
			x-=5;
		}
		
			sprite_index = s_character1_walk_leftside;
	
		}

	if (keyboard_check_released(ord("J")))

	{
		x-=0;
			sprite_index = s_character1_idle_leftside;

	}	
	
		//crouch	
	if (keyboard_check_pressed(ord("K")))
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
	
    if (keyboard_check_released(ord("K"))) 
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

else if (global.mychar == 21) 
{
	//default position once the game starts
	if(keyboard_check_released(vk_space))
	{
			sprite_index = s_character2_idle_leftside;	
	}
	
	//right side walk and idle 
	if ( keyboard_check_released(ord("L")))
	{

		x+=0;
			sprite_index = s_character2_idle;
		
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
			sprite_index = s_character2_walk;
			
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
			sprite_index = s_character2_walk_leftside;
	
		}

	if (keyboard_check_released(ord("J")))

	{
		x-=0;
			sprite_index = s_character2_idle_leftside;

	}	
	
		//crouch	
	if (keyboard_check_pressed(ord("K")))
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
	
    if (keyboard_check_released(ord("K"))) 
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

else if (global.mychar == 22)
{
	//default position once the game starts
	if(keyboard_check_released(vk_space))
	{
			sprite_index = s_character3_idle_leftside;	
	}
	
	//right side walk and idle 
	if ( keyboard_check_released(ord("L")))
	{

		x+=0;
			sprite_index = s_character3_idle;
		
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
			sprite_index = s_character3_walk;
			
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
			sprite_index = s_character3_walk_leftside;
	
		}

	if (keyboard_check_released(ord("J")))

	{
		x-=0;
			sprite_index = s_character3_idle_leftside;

	}	
	
		//crouch	
	if (keyboard_check_pressed(ord("K")))
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
	
    if (keyboard_check_released(ord("K"))) 
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


else if (global.mychar == 23)
{
	//default position once the game starts
	if(keyboard_check_released(vk_space))
	{
			sprite_index = s_character4_idle_leftside;	
	}
	
	//right side walk and idle 
	if ( keyboard_check_released(ord("L")))
	{

		x+=0;
			sprite_index = s_character4_idle;
		
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
			sprite_index = s_character4_walk;
			
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
			sprite_index = s_character4_walk_leftside;
	
		}

	if (keyboard_check_released(ord("J")))

	{
		x-=0;
			sprite_index = s_character4_idle_leftside;

	}	
	
		//crouch	
	if (keyboard_check_pressed(ord("K")))
	{
		if (sprite_index = s_character4_idle_leftside)
		{
		sprite_index = s_character4_crouch_leftside;
		}
		else
		{
			sprite_index = s_character4_crouch;
		}
	}
	
    if (keyboard_check_released(ord("K"))) 
	{
		if (sprite_index = s_character4_crouch_leftside)
		{
		sprite_index = s_character4_idle_leftside;
		}
		else
		{
			sprite_index = s_character4_idle;
		}		
	}
}


else if (global.mychar == 24)
{
	//default position once the game starts
	if(keyboard_check_released(vk_space))
	{
			sprite_index = s_character5_idle_leftside;	
	}
	
	//right side walk and idle 
	if ( keyboard_check_released(ord("L")))
	{

		x+=0;
			sprite_index = s_character5_idle;
		
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
			sprite_index = s_character5_walk;
			
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
			sprite_index = s_character5_walk_leftside;
	
		}

	if (keyboard_check_released(ord("J")))

	{
		x-=0;
			sprite_index = s_character5_idle_leftside;

	}	
	
		//crouch	
	if (keyboard_check_pressed(ord("K")))
	{
		if (sprite_index = s_character5_idle_leftside)
		{
		sprite_index = s_character5_crouch_leftside;
		}
		else
		{
			sprite_index = s_character5_crouch;
		}
	}
	
    if (keyboard_check_released(ord("K"))) 
	{
		if (sprite_index = s_character5_crouch_leftside)
		{
		sprite_index = s_character5_idle_leftside;
		}
		else
		{
			sprite_index = s_character5_idle;
		}		
	}
}

else if (global.mychar == 25)
{
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
