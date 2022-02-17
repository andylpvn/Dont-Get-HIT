event_inherited();
#region reset reference

with (reference2)
{
	event_perform(ev_other, ev_break2);
	//invoke the break event for the reference
	
	visible = true; //turn it back visible
	mask_index = other.old_reference_mask_index2; //reset the mask_index back to what it was originally
}

#endregion