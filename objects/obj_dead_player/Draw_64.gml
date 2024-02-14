draw_set_color(c_black)
draw_rectangle(0,0,view_wport[0], currenttop, false);
draw_rectangle(view_wport[0], view_hport[0], -1, currentbottom, false);


if (currenttop < topheight)
	currenttop += 1;

if (currentbottom > bottomheight)
	currentbottom -= 1;

if (currentbottom <= bottomheight)
{
	draw_set_color(c_red)
	draw_set_halign(fa_middle)
	draw_text_ext_transformed(view_wport/2, view_hport[0] - view_hport/6, "You Died.", 12, 1000, 2, 2, 0);
}
