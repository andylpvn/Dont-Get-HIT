/// @description Insert description here
// You can write your code in this editor

//movement limitation
x = clamp(x, 750, 1310);

y = clamp(y, 500, 700);


if (global.mychar == 20) //done in pickup and holding left and right
{
	player2_controlKeys_character1();
		 #region temp vars

var didSomething2 = false;

#endregion
#region check if can throw holding
depth = -y;
if (holdingState2 == "holding2" && !didSomething2)
{
	if (keyboard_check_pressed(ord("O")))
	{
		didSomething2 = true;
		global.picked2+=1;
		image_index = sprite_get_number(s_character1_walk) - 1;
		image_speed = CHARACTER_FPS2;
		throw_holdable2(true);
	}
}

#endregion
#region check if can pick up pickable

var pickedInstance2 = can_interact_with_object2(o_ball2, !didSomething2, true, spr_link_mask_big2);
if (pickedInstance2 != noone)
{
	if (pickup_pickable2(keyboard_check_pressed(ord("O")), pickedInstance2))
	{
		didSomething2 = true;
		global.picked2+=1;
		image_index = 0;
		image_speed = CHARACTER_FPS2;
	}
}

#endregion
#region speed setting

var hNoPress2 = 0;
var vNoPress2 = 0;

if (keyboard_check(ord("J")))
{
	hspeed -= ACCELERATION2;
	hspeed = max(hspeed, -MAX_SPEED2);
	h_deceleration_time2 = 0;
	hspeed_start2 = hspeed;
}
else
{
	hNoPress2 ++;	
}

if (keyboard_check(ord("L")))
{
	hspeed += ACCELERATION2;
	hspeed = min(hspeed, MAX_SPEED2);
	h_deceleration_time2 = 0;
	hspeed_start2 = hspeed;
}
else
{
	hNoPress2 ++;	
}

if (keyboard_check(ord("I")))
{
	vspeed -= ACCELERATION2;
	vspeed = max(vspeed, -MAX_SPEED2);
	v_deceleration_time2 = 0;
	vspeed_start2 = vspeed;
}
else
{
	vNoPress2 ++;	
}

if (keyboard_check(ord("K")))
{
	vspeed += ACCELERATION2;
	vspeed = min(vspeed, MAX_SPEED2);
	v_deceleration_time2 = 0;
	vspeed_start2 = vspeed;
}
else
{
	vNoPress2 ++;	
}

if (hNoPress2 == 2)
{
	h_deceleration_time2 ++;
	hspeed = ease_linear2(h_deceleration_time2, hspeed_start2, 0, 5);
	
}
if (vNoPress2 == 2)
{
	v_deceleration_time2 ++;
	vspeed = ease_linear2(v_deceleration_time2, vspeed_start2, 0, 5);
}

//force speed reset on picking or throwing
if (holdingState2 == "picking2" || holdingState2 == "throwing2")
{
	hspeed = 0;
	vspeed = 0;
	h_deceleration_time2 = 0;
	v_deceleration_time2 = 0;
	hspeed_start2 = 0;
	vspeed_start2 = 0;
}

#endregion
#region animation

depth = -y;

if (holdingState2 == "holding2" || holdingState2 == false)
{
	if (speed == 0)
	{
		image_speed = 0;
	}
	else
	{
		animation_direction2 = compass_direction2(direction);
		image_speed = CHARACTER_FPS2;
	}
}

if (holdingState2 == "picking2")
{
	 sprite_index_based_on_compass_direction2(animation_direction2, s_character1_crouch, s_character1_crouch, s_character1_crouch_leftside, s_character1_crouch_leftside);
}
else if (holdingState2 == "holding2")
{
	sprite_index_based_on_compass_direction2(animation_direction2, s_character1_holding, s_character1_holding, s_character1_holding_left, s_character1_holding_left);
	
}
else
{
	sprite_index_based_on_compass_direction2(animation_direction2, s_character1_walk, s_character1_walk, s_character1_walk_leftside, s_character1_walk_leftside);
}

#endregion



}

