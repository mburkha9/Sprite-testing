if (instance_exists(follow))
{
	xTo = follow.x; //looks into x any and returns it if it finds it
	yTo = follow.y;
}

//UPDATE OBJECT POSITION
x += (xTo - x) / 25;//(+= means "adding to x")object represents where the camera should be, set the x,y position where oCamera is
y += (yTo - y) / 25;//moves fast when it's far away and slow when it reaches its destination


x = clamp(x,view_w_half,room_width - view_w_half);
y = clamp(y,view_h_half,room_height - view_h_half);


//UPDATE CAMERA VIEW
camera_set_view_pos(cam,x - view_w_half,y - view_h_half); //puts our x,y on player but moves camera half the distance left and up, leaving the character in the center

