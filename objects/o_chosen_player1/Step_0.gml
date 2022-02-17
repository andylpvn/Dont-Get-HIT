/*PLAYER 1*/

x = clamp(x, 55, 635);

y = clamp(y, 500, 700);




//-----player if statement
if (global.chosenPlayer1 == 0) //done in pickup and holding left and right
{
player1_controlKeys_character1();
	 #region temp vars

var didSomething = false;

#endregion
#region check if can throw holding

if (holdingState == "holding" && !didSomething)
{
	if (keyboard_check_pressed(ord("Q")))
	{
		didSomething = true;
		
		image_index = sprite_get_number(s_character1_walk) - 1;
		image_speed = CHARACTER_FPS;
		throw_holdable(true);
	}
}

#endregion
#region check if can pick up pickable

var pickedInstance = can_interact_with_object(o_ball, !didSomething, true, spr_link_mask_big2);
if (pickedInstance != noone)
{
	if (pickup_pickable(keyboard_check_pressed(ord("Q")), pickedInstance))
	{
		didSomething = true;
		
		image_index = 0;
		image_speed = CHARACTER_FPS;
	}
}

#endregion
#region speed setting

var hNoPress = 0;
var vNoPress = 0;

if (keyboard_check(ord("A")))
{
	hspeed -= ACCELERATION;
	hspeed = max(hspeed, -MAX_SPEED);
	h_deceleration_time = 0;
	hspeed_start = hspeed;
}
else
{
	hNoPress ++;	
}

if (keyboard_check(ord("D")))
{
	hspeed += ACCELERATION;
	hspeed = min(hspeed, MAX_SPEED);
	h_deceleration_time = 0;
	hspeed_start = hspeed;
}
else
{
	hNoPress ++;	
}

if (keyboard_check(ord("W")))
{
	vspeed -= ACCELERATION;
	vspeed = max(vspeed, -MAX_SPEED);
	v_deceleration_time = 0;
	vspeed_start = vspeed;
}
else
{
	vNoPress ++;	
}

if (keyboard_check(ord("S")))
{
	vspeed += ACCELERATION;
	vspeed = min(vspeed, MAX_SPEED);
	v_deceleration_time = 0;
	vspeed_start = vspeed;
}
else
{
	vNoPress ++;	
}

if (hNoPress == 2)
{
	h_deceleration_time ++;
	hspeed = ease_linear(h_deceleration_time, hspeed_start, 0, 5);
	
}
if (vNoPress == 2)
{
	v_deceleration_time ++;
	vspeed = ease_linear(v_deceleration_time, vspeed_start, 0, 5);
}

//force speed reset on picking or throwing
if (holdingState == "picking" || holdingState == "throwing")
{
	
	hspeed = 0;
	vspeed = 0;
	h_deceleration_time = 0;
	v_deceleration_time = 0;
	hspeed_start = 0;
	vspeed_start = 0;
}

#endregion
#region animation

depth = -y;

if (holdingState == "holding" || holdingState == false)
{
	if (speed == 0)
	{
		image_speed = 0;
	}
	else
	{
		animation_direction = compass_direction(direction);
		image_speed = CHARACTER_FPS;
	}
}

if (holdingState == "picking")
{
	 sprite_index_based_on_compass_direction(animation_direction, s_character1_crouch, s_character1_crouch, s_character1_crouch_leftside, s_character1_crouch_leftside);
}
else if (holdingState == "holding")
{
	sprite_index_based_on_compass_direction(animation_direction, s_character1_holding, s_character1_holding, s_character1_holding_left, s_character1_holding_left);
}
else
{
	sprite_index_based_on_compass_direction(animation_direction, s_character1_walk, s_character1_walk, s_character1_walk_leftside, s_character1_walk_leftside);
}

#endregion


}
//-----------------------------------------------------------------------------------------------------
else if (global.chosenPlayer1 == 1)  //done in pickup and holding left and right
{
	player1_controlKeys_character2();
	 #region temp vars

var didSomething = false;

#endregion
#region check if can throw holding

if (holdingState == "holding" && !didSomething)
{
	if (keyboard_check_pressed(ord("Q")))
	{
		didSomething = true;
		
		image_index = sprite_get_number(s_character2_walk) - 1;
		image_speed = CHARACTER_FPS;
		throw_holdable(true);
	}
}

#endregion
#region check if can pick up pickable

var pickedInstance = can_interact_with_object(o_ball, !didSomething, true, spr_link_mask_big2);
if (pickedInstance != noone)
{
	if (pickup_pickable(keyboard_check_pressed(ord("Q")), pickedInstance))
	{
		didSomething = true;
		
		image_index = 0;
		image_speed = CHARACTER_FPS;
	}
}

#endregion
#region speed setting

var hNoPress = 0;
var vNoPress = 0;

if (keyboard_check(ord("A")))
{
	hspeed -= ACCELERATION;
	hspeed = max(hspeed, -MAX_SPEED);
	h_deceleration_time = 0;
	hspeed_start = hspeed;
}
else
{
	hNoPress ++;	
}

if (keyboard_check(ord("D")))
{
	hspeed += ACCELERATION;
	hspeed = min(hspeed, MAX_SPEED);
	h_deceleration_time = 0;
	hspeed_start = hspeed;
}
else
{
	hNoPress ++;	
}

if (keyboard_check(ord("W")))
{
	vspeed -= ACCELERATION;
	vspeed = max(vspeed, -MAX_SPEED);
	v_deceleration_time = 0;
	vspeed_start = vspeed;
}
else
{
	vNoPress ++;	
}

if (keyboard_check(ord("S")))
{
	vspeed += ACCELERATION;
	vspeed = min(vspeed, MAX_SPEED);
	v_deceleration_time = 0;
	vspeed_start = vspeed;
}
else
{
	vNoPress ++;	
}

if (hNoPress == 2)
{
	h_deceleration_time ++;
	hspeed = ease_linear(h_deceleration_time, hspeed_start, 0, 5);
	
}
if (vNoPress == 2)
{
	v_deceleration_time ++;
	vspeed = ease_linear(v_deceleration_time, vspeed_start, 0, 5);
}

//force speed reset on picking or throwing
if (holdingState == "picking" || holdingState == "throwing")
{
	hspeed = 0;
	vspeed = 0;
	h_deceleration_time = 0;
	v_deceleration_time = 0;
	hspeed_start = 0;
	vspeed_start = 0;
}

#endregion
#region animation

depth = -y;

if (holdingState == "holding" || holdingState == false)
{
	if (speed == 0)
	{
		image_speed = 0;
	}
	else
	{
		animation_direction = compass_direction(direction);
		image_speed = CHARACTER_FPS;
	}
}

if (holdingState == "picking")
{
	 sprite_index_based_on_compass_direction(animation_direction, s_character2_pickup, s_character2_pickup, s_character2_pickup_left, s_character2_pickup_left);
}
else if (holdingState == "holding")
{
	sprite_index_based_on_compass_direction(animation_direction, s_character2_holding_left, s_character2_holding_left, s_character2_holding, s_character2_holding);
}
else
{
	sprite_index_based_on_compass_direction(animation_direction, s_character2_walk, s_character2_walk, s_character2_walk_leftside, s_character2_walk_leftside);
}

#endregion
//z#region prevent through wall

//prevent_through_object(o_chosen_player1);

//#endregion

}

