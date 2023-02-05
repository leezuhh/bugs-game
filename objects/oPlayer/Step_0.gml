/// @description Insert description here
// You can write your code in this editor

//Get inputs (1 = pressed, 0 = not pressed)
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_jump = keyboard_check(vk_space);

//Work out where to move horizontally
hsp = (key_right - key_left) * hsp_walk;

//Work out where to move vertically
vsp = vsp + grv;

if (hsp < 0) image_xscale = hsp/hsp;
if (hsp > 0) image_xscale = -hsp/hsp;

//Work out if we should jump
if (place_meeting(x,y+1,oWall)) and (key_jump)
{
    vsp = vsp_jump;
	
}

if (place_meeting(x,y+1,oWall)) {
	sprite_index = sprite3;
} else{
	sprite_index = buggy_jump_strip5;
}

//Check for horizontal collisions and then move if we can
var onepixel = sign(hsp) //moving left or right? right = 1, left = -1.
if (place_meeting(x+hsp,y,oWall))
{
    //move as close as we can
    while (!place_meeting(x+onepixel,y,oWall))
    {
        x = x + onepixel;
    }
    hsp = 0;
}
x = x + hsp;

//Check for vertical collisions and then move if we can
var onepixel = sign(vsp) //up = -1, down = 1.
if (place_meeting(x,y+vsp,oWall))
{
    //move as close as we can
    while (!place_meeting(x,y+onepixel,oWall))
    {
        y = y + onepixel;
    }
    vsp = 0;
}
y = y + vsp;


/*
var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var onTheGround = place_meeting(x, y + 1, oWall);



if keyboard_check(ord("D")) {
xSpeed += spd;
}

if keyboard_check(ord("A")) {
xSpeed -= spd;
}
ySpeed++;


if onTheGround {
	
	if jump {
		ySpeed = -15;
	}
} else{
	sprite_index = buggy_jump_strip5;
}

if place_meeting(x + xSpeed, y, oWall) {
	
	while !place_meeting(x + sign(xSpeed), y, oWall) {
		x += sign(xSpeed);
	}
	
	xSpeed = 0;
}

x += xSpeed;

if place_meeting(x, y + ySpeed, oWall) {
	
	while !place_meeting(x, y + sign(xSpeed), oWall) {
		y += sign(xSpeed);
	}
	
	ySpeed = 0;
}
y += ySpeed;
*/
