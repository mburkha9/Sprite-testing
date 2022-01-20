// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_tool(){

if (my_chest != noone)
{
	var sub_num = sprite_get_number(my_chest);	
	if (sub_num > 1)
	{
		if (chest_anim <= sub_num - 1) 
			{
			chest_anim += image_speed;
			}
		else 
			{
			chest_anim = 0;
			}
	}
		var img = ceil(image_index) - 1; //ceil rounds the number up
		if (sprite_index == anim_idle) //he uses anim_idle instead of sPlayer
		{
				if (img == 0 || img == 8)
				{
					if (image_xscale == 1)
					{
					draw_sprite_ext(my_chest,chest_anim,x,y,image_xscale,image_yscale,0,c_white,1); //come back to this
					}
					else
					{
					draw_sprite_ext(my_chest,chest_anim,x,y,image_xscale,image_yscale,0,c_white,1);
					}
				}
				if (img == 1 || img == 7)
				{
					if (image_xscale == 1) 
					{
					draw_sprite_ext(my_chest,chest_anim,x,y,image_xscale,image_yscale,0,c_white,1); //come back to this
					}
					else
					{
					draw_sprite_ext(my_chest,chest_anim,x,y,image_xscale,image_yscale,0,c_white,1);
					}
				}
				if (img == 2 || img == 6)
				{
					if (image_xscale == 1) 
					{
					draw_sprite_ext(my_chest,chest_anim,x,y,image_xscale,image_yscale,0,c_white,1); //come back to this
					}
					else
					{
					draw_sprite_ext(my_chest,chest_anim,x,y,image_xscale,image_yscale,0,c_white,1);
					}
				}
				if (img == 3 || img == 5)
				{
					if (image_xscale == 1) 
					{
					draw_sprite_ext(my_chest,chest_anim,x,y,image_xscale,image_yscale,0,c_white,1); //come back to this
					}
					else
					{
					draw_sprite_ext(my_chest,chest_anim,x,y,image_xscale,image_yscale,0,c_white,1);
					}
				}
				if (img == 4)
				{
					if (image_xscale == 1) 
					{
					draw_sprite_ext(my_chest,chest_anim,x,y,image_xscale,image_yscale,0,c_white,1); //come back to this
					}
					else
					{
					draw_sprite_ext(my_chest,chest_anim,x,y,image_xscale,image_yscale,0,c_white,1);
				}
			}
		}
	} 
}