/// @description ease_in_expo(time, start, stop, duration)
/// @param time
/// @param start
/// @param stop
/// @param duration
function ease_in_expo2(argument0, argument1, argument2, argument3) {

	/*
	you need to set up a timer for the "time" variable

	time        = the point in time along the graph e.g. at the start 0
	start       = value of the starting point e.g. at the start 100
	stop		= value of the ending point e.g. at the end 200
	duration    = amount of "time" it should take to reach the end value e.g. 30 
	*/

	var time2 = argument0;
	var start2 = argument1;
	var stop2 = argument2;
	var duration2 = argument3;

	time2 = floor(clamp(time2, 0, duration2));

	var change2 = stop2 - start2;

	return change2 * power(2, 10 * (time2 / duration2 - 1)) + start2;



}
