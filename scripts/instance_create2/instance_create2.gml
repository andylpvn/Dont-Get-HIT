/// @description instance_create(xx, yy, obj, [dep=0]);
/// @param xx
/// @param yy
/// @param obj
/// @param [depth]
function instance_create2() {

	var xx2 = argument[0];
	var yy2 = argument[1];
	var obj2 = argument[2];

	var dep2 = 0;
	if (argument_count == 4)
	{
		dep2 = argument[3];
	}

	return instance_create_depth(xx2, yy2, dep2, obj2);


}