else if (global.mychar == 21) //done in pickup and holding left and right
{
	player2_controlKeys_character2();
		 #region temp vars

var didSomething2 = false;

#endregion
#region check if can throw holding
depth = -y;
if (holdingState2 == "holding2" && !didSomething2)
{
	if (keyboard_check_pressed(ord("O")))
	{
		didSomething2 = true;
		
		image_index = sprite_get_number(s_character2_walk) - 1;
		image_speed = CHARACTER_FPS2;
		throw_holdable2(true);
	}
}

#endregion
#region check if can pick up pickable

var pickedInstance2 = can_interact_with_object2(o_ball2, !didSomething2, true, spr_link_mask_big2);
if (pickedInstance2 != noone)
{
	if (pickup_pickable2(keyboard_check_pressed(ord("O")), pickedInstance2))
	{
		didSomething2 = true;
	
		image_index = 0;
		image_speed = CHARACTER_FPS2;
	}
}

#endregion
#region speed setting

var hNoPress2 = 0;
var vNoPress2 = 0;

if (keyboard_check(ord("J")))
{
	hspeed -= ACCELERATION2;
	hspeed = max(hspeed, -MAX_SPEED2);
	h_deceleration_time2 = 0;
	hspeed_start2 = hspeed;
}
else
{
	hNoPress2 ++;	
}

if (keyboard_check(ord("L")))
{
	hspeed += ACCELERATION2;
	hspeed = min(hspeed, MAX_SPEED2);
	h_deceleration_time2 = 0;
	hspeed_start2 = hspeed;
}
else
{
	hNoPress2 ++;	
}

if (keyboard_check(ord("I")))
{
	vspeed -= ACCELERATION2;
	vspeed = max(vspeed, -MAX_SPEED2);
	v_deceleration_time2 = 0;
	vspeed_start2 = vspeed;
}
else
{
	vNoPress2 ++;	
}

if (keyboard_check(ord("K")))
{
	vspeed += ACCELERATION2;
	vspeed = min(vspeed, MAX_SPEED2);
	v_deceleration_time2 = 0;
	vspeed_start2 = vspeed;
}
else
{
	vNoPress2 ++;	
}

if (hNoPress2 == 2)
{
	h_deceleration_time2 ++;
	hspeed = ease_linear2(h_deceleration_time2, hspeed_start2, 0, 7);
	
}
if (vNoPress2 == 2)
{
	v_deceleration_time2 ++;
	vspeed = ease_linear2(v_deceleration_time2, vspeed_start2, 0, 7);
}

//force speed reset on picking or throwing
if (holdingState2 == "picking2" || holdingState2 == "throwing2")
{
	hspeed = 0;
	vspeed = 0;
	h_deceleration_time2 = 0;
	v_deceleration_time2 = 0;
	hspeed_start2 = 0;
	vspeed_start2 = 0;
}

#endregion
#region animation

depth = -y;

if (holdingState2 == "holding2" || holdingState2 == false)
{
	if (speed == 0)
	{
		image_speed = 0;
	}
	else
	{
		animation_direction2 = compass_direction2(direction);
		image_speed = CHARACTER_FPS2;
	}
}

if (holdingState2 == "picking2")
{
	 sprite_index_based_on_compass_direction2(animation_direction2, s_character2_pickup, s_character2_pickup, s_character2_pickup_left, s_character2_pickup_left);
}
else if (holdingState2 == "holding2")
{
	sprite_index_based_on_compass_direction2(animation_direction2, s_character2_holding_left, s_character2_holding_left, s_character2_holding, s_character2_holding);
}
else
{
	sprite_index_based_on_compass_direction2(animation_direction2, s_character2_walk, s_character2_walk, s_character2_walk_leftside, s_character2_walk_leftside);
}

#endregion



}