else if (global.chosenPlayer1 == 2) //done in pickup and holding left and right
{
	player1_controlKeys_character3();
	 #region temp vars

var didSomething = false;

#endregion
#region check if can throw holding

if (holdingState == "holding" && !didSomething)
{
	if (keyboard_check_pressed(ord("Q")))
	{
		didSomething = true;
		
		image_index = sprite_get_number(s_character3_walk) - 1;
		image_speed = CHARACTER_FPS;
		throw_holdable(true);
	}
}

#endregion
#region check if can pick up pickable

var pickedInstance = can_interact_with_object(o_ball, !didSomething, true, spr_link_mask_big2);
if (pickedInstance != noone)
{
	if (pickup_pickable(keyboard_check_pressed(ord("Q")), pickedInstance))
	{
		didSomething = true;
		
		image_index = 0;
		image_speed = CHARACTER_FPS;
	}
}

#endregion
#region speed setting

var hNoPress = 0;
var vNoPress = 0;

if (keyboard_check(ord("A")))
{
	hspeed -= ACCELERATION;
	hspeed = max(hspeed, -MAX_SPEED);
	h_deceleration_time = 0;
	hspeed_start = hspeed;
}
else
{
	hNoPress ++;	
}

if (keyboard_check(ord("D")))
{
	hspeed += ACCELERATION;
	hspeed = min(hspeed, MAX_SPEED);
	h_deceleration_time = 0;
	hspeed_start = hspeed;
}
else
{
	hNoPress ++;	
}

if (keyboard_check(ord("W")))
{
	vspeed -= ACCELERATION;
	vspeed = max(vspeed, -MAX_SPEED);
	v_deceleration_time = 0;
	vspeed_start = vspeed;
}
else
{
	vNoPress ++;	
}

if (keyboard_check(ord("S")))
{
	vspeed += ACCELERATION;
	vspeed = min(vspeed, MAX_SPEED);
	v_deceleration_time = 0;
	vspeed_start = vspeed;
}
else
{
	vNoPress ++;	
}

if (hNoPress == 2)
{
	h_deceleration_time ++;
	hspeed = ease_linear(h_deceleration_time, hspeed_start, 0, 5);
	
}
if (vNoPress == 2)
{
	v_deceleration_time ++;
	vspeed = ease_linear(v_deceleration_time, vspeed_start, 0, 5);
}

//force speed reset on picking or throwing
if (holdingState == "picking" || holdingState == "throwing")
{
	hspeed = 0;
	vspeed = 0;
	h_deceleration_time = 0;
	v_deceleration_time = 0;
	hspeed_start = 0;
	vspeed_start = 0;
}

#endregion
#region animation

depth = -y;

if (holdingState == "holding" || holdingState == false)
{
	if (speed == 0)
	{
		image_speed = 0;
	}
	else
	{
		animation_direction = compass_direction(direction);
		image_speed = CHARACTER_FPS;
	}
}

if (holdingState == "picking")
{
	 sprite_index_based_on_compass_direction(animation_direction, s_character3_crouch, s_character3_crouch, s_character3_crouch_leftside, s_character3_crouch_leftside);
}
else if (holdingState == "holding")
{
	sprite_index_based_on_compass_direction(animation_direction, s_character3_holding_left, s_character3_holding_left, s_character3_holding, s_character3_holding);
}
else
{
	sprite_index_based_on_compass_direction(animation_direction, s_character3_walk, s_character3_walk, s_character3_walk_leftside, s_character3_walk_leftside);
}

#endregion

}

