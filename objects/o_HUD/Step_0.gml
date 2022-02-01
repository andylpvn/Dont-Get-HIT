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


//player 1
if (playerCurrentHP1>0)
{playerCurrentHP1 -= 1/30;
}else 
{playerCurrentHP1=0;}

//player 2
if (playerCurrentHP2>0)
{playerCurrentHP2 -= 1/30;
}else 
{playerCurrentHP2=0;}