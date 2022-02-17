/// @description sprite_index_based_on_compass_direction(dir, sprite_right, sprite_up, sprite_left, sprite_down)
/// @param dir
/// @param  sprite_right
/// @param  sprite_up
/// @param  sprite_left
/// @param  sprite_down
function sprite_index_based_on_compass_direction2(argument0, argument1, argument2, argument3, argument4) {

	var dir2 = argument0;

	var sprite_right2 = argument1;
	var sprite_up2 = argument2;
	var sprite_left2 = argument3;
	var sprite_down2 = argument4;

	switch (dir2)
	{
	    case 0:
	        sprite_index = sprite_right2;
	        break;
	    case 90:
	        sprite_index = sprite_up2;
	        break;
	    case 180:
	        sprite_index = sprite_left2;
	        break;
	    case 270:
	        sprite_index = sprite_down2;
	        break;
		default:
			show_error(string(dir2) + " not supported direction.", true);
			break;
	}



}