else if (global.chosenPlayer1 == 3) //done in pickup and holding left and right
{
	player1_controlKeys_character4();
	 #region temp vars

var didSomething = false;

#endregion
#region check if can throw holding

if (holdingState == "holding" && !didSomething)
{
	if (keyboard_check_pressed(ord("Q")))
	{
		didSomething = true;
		
		image_index = sprite_get_number(s_character4_walk) - 1;
		image_speed = CHARACTER_FPS;
		throw_holdable(true);
	}
}

#endregion
#region check if can pick up pickable

var pickedInstance = can_interact_with_object(o_ball, !didSomething, true, spr_link_mask_big2);
if (pickedInstance != noone)
{
	if (pickup_pickable(keyboard_check_pressed(ord("Q")), pickedInstance))
	{
		didSomething = true;
		
		image_index = 0;
		image_speed = CHARACTER_FPS;
	}
}

#endregion
#region speed setting

var hNoPress = 0;
var vNoPress = 0;

if (keyboard_check(ord("A")))
{
	hspeed -= ACCELERATION;
	hspeed = max(hspeed, -MAX_SPEED);
	h_deceleration_time = 0;
	hspeed_start = hspeed;
}
else
{
	hNoPress ++;	
}

if (keyboard_check(ord("D")))
{
	hspeed += ACCELERATION;
	hspeed = min(hspeed, MAX_SPEED);
	h_deceleration_time = 0;
	hspeed_start = hspeed;
}
else
{
	hNoPress ++;	
}

if (keyboard_check(ord("W")))
{
	vspeed -= ACCELERATION;
	vspeed = max(vspeed, -MAX_SPEED);
	v_deceleration_time = 0;
	vspeed_start = vspeed;
}
else
{
	vNoPress ++;	
}

if (keyboard_check(ord("S")))
{
	vspeed += ACCELERATION;
	vspeed = min(vspeed, MAX_SPEED);
	v_deceleration_time = 0;
	vspeed_start = vspeed;
}
else
{
	vNoPress ++;	
}

if (hNoPress == 2)
{
	h_deceleration_time ++;
	hspeed = ease_linear(h_deceleration_time, hspeed_start, 0, 5);
	
}
if (vNoPress == 2)
{
	v_deceleration_time ++;
	vspeed = ease_linear(v_deceleration_time, vspeed_start, 0, 5);
}

//force speed reset on picking or throwing
if (holdingState == "picking" || holdingState == "throwing")
{
	hspeed = 0;
	vspeed = 0;
	h_deceleration_time = 0;
	v_deceleration_time = 0;
	hspeed_start = 0;
	vspeed_start = 0;
}

#endregion
#region animation

depth = -y;

if (holdingState == "holding" || holdingState == false)
{
	if (speed == 0)
	{
		image_speed = 0;
	}
	else
	{
		animation_direction = compass_direction(direction);
		image_speed = CHARACTER_FPS;
	}
}

if (holdingState == "picking")
{
	 sprite_index_based_on_compass_direction(animation_direction, s_character4_crouch, s_character4_crouch, s_character4_crouch_leftside, s_character4_crouch_leftside);
}
else if (holdingState == "holding")
{
	sprite_index_based_on_compass_direction(animation_direction, s_character4_holding, s_character4_holding, s_character4_holding_left, s_character4_holding_left);
}
else
{
	sprite_index_based_on_compass_direction(animation_direction, s_character4_walk, s_character4_walk, s_character4_walk_leftside, s_character4_walk_leftside);
}

#endregion

}

