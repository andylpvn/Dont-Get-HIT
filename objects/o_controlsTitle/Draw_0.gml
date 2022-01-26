// Set font settings
draw_set_font(fnt_monogram); //font
draw_set_halign(fa_center); //centered

// Loop through the array containing each menu element
for(i = 0; i < array_length_1d(menu); i++)
{
	draw_set_color(notSelectedCol);
	draw_text(x,y, menu[i]);	
}