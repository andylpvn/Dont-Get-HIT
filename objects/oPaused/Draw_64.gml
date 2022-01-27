/// @description Insert description here
// You can write your code in this editor
if(pause){
	draw_set_color(c_black);
	draw_set_alpha(0.1);
	draw_rectangle(view_xport [0],view_yport[0],view_wport[0],view_hport[0],0);
	draw_set_halign(fa_center);
	draw_set_font(fnt_monogram);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(room_width/2,room_height/2,"Game Paused");
	//draw_text(room_get_viewport(0,3)/2,room_get_viewport
}