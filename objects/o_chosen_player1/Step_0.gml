/*PLAYER 1*/



//movement limitation
x = clamp(x, 50, 1315);
y = clamp(y, 0, 500);
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

			x+=5;
			sprite_index = s_character1_walk;
			
		}
		
		//left side walk and idle
	 if (keyboard_check(ord("A"))) 
		{

			x-=5;
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
		
		sprite_index = s_character1_crouch;

	}
	
	if (keyboard_check_released(ord("S")))
	{
		
		sprite_index = s_character1_idle;
	}
	


	if (keyboard_check_pressed(ord("W")))
	{ 
		sprite_index = s_character1_crouch;
		y-=100; 
		gravity=1;
	}


}


else if (global.chosenPlayer1 == 1) 
{
	sprite_index = s_character2_idle;
	draw_sprite(s_character2_idle, 0, 150, 225 );
}

else if (global.chosenPlayer1 == 2)
{
	sprite_index = s_character3_idle;
	draw_sprite(s_character3_idle, 0, 150, 225 );
}


else if (global.chosenPlayer1 == 3)
{
	sprite_index = s_character4_idle;
	draw_sprite(s_character4_idle, 0, 150, 225 );
}


else if (global.chosenPlayer1 == 4)
{
	sprite_index = s_character5_idle;
	draw_sprite(s_character5_idle, 0, 150, 225 );
}

else if (global.chosenPlayer1 == 5)
{
	sprite_index = s_character6_idle;	
	draw_sprite(s_character6_idle, 0, 150, 225 );
}