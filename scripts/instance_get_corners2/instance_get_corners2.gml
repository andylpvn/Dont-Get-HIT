/// @description instance_get_corners(inst, [useMask=false])
/// @param inst
/// @param [useMask=false]
function instance_get_corners2() {

	var inst2 = argument[0];

	var useMask2 = false;
	if (argument_count == 2)
	{
		useMask2 = argument[1];	
	}

	if (useMask2)
	{
		_temp[0] = inst2.bbox_left;
		_temp[1] = inst2.bbox_top;
		_temp[2] = inst2.bbox_right;
		_temp[3] = inst2.bbox_bottom;
	}
	else if (sprite_index != -1)
	{
		_temp[0] = inst2.x - inst2.sprite_xoffset;
		_temp[1] = inst2.y - inst2.sprite_yoffset;
		_temp[2] = _temp[0] + inst2.sprite_width;
		_temp[3] = _temp[1] + inst2.sprite_height;
	}
	else
	{
		_temp[0] = inst2.x;
		_temp[1] = inst2.y;
		_temp[2] = inst2.x;
		_temp[3] = inst2.y;
	}


}
