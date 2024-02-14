speed = 5
// stop all audio
audio_stop_all()
// stop sleep
global.does_sleep = false;
// slow the game down
game_set_speed(20, gamespeed_fps)
// start an alarm
alarm_set(0, 10);
// our movement inputs
inx = 0;
iny = 0;

// our shadow
ourshadow = instance_create_depth(x,y, depth - 1, obj_under_shadow);
ourshadow.follow_object = self;
ourshadow.follow_offset = 4;

// function to check if our place is free
function check_free(_prop_x, _prop_y)
{
	return !place_meeting(x + _prop_x, y + _prop_y, par_wall);
}

// stop all of our enemies from shooting
for (var i = 0; i < instance_number(obj_bandit_gun_handler_bigger); i++;)
{
	instance_find(obj_bandit_gun_handler_bigger,i).can_shoot = false;
}

for (var i = 0; i < instance_number(obj_enemy_bullet_bigger); i++;)
{
	instance_destroy(instance_find(obj_enemy_bullet_bigger,i));
}

topheight = view_hport[0]/4
bottomheight = (view_hport[0]/4)*3

currenttop = 0;
currentbottom = view_hport[0];