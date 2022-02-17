/// @description compute_centers([inst=self, useMask=false])
/// @param [inst=self
/// @param useMask=false]
function compute_centers2() {

	var inst2 = self;
	var useMask2 = false;

	if (argument_count == 1)
	{
		inst2 = argument[0];
	}
	else if (argument_count == 2)
	{
		inst2 = argument[0];
		useMask2 = argument[1];	
	}

	instance_get_corners(inst2, useMask2);

	var left2 = _temp[0];
	var top2 = _temp[1];
	var right2 = _temp[2];
	var bottom2 = _temp[3];

	_temp[0] = left2 + (right2 - left2) * .5;
	_temp[1] = top2 + (bottom2 - top2) * .5;


}
