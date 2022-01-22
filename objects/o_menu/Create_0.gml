 //create sound for menu click
audio_play_sound(snd_menuBackground, 100, true);


// Menu element names. This will be what is actually drawn
menu[0] = "Play";
menu[1] = "Options";
menu[2] = "How to play";
menu[3] = "Exit";


// cursorLevitate will be used to keep a variable that
// oscillates and moves the cursor back and forth
cursorLevitate = 0;


// cursorTime will be used as the "angle" of a sin function
// in conjunction with cursorlevitate to oscillate the cursor
cursorTime = 0;

// The rate at which the cursor oscillates. Higher value means faster
leviRate = 1.5;


// Holds what menu element is selected. Ex: if selected = 1, 
// then the selected element is Options.
selected = 0;
selectLerp = 0; // Same as previous line but for lerp (smooth movement)
lerpAmt = 0.2; // Higher number -> faster cursor (between 0 and 1)


// Spacing between each menu element when drawn
spacing =26;


// Color of the menu element when selected
selectedCol = c_gray;

// Color of the menu element when not selected
notSelectedCol = c_black;

// Game title color
titleCol = c_white;


// Title of the game
gameTitle = "Don't Get HIT";

// Size of the title 
titleSize = 3;


// Button to move up the menu
//upKey = keyboard_check(vk_up) || (gamepad_axis_value(0, gp_axislv) < 0) || gamepad_button_check(0, gp_padu);
//upKeyPress = (keyboard_check_pressed(vk_up)) || (gamepad_button_check_pressed(0, gp_padu)) ;

upKey = vk_up ;
//upButt_gamePad = gp_padu;

// Button to move down the menu
//downKey = keyboard_check(vk_down) || (gamepad_axis_value(0, gp_axislv) > 0) || gamepad_button_check(0, gp_padd);
//downKeyPress = (keyboard_check_pressed(vk_down)) || (gamepad_button_check_pressed(0, gp_padd));

downKey = vk_down;
//downButt_gamePad = gp_padd;

// Button to confirm menu choice
//confirmKey = keyboard_check(vk_space) || gamepad_button_check(0, gp_face1);
//confirmKeyPress = (keyboard_check_pressed(vk_space)) || (gamepad_button_check_pressed(0, gp_face1));
confirmKey = vk_space; 
//confirmButt_gamePad = gp_face1;


