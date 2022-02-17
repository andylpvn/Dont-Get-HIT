/// @description Insert description here
// You can write your code in this editor
if (!pause) 
{
	pause = true;
	instance_deactivate_all(pause);
}
else 
{

	instance_activate_all();
	pause = false;
}
