
function compass_direction(argument0) {

	var dir = direction_360(argument0);

	if (dir > 45 && dir <= 135)
	{
	    return 90;
	}
	else if (dir > 135 && dir <= 225)
	{
	    return 180;
	}
	else if (dir > 225 && dir <= 315)
	{
	    return 270;
	}
	else
	{
	    return 0;
	}



}

