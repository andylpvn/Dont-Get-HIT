/// @description prevent_through_object(object) prevents an object from moving through an object. returns 2 if "stuck", 1 if hit and 0 if not hit
/// @param object
function prevent_through_object2(argument0) {

	var object2 = argument0;

	var hspd_start2 = hspeed;
	var vspd_start2 = vspeed;

	var hspd2 = hspeed;
	var vspd2 = vspeed;

	var hit2 = 0;

	var inst2 = instance_place(x + hspd2, y + vspd2, object2);

	if (inst2 != noone)
	{
		if (place_meeting(x + hspd2, y, inst2))
		{
		    hit2 = 1;
		    hspd2 = 0;
		}
    
		if (place_meeting(x, y + vspd2, inst2))
		{
		    hit2 = 1;
		    vspd2 = 0;
		}
    
		//if collision not detected (cuz diag)
		if (hit2 == 0)
		{
		    hit2 = 1;
		    hspd2 = 0;
		    vspd2 = 0;
		}
    
		speed = magnitude(hspd2, vspd2);
		if (speed > 0)
		{
		    direction = point_direction(0, 0, hspd2, vspd2);
		}
    
		//if for some reason we are still colling, move back to previous speed spot
		if (place_meeting(x + hspd2, y + vspd2, inst2))
		{
		    hit2 = 2;
		    x = x - hspd_start2;
		    y = y - vspd_start2;
		}
	}

	_temp[0] = inst2;

	return hit2;


}
