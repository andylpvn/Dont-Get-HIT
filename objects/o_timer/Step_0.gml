/// @description Insert description here
// You can write your code in this editor

if (global_time>0) 
{
	//global_time -= delta_time/1000000;
	global_time -= delta_time/1000000;
}
else 
{
	global_time=0;
}
displayedTime = ceil(global_time);

