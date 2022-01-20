/// @description Set up camera
cam = view_camera[0]; //returns the camera by default for the viewport
follow = oPlayer; //only time you use the name of an object is if you only have one instance of that object
view_w_half = camera_get_view_width(cam) * 0.5; 
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart; //updates to player's x and y coordinate