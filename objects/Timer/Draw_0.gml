/// @description Insert description here
// You can write your code in this editor
draw_set_font(fontCool);
draw_set_color(c_white);
draw_text(x,y,"Time Left: " + string(displayedTime));
draw_healthbar(x-20, y, 250, 50, (playerCurrentHP/playerMaxHP) * 100, c_orange, c_black, c_lime, 0, true, true);