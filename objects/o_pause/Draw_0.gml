/// @description Insert description here
// You can write your code in this editor
if (pause) 
{
	/*
	draw_set_color(c_black);
	draw_set_alpha(0.1);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_halign(fa_center);
	draw_set_font(fnt_monogram);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(room_width/2, room_height/2, "Game Paused");
	*/
	// Set default font
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
	draw_text_transformed(room_width*0.45, (room_height*0.45) +i*spacing, menu[i], fontSize, fontSize, 0);
	//draw_text(x,y+i*spacing, menu[i]);	
}
// Getting width of cursor to separate it a bit from the menu


// Draw game title (at 10% of screen width and height, hence 0.1)
draw_set_color(titleCol);
draw_text_transformed(room_width*0.45, room_height*0.35 , gameTitle, titleSize, titleSize,0);
}
