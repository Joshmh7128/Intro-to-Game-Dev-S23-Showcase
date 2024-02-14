if (keyboard_check_pressed(vk_right))
{
	if (room != room_last)
		room_goto_next()
	else
		room_goto(Room_1_BadTopDownShooter)
}

if (keyboard_check_pressed(vk_left))
{
	if (room != Room_1_BadTopDownShooter)
		room_goto_previous()
	else
		room_goto(room_last)
}

if (showtime >= 0)
	showtime--;