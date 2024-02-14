
global.does_sleep = does_sleep;
global.shaker = self;
shaketime = 0;
shakeamount = 6;

function sleep()
{
	game_set_speed(12, gamespeed_fps)
	alarm_set(0, 1)
}