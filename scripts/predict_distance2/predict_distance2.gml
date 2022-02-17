/// @description predict_distance(duration, start, stop, script) predicts a distance. returns said distance.
/// @param duration
/// @param start
/// @param stop
/// @param script
function predict_distance2(argument0, argument1, argument2, argument3) {

	var duration2 = argument0;
	var start2 = argument1;
	var stop2 = argument2;
	var script2 = argument3;

	var dist2 = 0;

	for (var i=0; i<duration2; i++)
	{
		dist2 += script_execute(script2, i, start2, stop2, duration2);
	}

	return dist2;


}
