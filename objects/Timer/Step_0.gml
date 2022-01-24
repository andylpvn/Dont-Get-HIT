/// @description Insert description here
// You can write your code in this editor
if(global_time>0)
{
	global_time -=delta_time/1000000;
}else{
	globaltime=0;
}
displayedTime = ceil(global_time);

if(playerCurrentHP>0)playerCurrentHP -= 1/30;
else playerCurrentHP=0