else if (global.mychar == 22)//done in pickup and holding left and right
{
	player2_controlKeys_character3();
		 #region temp vars

var didSomething2 = false;

#endregion
#region check if can throw holding
depth = -y;
if (holdingState2 == "holding2" && !didSomething2)
{
	if (keyboard_check_pressed(ord("O")))
	{
		didSomething2 = true;
		
		image_index = sprite_get_number(s_character3_walk) - 1;
		image_speed = CHARACTER_FPS2;
		throw_holdable2(true);
	}
}

#endregion
#region check if can pick up pickable

var pickedInstance2 = can_interact_with_object2(o_ball2, !didSomething2, true, spr_link_mask_big2);
if (pickedInstance2 != noone)
{
	if (pickup_pickable2(keyboard_check_pressed(ord("O")), pickedInstance2))
	{
		didSomething2 = true;
		
		image_index = 0;
		image_speed = CHARACTER_FPS2;
	}
}

#endregion
#region speed setting

var hNoPress2 = 0;
var vNoPress2 = 0;

if (keyboard_check(ord("J")))
{
	hspeed -= ACCELERATION2;
	hspeed = max(hspeed, -MAX_SPEED2);
	h_deceleration_time2 = 0;
	hspeed_start2 = hspeed;
}
else
{
	hNoPress2 ++;	
}

if (keyboard_check(ord("L")))
{
	hspeed += ACCELERATION2;
	hspeed = min(hspeed, MAX_SPEED2);
	h_deceleration_time2 = 0;
	hspeed_start2 = hspeed;
}
else
{
	hNoPress2 ++;	
}

if (keyboard_check(ord("I")))
{
	vspeed -= ACCELERATION2;
	vspeed = max(vspeed, -MAX_SPEED2);
	v_deceleration_time2 = 0;
	vspeed_start2 = vspeed;
}
else
{
	vNoPress2 ++;	
}

if (keyboard_check(ord("K")))
{
	vspeed += ACCELERATION2;
	vspeed = min(vspeed, MAX_SPEED2);
	v_deceleration_time2 = 0;
	vspeed_start2 = vspeed;
}
else
{
	vNoPress2 ++;	
}

if (hNoPress2 == 2)
{
	h_deceleration_time2 ++;
	hspeed = ease_linear2(h_deceleration_time2, hspeed_start2, 0, 5);
	
}
if (vNoPress2 == 2)
{
	v_deceleration_time2 ++;
	vspeed = ease_linear2(v_deceleration_time2, vspeed_start2, 0, 5);
}

//force speed reset on picking or throwing
if (holdingState2 == "picking2" || holdingState2 == "throwing2")
{
	hspeed = 0;
	vspeed = 0;
	h_deceleration_time2 = 0;
	v_deceleration_time2 = 0;
	hspeed_start2 = 0;
	vspeed_start2 = 0;
}

#endregion
#region animation

depth = -y;

if (holdingState2 == "holding2" || holdingState2 == false)
{
	if (speed == 0)
	{
		image_speed = 0;
	}
	else
	{
		animation_direction2 = compass_direction2(direction);
		image_speed = CHARACTER_FPS2;
	}
}

if (holdingState2 == "picking2")
{
	 sprite_index_based_on_compass_direction2(animation_direction2, s_character3_crouch, s_character3_crouch, s_character3_crouch_leftside, s_character3_crouch_leftside);
}
else if (holdingState2 == "holding2")
{
	sprite_index_based_on_compass_direction2(animation_direction2, s_character3_holding_left, s_character3_holding_left, s_character3_holding, s_character3_holding);
	
}
else
{
	sprite_index_based_on_compass_direction2(animation_direction2, s_character3_walk, s_character3_walk, s_character3_walk_leftside, s_character3_walk_leftside);
}

#endregion


}

else if (global.mychar == 23)//done in pickup and holding left and right
{
	player2_controlKeys_character4();
		 #region temp vars

var didSomething2 = false;

#endregion
#region check if can throw holding
depth = -y;
if (holdingState2 == "holding2" && !didSomething2)
{
	if (keyboard_check_pressed(ord("O")))
	{
		didSomething2 = true;
		global.picked2+=1;
		image_index = sprite_get_number(s_character4_walk) - 1;
		image_speed = CHARACTER_FPS2;
		throw_holdable2(true);
	}
}

#endregion
#region check if can pick up pickable

var pickedInstance2 = can_interact_with_object2(o_ball2, !didSomething2, true, spr_link_mask_big2);
if (pickedInstance2 != noone)
{
	if (pickup_pickable2(keyboard_check_pressed(ord("O")), pickedInstance2))
	{
		didSomething2 = true;
		global.picked2+=1;
		image_index = 0;
		image_speed = CHARACTER_FPS2;
	}
}

#endregion
#region speed setting

var hNoPress2 = 0;
var vNoPress2 = 0;

if (keyboard_check(ord("J")))
{
	hspeed -= ACCELERATION2;
	hspeed = max(hspeed, -MAX_SPEED2);
	h_deceleration_time2 = 0;
	hspeed_start2 = hspeed;
}
else
{
	hNoPress2 ++;	
}

if (keyboard_check(ord("L")))
{
	hspeed += ACCELERATION2;
	hspeed = min(hspeed, MAX_SPEED2);
	h_deceleration_time2 = 0;
	hspeed_start2 = hspeed;
}
else
{
	hNoPress2 ++;	
}

if (keyboard_check(ord("I")))
{
	vspeed -= ACCELERATION2;
	vspeed = max(vspeed, -MAX_SPEED2);
	v_deceleration_time2 = 0;
	vspeed_start2 = vspeed;
}
else
{
	vNoPress2 ++;	
}

if (keyboard_check(ord("K")))
{
	vspeed += ACCELERATION2;
	vspeed = min(vspeed, MAX_SPEED2);
	v_deceleration_time2 = 0;
	vspeed_start2 = vspeed;
}
else
{
	vNoPress2 ++;	
}

if (hNoPress2 == 2)
{
	h_deceleration_time2 ++;
	hspeed = ease_linear2(h_deceleration_time2, hspeed_start2, 0, 5);
	
}
if (vNoPress2 == 2)
{
	v_deceleration_time2 ++;
	vspeed = ease_linear2(v_deceleration_time2, vspeed_start2, 0, 5);
}

//force speed reset on picking or throwing
if (holdingState2 == "picking2" || holdingState2 == "throwing2")
{
	hspeed = 0;
	vspeed = 0;
	h_deceleration_time2 = 0;
	v_deceleration_time2 = 0;
	hspeed_start2 = 0;
	vspeed_start2 = 0;
}

#endregion
#region animation

depth = -y;

if (holdingState2 == "holding2" || holdingState2 == false)
{
	if (speed == 0)
	{
		image_speed = 0;
	}
	else
	{
		animation_direction2 = compass_direction2(direction);
		image_speed = CHARACTER_FPS2;
	}
}

if (holdingState2 == "picking2")
{
	 sprite_index_based_on_compass_direction2(animation_direction2, s_character4_idle_leftside, s_character4_idle_leftside, s_character4_idle_leftside, s_character4_crouch_leftside);
}
else if (holdingState2 == "holding2")
{
	sprite_index_based_on_compass_direction2(animation_direction2, s_character4_holding, s_character4_holding, s_character4_holding_left, s_character4_holding_left);
}
else
{
	sprite_index_based_on_compass_direction2(animation_direction2, s_character4_walk, s_character4_walk, s_character4_walk_leftside, s_character4_walk_leftside);
}

#endregion

}

