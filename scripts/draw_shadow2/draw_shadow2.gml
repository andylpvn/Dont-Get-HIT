/// @description draw_shadow(xx, yy);
/// @param xx
/// @param yy
function draw_shadow2(argument0, argument1) {

	var xx2 = argument0;
	var yy2 = argument1;

	var width2 = 8;
	var height2 = 8;

	draw_set_alpha(.5);
	draw_ellipse_colour(xx2 - width2, yy2 - height2, xx2 + width2, yy2 + height2, c_black, c_black, false);
	draw_set_alpha(1);


}
