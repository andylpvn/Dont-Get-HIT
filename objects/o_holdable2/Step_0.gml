#region reusable vars

//var hasThrown = holder == noone; //this means we've been thrown
var hasThrown2 = holder2 == noone;
#endregion





#region increment counts


	if (hasThrown2)
	{
		thrownFramesCount2 += 1;
	}

	#endregion
	#region prevent through wall

	if (hasThrown2)
	{
		var wall2 = instance_place(x, y, o_ball2);
	

	if (collision_circle(x, y, 20, o_chosen_player1, false, true))
	{
		global.playerCurrentHP1-=35;
		instance_destroy();
	
		
		
	}
	
	


		//ignore rocks for now
		if (wall2 != noone && wall2.object_index != o_ball2 )
		{

			instance_destroy();
		}
		

	}

	#endregion
	#region run motion

	if (hasThrown2)
	{
		//give it some illusion of falling
		shadow_yoffset2 = ease_in_quad2(thrownFramesCount2, LIFT_HEIGHT2, 0, throwTime2);
	
		if (direction_between2(direction, 10, 170))
		{
			renderY2 = ease_out_quad2(thrownFramesCount2, throwYStart2, throwYEnd2, throwTime2);
		}
		else
		{
			renderY2 = ease_in_quad2(thrownFramesCount2, throwYStart2, throwYEnd2, throwTime2);
		}
    
		if (thrownFramesCount2 >= throwTime2)
		{
			instance_destroy();
		}
	}


#endregion