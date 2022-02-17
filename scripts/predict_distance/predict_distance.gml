/// @description predict_distance(duration, start, stop, script) predicts a distance. returns said distance.
/// @param duration
/// @param start
/// @param stop
/// @param script
function predict_distance(argument0, argument1, argument2, argument3) {

	var duration = argument0;
	var start = argument1;
	var stop = argument2;
	var script = argument3;

	var dist = 0;

	for (var i=0; i<duration; i++)
	{
		dist += script_execute(script, i, start, stop, duration);
	}

	return dist;


}
