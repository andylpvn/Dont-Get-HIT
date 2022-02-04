/// @description Insert description here
// You can write your code in this editor
animation_speed = 0
current_sprite = sprite_add("s_winterMap",0,true,0,0,0)

animation_speed += 0.2
clamp(animation_speed,0,100)
if animation_speed > 100
{
    animation_speed = 0
}