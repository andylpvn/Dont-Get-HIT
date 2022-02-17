#region reusable vars

//var hasThrown = holder == noone; //this means we've been thrown
var hasThrown = holder == noone;
#endregion





#region increment counts


	if (hasThrown)
	{
		thrownFramesCount += 1;
	}

	#endregion
	#region prevent through wall

	if (hasThrown)
	{
		var wall = instance_place(x, y, o_ball);
	
	
	if (collision_circle(x, y, 20, o_chosen_player2, false, true))
	{
		
		global.playerCurrentHP2-=35;
		instance_destroy();
	
		
	}


	


		//ignore rocks for now
		if (wall != noone && wall.object_index != o_ball )
		{

			instance_destroy();
		}
		

	}

	#endregion
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