/// @description wrap_index(index, inc, size)
/// @param index
/// @param inc
/// @param size
function wrap_index2(argument0, argument1, argument2) {

	var index2 = argument0;
	var inc2 = argument1;
	var size2 = argument2;

	return (((index2 + inc2) % size2) + size2) % size2;


}
