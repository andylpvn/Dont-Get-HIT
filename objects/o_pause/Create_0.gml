/// @description Insert description here
// You can write your code in this editor
pause = false;

 
// Menu element names. This will be what is actually drawn
menu[0] = "How to play";
menu[1] = "Options";
menu[2] = "Return to Main Menu";     
menu[3] = "Quit Game";
   
menu2[0] = "Play Again";
menu2[1] = "Return to Main Menu";     
menu2[2] = "Quit Game";


    
 
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
selectedCol = c_grey;

// Color of the menu element when not selected
notSelectedCol = c_black;
//-----
// Holds what menu element is selected. Ex: if selected = 1, 
// then the selected element is Options.
selected2 = 0;
selectLerp2 = 0; // Same as previous line but for lerp (smooth movement)
lerpAmt2 = 0.2; // Higher number -> faster cursor (between 0 and 1)



// Game title color
titleCol = c_white;


// Title of your game
gameTitle = "Paused";

// Size of the title 
p_titleSize = 3;

p_fontSize = 2;
// Button to move up the menu
upButt = vk_up;

// Button to move down the menu
downButt = vk_down;

// Button to confirm menu choice
confirmButt = vk_space;