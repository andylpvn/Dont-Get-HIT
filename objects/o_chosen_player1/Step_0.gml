/// @description Insert description here
// You can write your code in this editor
//---movement
if (keyboard_check(ord("D"))) 
{
	x+=10;
}

if (keyboard_check(ord("A"))) 
{
	x-=10;
}



//-----player if statement
if (global.chosenPlayer1 == 0) 
{
	sprite_index = s_character1_idle;
	draw_sprite(s_character1_idle, 0, 150, 225 );


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