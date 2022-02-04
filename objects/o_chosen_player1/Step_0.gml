/*PLAYER 1*/



//movement limitation
x = clamp(x, 50, 1315);
if (place_meeting(x, y, o_chosen_player2))
{
	move_bounce_solid(true);
}
//-----player if statement
if (global.chosenPlayer1 == 0) 
{
	
	//default position once the game starts
	if(keyboard_check_released(vk_space))
	{
			sprite_index = s_character1_idle;	
	}

	//right side walk and idle 
	if ( keyboard_check_released(ord("D")))
	{
		x+=0;
			sprite_index = s_character1_idle;
	}

	 if (keyboard_check(ord("D"))) 
		{
		if (!place_meeting(x, y, o_chosen_player2))
		{
			x+=5;
		}

			sprite_index = s_character1_walk;
			
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
			x+=5
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

else if (global.chosenPlayer1 == 1) 
{
	

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
		if (!place_meeting(x, y, o_chosen_player2))
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

else if (global.chosenPlayer1 == 2)
{
	

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
		if (!place_meeting(x, y, o_chosen_player2))
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


else if (global.chosenPlayer1 == 3)
{

	//default position once the game starts
	if(keyboard_check_released(vk_space))
	{
			sprite_index = s_character4_idle;	
	}
	
	//right side walk and idle 
	if ( keyboard_check_released(ord("D")))
	{

		x+=0;
			sprite_index = s_character4_idle;
		
	}

	 if (keyboard_check(ord("D"))) 
		{
		if (!place_meeting(x, y, o_chosen_player2))
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
			sprite_index = s_character4_walk_leftside;
	
		}

	if (keyboard_check_released(ord("A")))

	{
		x-=0;
			sprite_index = s_character4_idle_leftside;

	}	
	
		//crouch	
	if (keyboard_check_pressed(ord("S")))
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
	
    if (keyboard_check_released(ord("S"))) 
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


else if (global.chosenPlayer1 == 4)
{
	//default position once the game starts
	if(keyboard_check_released(vk_space))
	{
			sprite_index = s_character5_idle;	
	}
	
	//right side walk and idle 
	if ( keyboard_check_released(ord("D")))
	{

		x+=0;
			sprite_index = s_character5_idle;
		
	}

	 if (keyboard_check(ord("D"))) 
		{
		if (!place_meeting(x, y, o_chosen_player2))
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
			sprite_index = s_character5_walk_leftside;
	
		}

	if (keyboard_check_released(ord("A")))

	{
		x-=0;
			sprite_index = s_character5_idle_leftside;

	}	
	
		//crouch	
	if (keyboard_check_pressed(ord("S")))
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
	
    if (keyboard_check_released(ord("S"))) 
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

else if (global.chosenPlayer1 == 5)
{
	//default position once the game starts
	if(keyboard_check_released(vk_space))
	{
			sprite_index = s_character6_idle;	
	}
	
	//right side walk and idle 
	if ( keyboard_check_released(ord("D")))
	{

		x+=0;
			sprite_index = s_character6_idle;
		
	}

	 if (keyboard_check(ord("D"))) 
		{
		if (!place_meeting(x, y, o_chosen_player2))
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
			sprite_index = s_character6_walk_leftside;
	
		}

	if (keyboard_check_released(ord("A")))

	{
		x-=0;
			sprite_index = s_character6_idle_leftside;

	}	
	
		//crouch	
	if (keyboard_check_pressed(ord("S")))
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
	
    if (keyboard_check_released(ord("S"))) 
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