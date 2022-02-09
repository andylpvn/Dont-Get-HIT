
function direction_between(argument0, argument1, argument2) {

	var val = argument0;
	var small = direction_360(argument1);
	var big = direction_360(argument2);

	if (big < small)
	{
	    return val >= small || val <= big;
	}
	else
	{
	    return is_between(val, small, big);
	}



}