else if (global.mychar == 24)//done in pickup and holding left and right
{
	player2_controlKeys_character5();
		 #region temp vars

var didSomething2 = false;

#endregion
#region check if can throw holding
depth = -y;
if (holdingState2 == "holding2" && !didSomething2)
{
	if (keyboard_check_pressed(ord("O")))
	{
		didSomething2 = true;
		global.picked2+=1;
		image_index = sprite_get_number(s_character5_walk) - 1;
		image_speed = CHARACTER_FPS2;
		throw_holdable2(true);
	}
}

#endregion
#region check if can pick up pickable

var pickedInstance2 = can_interact_with_object2(o_ball2, !didSomething2, true, spr_link_mask_big2);
if (pickedInstance2 != noone)
{
	if (pickup_pickable2(keyboard_check_pressed(ord("O")), pickedInstance2))
	{
		didSomething2 = true;
		global.picked2+=1;
		image_index = 0;
		image_speed = CHARACTER_FPS2;
	}
}

#endregion
#region speed setting

var hNoPress2 = 0;
var vNoPress2 = 0;

if (keyboard_check(ord("J")))
{
	hspeed -= ACCELERATION2;
	hspeed = max(hspeed, -MAX_SPEED2);
	h_deceleration_time2 = 0;
	hspeed_start2 = hspeed;
}
else
{
	hNoPress2 ++;	
}

if (keyboard_check(ord("L")))
{
	hspeed += ACCELERATION2;
	hspeed = min(hspeed, MAX_SPEED2);
	h_deceleration_time2 = 0;
	hspeed_start2 = hspeed;
}
else
{
	hNoPress2 ++;	
}

if (keyboard_check(ord("I")))
{
	vspeed -= ACCELERATION2;
	vspeed = max(vspeed, -MAX_SPEED2);
	v_deceleration_time2 = 0;
	vspeed_start2 = vspeed;
}
else
{
	vNoPress2 ++;	
}

if (keyboard_check(ord("K")))
{
	vspeed += ACCELERATION2;
	vspeed = min(vspeed, MAX_SPEED2);
	v_deceleration_time2 = 0;
	vspeed_start2 = vspeed;
}
else
{
	vNoPress2 ++;	
}

if (hNoPress2 == 2)
{
	h_deceleration_time2 ++;
	hspeed = ease_linear2(h_deceleration_time2, hspeed_start2, 0, 5);
	
}
if (vNoPress2 == 2)
{
	v_deceleration_time2 ++;
	vspeed = ease_linear2(v_deceleration_time2, vspeed_start2, 0, 5);
}

//force speed reset on picking or throwing
if (holdingState2 == "picking2" || holdingState2 == "throwing2")
{
	hspeed = 0;
	vspeed = 0;
	h_deceleration_time2 = 0;
	v_deceleration_time2 = 0;
	hspeed_start2 = 0;
	vspeed_start2 = 0;
}

#endregion
#region animation

depth = -y;

if (holdingState2 == "holding2" || holdingState2 == false)
{
	if (speed == 0)
	{
		image_speed = 0;
	}
	else
	{
		animation_direction2 = compass_direction2(direction);
		image_speed = CHARACTER_FPS2;
	}
}

if (holdingState2 == "picking2")
{
	 sprite_index_based_on_compass_direction2(animation_direction2, s_character5_idle_leftside, s_character5_idle_leftside, s_character5_idle_leftside, s_character5_crouch_leftside);
}
else if (holdingState2 == "holding2")
{
	sprite_index_based_on_compass_direction2(animation_direction2, s_character5_holding, s_character5_holding, s_character5_holding_left, s_character5_holding_left);
}
else
{
	sprite_index_based_on_compass_direction2(animation_direction2, s_character5_walk, s_character5_walk, s_character5_walk_leftside, s_character5_walk_leftside);
}

#endregion


}

