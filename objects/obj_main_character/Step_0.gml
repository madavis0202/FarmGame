right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

xspeed = (right_key - left_key) * move_speed;
yspeed = (down_key - up_key) * move_speed;


//Animate
if xspeed == 0 && yspeed == 0 
{
	image_index = 0;
}

//depth
depth = -bbox_bottom;

// set sprite
mask_index = sprite[DOWN];
if yspeed == 0 {
	if xspeed > 0 {face = RIGHT};
	if xspeed < 0 {face = LEFT};
}

if xspeed > 0 && face == LEFT{ face = RIGHT}
if xspeed < 0 && face == RIGHT{ face = LEFT}

if xspeed == 0 {
	if yspeed > 0 {face = DOWN};
	if yspeed < 0 {face = UP};
}
sprite_index = sprite[face];

//This is collisions
if place_meeting(x + xspeed, y, obj_Wall)
{
    xspeed = 0;
}

if place_meeting(x, y + yspeed, obj_Wall)
{
    yspeed = 0;
}

x += xspeed;
y += yspeed;



if yspeed > 0 && face == UP{ face = DOWN}
if xspeed < 0 && face == DOWN{ face = UP}


//if yspeed == 0
//if xspeed == 0;