/// @description Insert description here
// You can write your code in this editor
var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("Q"));
var jump = keyboard_check_pressed(vk_space);
var onTheGround = place_meeting(x, y + 1, oWall);

xSpeed = xDirection * spd;
ySpeed++;


if onTheGround {
	
	if jump {
		ySpeed = -15;
	}
} else{
	
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