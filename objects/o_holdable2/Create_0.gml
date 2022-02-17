global.picked2=5;
#region make own event consts

ev_throw2 = ev_user0;

#endregion
#region override gm variables

image_speed = 0;
image_index = 0;
depth = -y;

#endregion
#region initialize variables

//how many frames have passed since we've thrown
thrownFramesCount2 = 0;

//how long throwing should happen
throwTime2 = 20;

reference2 = noone; //used to represent what we picked up
holder2 = noone; //used to represent who picked up

old_reference_mask_index2 = -1; //old mask_index of reference

//the location to draw at
renderX2 = x;
renderY2 = y;

//the ending location of the throw
throwYEnd2 = 0;

//is the starting position when thrown of the rendered position
throwYStart2 = 0;

//the shadow location
shadow_yoffset2 = 0;

#endregion