/// @description Insert description here
// You can write your code in this editor
var xCam = oPlayer.x - wCam / 2;
var yCam = oPlayer.y - hCam / 2;

// smooth out the camera
var curX = camera_get_view_x(view_camera[0]);
var curY = camera_get_view_y(view_camera[0]);

// speed the camera moves to the player
var newX = lerp(curX, xCam, 0.1);
var newY = lerp(curY, yCam, 0.1);

camera_set_view_pos(view_camera[0], xCam, yCam);