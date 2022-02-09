#region reusable vars

var hasThrown = holder == noone; //this means we've been thrown

#endregion


if (hasThrown)
{
	thrownFramesCount += 1;
}

#region run motion

if (hasThrown)
{
	//give it some illusion of falling
	shadow_yoffset = ease_in_quad(thrownFramesCount, LIFT_HEIGHT, 0, throwTime);
	
	if (direction_between(direction, 10, 170))
	{
		renderY = ease_out_quad(thrownFramesCount, throwYStart, throwYEnd, throwTime);
	}
	else
	{
		renderY = ease_in_quad(thrownFramesCount, throwYStart, throwYEnd, throwTime);
	}
    
	if (thrownFramesCount >= throwTime)
	{
		instance_destroy();
	}
}

#endregion