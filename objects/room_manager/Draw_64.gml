draw_set_color(c_black)
draw_rectangle(0,0,view_wport[0], topheight, false);
draw_rectangle(view_wport[0], view_hport[0], -1, bottomheight, false);

if (showtime > 0)
{
	draw_set_color(c_white)
	draw_set_halign(fa_middle)
	draw_text_ext_transformed(view_wport/2, view_hport[0] - view_hport/6, display_text, 12, 1000, 2, 2, 0);
}

if (showtime <= 0)
{
	if (topheight >= 0)
		topheight -= 5;
		
	if (bottomheight <= view_hport[0])
		bottomheight += 5;
}

