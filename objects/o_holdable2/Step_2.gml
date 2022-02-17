#region set up position values

//if the object is being held
if (holder2 != noone)
{
	var finalX2 = holder2.x;
	var finalY2 = holder2.y - LIFT_HEIGHT2;

	//if the holder is picking up the object
	//we want to move the object towards its hands
	if (holder2.holdingState2 == "picking2")
	{
		var time2 = floor(holder2.image_index) + 1;
		var duration2 = holder2.image_number;
	
		renderX2 = ease_linear2(time2, xstart, finalX2, duration2);
		renderY2 = ease_linear2(time2, ystart, finalY2, duration2);		
	}
	else
	{
		renderX2 = finalX2;
		renderY2 = finalY2;
	}
	
	//set the x and y to holder for now
	x = holder2.x;
	y = holder2.y;
}
else
{	
	renderX2 = x;
}

reference2.x = x;
reference2.y = y;

#endregion