else if (global.chosenPlayer1 == 4) //done in pickup and holding left and right
{
	player1_controlKeys_character5();
	 #region temp vars

var didSomething = false;

#endregion
#region check if can throw holding

if (holdingState == "holding" && !didSomething)
{
	if (keyboard_check_pressed(ord("Q")))
	{
		didSomething = true;
		
		image_index = sprite_get_number(s_character5_walk) - 1;
		image_speed = CHARACTER_FPS;
		throw_holdable(true);
	}
}

#endregion
#region check if can pick up pickable

var pickedInstance = can_interact_with_object(o_ball, !didSomething, true, spr_link_mask_big2);
if (pickedInstance != noone)
{
	if (pickup_pickable(keyboard_check_pressed(ord("Q")), pickedInstance))
	{
		didSomething = true;
		
		image_index = 0;
		image_speed = CHARACTER_FPS;
	}
}

#endregion
#region speed setting

var hNoPress = 0;
var vNoPress = 0;

if (keyboard_check(ord("A")))
{
	hspeed -= ACCELERATION;
	hspeed = max(hspeed, -MAX_SPEED);
	h_deceleration_time = 0;
	hspeed_start = hspeed;
}
else
{
	hNoPress ++;	
}

if (keyboard_check(ord("D")))
{
	hspeed += ACCELERATION;
	hspeed = min(hspeed, MAX_SPEED);
	h_deceleration_time = 0;
	hspeed_start = hspeed;
}
else
{
	hNoPress ++;	
}

if (keyboard_check(ord("W")))
{
	vspeed -= ACCELERATION;
	vspeed = max(vspeed, -MAX_SPEED);
	v_deceleration_time = 0;
	vspeed_start = vspeed;
}
else
{
	vNoPress ++;	
}

if (keyboard_check(ord("S")))
{
	vspeed += ACCELERATION;
	vspeed = min(vspeed, MAX_SPEED);
	v_deceleration_time = 0;
	vspeed_start = vspeed;
}
else
{
	vNoPress ++;	
}

if (hNoPress == 2)
{
	h_deceleration_time ++;
	hspeed = ease_linear(h_deceleration_time, hspeed_start, 0, 5);
	
}
if (vNoPress == 2)
{
	v_deceleration_time ++;
	vspeed = ease_linear(v_deceleration_time, vspeed_start, 0, 5);
}

//force speed reset on picking or throwing
if (holdingState == "picking" || holdingState == "throwing")
{
	hspeed = 0;
	vspeed = 0;
	h_deceleration_time = 0;
	v_deceleration_time = 0;
	hspeed_start = 0;
	vspeed_start = 0;
}

#endregion
#region animation

depth = -y;

if (holdingState == "holding" || holdingState == false)
{
	if (speed == 0)
	{
		image_speed = 0;
	}
	else
	{
		animation_direction = compass_direction(direction);
		image_speed = CHARACTER_FPS;
	}
}

if (holdingState == "picking")
{
	 sprite_index_based_on_compass_direction(animation_direction, s_character5_crouch, s_character5_crouch, s_character5_crouch_leftside, s_character5_crouch_leftside);
}
else if (holdingState == "holding")
{
	sprite_index_based_on_compass_direction(animation_direction, s_character5_holding, s_character5_holding, s_character5_holding_left, s_character5_holding_left);
}
else
{
	sprite_index_based_on_compass_direction(animation_direction, s_character5_walk, s_character5_walk, s_character5_walk_leftside, s_character5_walk_leftside);
}

#endregion

}

