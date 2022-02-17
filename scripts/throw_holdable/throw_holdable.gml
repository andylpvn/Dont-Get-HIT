/// @description throw_holdable(conditionIn) throws a holdable
/// @param conditionIn
function throw_holdable(argument0) {
	//assumes holding variable

	var conditionIn = argument0;

	var success = false;

	if (holding != noone)
	{
		if (conditionIn)
		{
		    with (holding)
		    {
		        event_perform(ev_other, ev_throw);

		    }
		
			holdingState = "throwing";
			holding = noone; //the holder is no longer holding

			success = true;
		}
	}
	

	return success;


}
