/// @description Insert description here
// You can write your code in this editor
if (pause) 
{
draw_set_font(fnt_monogram);


// Loop through the array containing each menu element
for(i = 0; i < array_length_1d(menu); i++)
{
	// If you're looking at the currently selected element, 
	// then draw it with a certain color, if not, then with
	// another color
	if(selected == i)
	{
		draw_set_color(selectedCol);
	}
	else
	{
		draw_set_color(notSelectedCol);
	}
	
	// Draw the text
	draw_text_transformed(room_width*0.45, (room_height*0.45) +i*spacing, menu[i], p_fontSize, p_fontSize, 0);
	//draw_text(x,y+i*spacing, menu[i]);	
}
// Getting width of cursor to separate it a bit from the menu


// Draw game title (at 10% of screen width and height, hence 0.1)
draw_set_color(titleCol);
draw_text_transformed(room_width*0.45, room_height*0.35 , gameTitle, p_titleSize, p_titleSize,0);
}

if (global.playerCurrentHP1 <=0 ) 
{
	gameTitle = "PLAYER 2 WIN!"
	instance_deactivate_object(o_chosen_player1);
	instance_deactivate_object(o_chosen_player2);
	instance_deactivate_object(o_timer);
	instance_deactivate_object(o_lifebar_player1);
	instance_deactivate_object(o_lifebar_player2);
	instance_deactivate_object(o_ball);
	
	draw_set_font(fnt_monogram);


// Loop through the array containing each menu element
for(i = 0; i < array_length_1d(menu2); i++)
{
	// If you're looking at the currently selected element, 
	// then draw it with a certain color, if not, then with
	// another color
	if(selected == i)
	{
		draw_set_color(selectedCol);
	}
	else
	{
		draw_set_color(notSelectedCol);
	}
	
	// Draw the text
	draw_text_transformed(room_width*0.45, (room_height*0.55) +i*spacing, menu2[i], p_fontSize, p_fontSize, 0);
	//draw_text(x,y+i*spacing, menu[i]);	
}
// Getting width of cursor to separate it a bit from the menu


// Draw game title (at 10% of screen width and height, hence 0.1)
draw_set_color(titleCol);
draw_text_transformed(room_width*0.35, room_height*0.35 , gameTitle, p_titleSize, p_titleSize,0);
}

if (global.playerCurrentHP2 <=0 ) 
{
	gameTitle = "PLAYER 1 WIN!"
	
	instance_deactivate_object(o_chosen_player1);
	instance_deactivate_object(o_chosen_player2);
	instance_deactivate_object(o_timer);
		instance_deactivate_object(o_lifebar_player1);
	instance_deactivate_object(o_lifebar_player2);
instance_deactivate_object(o_ball);
	draw_set_font(fnt_monogram);


// Loop through the array containing each menu element
for(i = 0; i < array_length_1d(menu2); i++)
{
	// If you're looking at the currently selected element, 
	// then draw it with a certain color, if not, then with
	// another color
	if(selected == i)
	{
		draw_set_color(selectedCol);
	}
	else
	{
		draw_set_color(notSelectedCol);
	}
	
	// Draw the text
	draw_text_transformed(room_width*0.35, (room_height*0.45) +i*spacing, menu2[i], p_fontSize, p_fontSize, 0);
	//draw_text(x,y+i*spacing, menu[i]);	
}
// Getting width of cursor to separate it a bit from the menu


// Draw game title (at 10% of screen width and height, hence 0.1)
draw_set_color(titleCol);
draw_text_transformed(room_width*0.35, room_height*0.35 , gameTitle, p_titleSize, p_titleSize,0);
}
if (global.playerCurrentHP1 <=0 && global.playerCurrentHP2 <=0 ) 
{
	gameTitle = "DRAW"
	instance_deactivate_object(o_chosen_player1);
	instance_deactivate_object(o_chosen_player2);
	instance_deactivate_object(o_timer);
	instance_deactivate_object(o_lifebar_player1);
	instance_deactivate_object(o_lifebar_player2);
	instance_deactivate_object(o_ball);
	draw_set_font(fnt_monogram);


// Loop through the array containing each menu element
for(i = 0; i < array_length_1d(menu2); i++)
{
	// If you're looking at the currently selected element, 
	// then draw it with a certain color, if not, then with
	// another color
	if(selected == i)
	{
		draw_set_color(selectedCol);
	}
	else
	{
		draw_set_color(notSelectedCol);
	}
	
	// Draw the text
	draw_text_transformed(room_width*0.35, (room_height*0.45) +i*spacing, menu2[i], p_fontSize, p_fontSize, 0);
	//draw_text(x,y+i*spacing, menu[i]);	
}
// Getting width of cursor to separate it a bit from the menu


// Draw game title (at 10% of screen width and height, hence 0.1)
draw_set_color(titleCol);
draw_text_transformed(room_width*0.35, room_height*0.35 , gameTitle, p_titleSize, p_titleSize,0);
}
