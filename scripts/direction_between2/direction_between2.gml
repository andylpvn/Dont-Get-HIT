/// @description direction_between(val, small, big)
/// @param val
/// @param  small
/// @param  big
function direction_between2(argument0, argument1, argument2) {

	var val2 = argument0;
	var small2 = direction_360(argument1);
	var big2 = direction_360(argument2);

	if (big2 < small2)
	{
	    return val2 >= small2 || val2 <= big2;
	}
	else
	{
	    return is_between(val2, small2, big2);
	}



}
