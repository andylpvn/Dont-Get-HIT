// Font settings
draw_set_font(fnt_monogram); // font
draw_set_halign(fa_center); // horizontally aligns to center
draw_set_valign(fa_middle); // vertically aligns to center
draw_set_color(notSelectedCol); // color

// Display the controlsTitle (x, y, string, xScale, yScale, angle) 
draw_text_transformed(room_width/2, room_width/12, controlsTitle[0], 1, 1, 0);
/// @description Insert description here
// You can write your code in this editor
