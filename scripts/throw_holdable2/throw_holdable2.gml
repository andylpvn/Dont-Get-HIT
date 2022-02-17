// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function throw_holdable2(argument0){
//assumes holding variable

	var conditionIn2 = argument0;

	var success2 = false;

	if (holding2 != noone)
	{
		if (conditionIn2)
		{
		    with (holding2)
		    {
		        event_perform(ev_other, ev_throw2);

		    }
		
			holdingState2 = "throwing2";
			holding2 = noone; //the holder is no longer holding

			success2 = true;
		}
	}
	

	return success2;
}