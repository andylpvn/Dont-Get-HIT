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

			x+=5;
			sprite_index = s_character1_walk;
			
		}
		
		//left side walk and idle
	 if (keyboard_check(ord("J"))) 
		{

			x-=5;
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
		
		sprite_index = s_character1_crouch;

	}
	
	if (keyboard_check_released(ord("K")))
	{
		
		sprite_index = s_character1_idle;
	}

}

else if (global.mychar == 21) 
{
	sprite_index = s_character2_idle;
	draw_sprite(s_character2_idle, 0, 550, 225 );
}

else if (global.mychar == 22)
{
	sprite_index = s_character3_idle;
	draw_sprite(s_character3_idle, 0, 550, 225 );
}


else if (global.mychar == 23)
{
	sprite_index = s_character4_idle;
	draw_sprite(s_character4_idle, 0, 550, 225 );
}


else if (global.mychar == 24)
{
	sprite_index = s_character5_idle;
	draw_sprite(s_character5_idle, 0, 550, 225 );
}

else if (global.mychar == 25)
{
	sprite_index = s_character6_idle;	
	draw_sprite(s_character6_idle, 0, 550, 225 );
}