else if (global.chosenPlayer1 == 5)//done in pickup and holding left and right
{
	player1_controlKeys_character6();
	 #region temp vars

var didSomething = false;

#endregion
#region check if can throw holding

if (holdingState == "holding" && !didSomething)
{
	if (keyboard_check_pressed(ord("Q")))
	{
		didSomething = true;
		
		image_index = sprite_get_number(s_character6_walk) - 1;
		image_speed = CHARACTER_FPS;
		throw_holdable(true);
	}
}

#endregion
#region check if can pick up pickable

var pickedInstance = can_interact_with_object(o_ball, !didSomething, true, spr_link_mask_big2);
if (pickedInstance != noone)
{
	if (pickup_pickable(keyboard_check_pressed(ord("Q")), pickedInstance))
	{
		didSomething = true;
		
		image_index = 0;
		image_speed = CHARACTER_FPS;
	}
}

#endregion
#region speed setting

var hNoPress = 0;
var vNoPress = 0;

if (keyboard_check(ord("A")))
{
	hspeed -= ACCELERATION;
	hspeed = max(hspeed, -MAX_SPEED);
	h_deceleration_time = 0;
	hspeed_start = hspeed;
}
else
{
	hNoPress ++;	
}

if (keyboard_check(ord("D")))
{
	hspeed += ACCELERATION;
	hspeed = min(hspeed, MAX_SPEED);
	h_deceleration_time = 0;
	hspeed_start = hspeed;
}
else
{
	hNoPress ++;	
}

if (keyboard_check(ord("W")))
{
	vspeed -= ACCELERATION;
	vspeed = max(vspeed, -MAX_SPEED);
	v_deceleration_time = 0;
	vspeed_start = vspeed;
}
else
{
	vNoPress ++;	
}

if (keyboard_check(ord("S")))
{
	vspeed += ACCELERATION;
	vspeed = min(vspeed, MAX_SPEED);
	v_deceleration_time = 0;
	vspeed_start = vspeed;
}
else
{
	vNoPress ++;	
}

if (hNoPress == 2)
{
	h_deceleration_time ++;
	hspeed = ease_linear(h_deceleration_time, hspeed_start, 0, 5);
	
}
if (vNoPress == 2)
{
	v_deceleration_time ++;
	vspeed = ease_linear(v_deceleration_time, vspeed_start, 0, 5);
}

//force speed reset on picking or throwing
if (holdingState == "picking" || holdingState == "throwing")
{
	hspeed = 0;
	vspeed = 0;
	h_deceleration_time = 0;
	v_deceleration_time = 0;
	hspeed_start = 0;
	vspeed_start = 0;
}

#endregion
#region animation

depth = -y;

if (holdingState == "holding" || holdingState == false)
{
	if (speed == 0)
	{
		image_speed = 0;
	}
	else
	{
		animation_direction = compass_direction(direction);
		image_speed = CHARACTER_FPS;
	}
}

if (holdingState == "picking")
{
	 sprite_index_based_on_compass_direction(animation_direction, s_character6_crouch, s_character6_crouch, s_character6_crouch_leftside, s_character6_crouch_leftside);
}
else if (holdingState == "holding")
{
	sprite_index_based_on_compass_direction(animation_direction, s_character6_holding, s_character6_holding, s_character6_holding_left, s_character6_holding_left);
}
else
{
	sprite_index_based_on_compass_direction(animation_direction, s_character6_walk, s_character6_walk, s_character6_walk_leftside, s_character6_walk_leftside);
}

#endregion

}


