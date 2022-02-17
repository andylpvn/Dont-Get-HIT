///@description throw
#region throw

speed = 35;
direction = holder2.animation_direction2;

//the actual object (not the render, moves constantly)
var dist2 = predict_distance2(throwTime2, speed, speed, ease_linear2);

//set final locations for actual and render
throwYEnd2 = y + lengthdir_y(dist2, direction);

//set the starting location for the throw
throwYStart2 = renderY2;
		
holder2 = noone; //the holder is deference since we are no longer holding

#endregion