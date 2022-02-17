/// @description pickup_pickable(conditionIn, inst) picks up a pickable item
/// @param conditionIn
/// @param inst
function pickup_pickable2(argument0, argument1) {
	//assumes holding variable

	var conditionIn2 = argument0;
	var inst2 = argument1;

	var success2 = false;

	if (conditionIn2)
	{
		holdingState2 = "picking2";
		holding2 = instance_create(inst2.x-5, inst2.y, o_holdable2);
	
		//update some pointers
		holding2.reference2 = inst2;
		holding2.holder2 = self;
	
		//we use the character mask here because the x and y location of holding is exactly the character
		//since we don't want the rock to collide with the wall when thrown, we want to make sure it uses the same mask
		holding2.mask_index = self;
	
		//copy old mask index
		holding2.old_reference_mask_index2 = inst2.mask_index;
	
		//make the reference not have collisions
		inst2.mask_index = self;
	
		//make the reference invisible
		inst2.visible = false;
			
		success2 = true;
	}

	return success2;


}
