/// @description direction_360(dir) returns a direction between 0 and 359, accounting for negative directions and over 359 direction
/// @param dir
function direction_3602(argument0) {

	var dir2 = argument0;

	return wrap_index(dir2, 0, DEGREES_IN_CIRCLE2);


}
