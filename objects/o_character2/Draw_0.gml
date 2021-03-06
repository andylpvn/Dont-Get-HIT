// Set default font
draw_set_font(fnt_monogram);


//Draw character
 draw_sprite(s_character1_idle_picture, 0, 150, 90);
 draw_sprite(s_character2_idle_picture, 0, 150, 115);
 draw_sprite(s_character3_idle_picture, 0, 150, 145);
 draw_sprite(s_character4_idle_picture, 0, 150, 168);
 draw_sprite(s_character5_idle_picture, 0, 150, 194);
 draw_sprite(s_character6_idle_picture, 0, 150, 225);

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
	draw_text(x,y + i*spacing, menu[i]);	
}
// Getting width of cursor to separate it a bit from the menu
var cursorWidth = sprite_get_width(s_cursor);

// Draw cursor at where it should be, but half its width 
// to the left of the menu      
 draw_sprite(s_cursor, -1, x + cursorLevitate - cursorWidth/2, y + selectLerp*spacing);

// Draw game title (at 10% of screen width and height, hence 0.1)
draw_set_color(titleCol);
draw_text_transformed(room_width*0.31, room_height*0.20 , gameTitle, titleSize, titleSize,0);