else if (global.mychar == 25)
{
	player2_controlKeys_character6();
		 #region temp vars

var didSomething2 = false;

#endregion
#region check if can throw holding
depth = -y;
if (holdingState2 == "holding2" && !didSomething2)
{
	if (keyboard_check_pressed(ord("O")))
	{
		global.picked2+=1;
		didSomething2 = true;
		
		image_index = sprite_get_number(s_character6_walk) - 1;
		image_speed = CHARACTER_FPS2;
		throw_holdable2(true);
	}
}

#endregion
#region check if can pick up pickable

var pickedInstance2 = can_interact_with_object2(o_ball2, !didSomething2, true, spr_link_mask_big2);
if (pickedInstance2 != noone)
{
	if (pickup_pickable2(keyboard_check_pressed(ord("O")), pickedInstance2))
	{
		didSomething2 = true;
		global.picked2+=1;
		image_index = 0;
		image_speed = CHARACTER_FPS2;
	}
}

#endregion
#region speed setting

var hNoPress2 = 0;
var vNoPress2 = 0;

if (keyboard_check(ord("J")))
{
	hspeed -= ACCELERATION2;
	hspeed = max(hspeed, -MAX_SPEED2);
	h_deceleration_time2 = 0;
	hspeed_start2 = hspeed;
}
else
{
	hNoPress2 ++;	
}

if (keyboard_check(ord("L")))
{
	hspeed += ACCELERATION2;
	hspeed = min(hspeed, MAX_SPEED2);
	h_deceleration_time2 = 0;
	hspeed_start2 = hspeed;
}
else
{
	hNoPress2 ++;	
}

if (keyboard_check(ord("I")))
{
	vspeed -= ACCELERATION2;
	vspeed = max(vspeed, -MAX_SPEED2);
	v_deceleration_time2 = 0;
	vspeed_start2 = vspeed;
}
else
{
	vNoPress2 ++;	
}

if (keyboard_check(ord("K")))
{
	vspeed += ACCELERATION2;
	vspeed = min(vspeed, MAX_SPEED2);
	v_deceleration_time2 = 0;
	vspeed_start2 = vspeed;
}
else
{
	vNoPress2 ++;	
}

if (hNoPress2 == 2)
{
	h_deceleration_time2 ++;
	hspeed = ease_linear2(h_deceleration_time2, hspeed_start2, 0, 5);
	
}
if (vNoPress2 == 2)
{
	v_deceleration_time2 ++;
	vspeed = ease_linear2(v_deceleration_time2, vspeed_start2, 0, 5);
}

//force speed reset on picking or throwing
if (holdingState2 == "picking2" || holdingState2 == "throwing2")
{
	hspeed = 0;
	vspeed = 0;
	h_deceleration_time2 = 0;
	v_deceleration_time2 = 0;
	hspeed_start2 = 0;
	vspeed_start2 = 0;
}

#endregion
#region animation

depth = -y;

if (holdingState2 == "holding2" || holdingState2 == false)
{
	if (speed == 0)
	{
		image_speed = 0;
	}
	else
	{
		animation_direction2 = compass_direction2(direction);
		image_speed = CHARACTER_FPS2;
	}
}

if (holdingState2 == "picking2")
{
	 sprite_index_based_on_compass_direction2(animation_direction2, s_character6_crouch, s_character6_crouch, s_character6_crouch_leftside, s_character6_crouch_leftside);
}
else if (holdingState2 == "holding2")
{
	sprite_index_based_on_compass_direction2(animation_direction2, s_character6_holding, s_character6_holding, s_character6_holding_left, s_character6_holding_left);
}
else
{
	sprite_index_based_on_compass_direction2(animation_direction2, s_character6_walk, s_character6_walk, s_character6_walk_leftside, s_character6_walk_leftside);
}

#endregion

}
