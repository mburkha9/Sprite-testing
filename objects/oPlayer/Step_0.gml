key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));

var move = key_right - key_left; //if you press both keys you don't move at all

hsp = move * walksp;

vsp = vsp + grv;

if (hsp = 0)
	{
		if (sprite_index != anim_idle)
			{
				sprite_index = anim_idle;
				image_index = 0;
			}
	}

//HORIZONTAL COLLISION
if (place_meeting(x+hsp,y,oWall)) //if what's in the parenthesis are true, do what's inside the brackets, if false, skip the brackets
{
	while (!place_meeting(x+sign(hsp),y,oWall)) //if there's not a collision, whiile continues to act on sign which returns 1 or -1 whether or not hsp is positive or negative
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp; //either move 4 pixels to the right or 4 to the left, where we're going to move

//VERTICAL COLLISION
if (place_meeting(x,y+vsp,oWall)) //copy pasted from HORIZONTAL COLLISION section and changed hsp to vsp along with x's to y's
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (hsp != 0) image_xscale = sign(hsp);

if (keyboard_check_pressed(ord("1"))) 
	{
	my_chest = sPlayerIdle_ChestBlue; 
	}
	
image_speed = 1;

	if (hsp == 0) //if our horizontal speed is 0, then we set our sprite index to our player
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerRun;
	}


/*
//reset move variables
moveX = 0;
moveY = 0;
//intended movement
moveX = (key_right - key_left) * walksp;
if (moveY == 0) 
	{ 
	moveX = (key_right - key_left) * walksp; 
	}
//collision
//horizontal
if (place_meeting(x+moveX,y,oWall))
{
	repeat (abs(moveX)) 
	{
	if (!place_meeting(x+sign(moveX),y,oWall))
	{
		x += sign(moveX);
	}
	else
	{
		break;
	}
	}
	moveX = 0;
}

//vertical
if (place_meeting(x,y+moveY,oWall))
{
	repeat (abs(moveY)) 
	{
	if (!place_meeting(x,y+sign(moveY),oWall))
	{
		y += sign(moveY);
	}
	else
	{
		break;
	}
	}
	moveY = 0;
}

//apply movement
x += moveX;
y += moveY;