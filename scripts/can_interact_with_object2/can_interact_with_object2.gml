/// @description can_interact_with_object(object, conditionIn, checkInFront, [tempMask]) checks if a pickable item can be picked
/// @param object
/// @param conditionIn
/// @param checkInFront
/// @param [tempMask]
function can_interact_with_object2() {
	//returns an object that can be picked

	var object2 = argument[0];
	var conditionIn2 = argument[1];
	var checkInFront2 = argument[2];

	var tempMask2 = -1;

	if (argument_count == 4)
	{
		tempMask2 = argument[3];	
	}

	var inst2 = noone;

	if (conditionIn2)
	{
		var oldMask2 = mask_index;
	
		if (tempMask2 != -1)
		{
			mask_index = tempMask2;
		}
	
		compute_centers();
	
		var xx2 = _temp[0];
		var yy2 = _temp[1];
	
		if (checkInFront2)
		{
			xx2 += lengthdir_x(8, animation_direction2);
			yy2 += lengthdir_y(8, animation_direction2);
		}
	
		var _tempList2 = ds_list_create();
		var size2 = instance_place_list(xx2, yy2, object2, _tempList2, true);
    
		mask_index = oldMask2;

		if (size2 > 0)
		{
			inst2 = _tempList2[| 0];
		}
	
		ds_list_destroy(_tempList2);
	}

	return inst2;


}
