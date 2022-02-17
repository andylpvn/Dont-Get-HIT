/// @description compass_direction(dir) returns closest 0, 90, 180 or 270 based on full 360 direction
/// @param dir
function compass_direction2(argument0) {

	var dir2 = direction_360(argument0);

	if (dir2 > 45 && dir2 <= 135)
	{
	    return 90;
	}
	else if (dir2 > 135 && dir2 <= 225)
	{
	    return 180;
	}
	else if (dir2 > 225 && dir2 <= 315)
	{
	    return 270;
	}
	else
	{
	    return 0;
	}



}
