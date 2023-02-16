if (follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;
}

if (oPlayer.hsp == 0)
{
	x += (xTo - x) / 5;	
}
else if (oPlayer.hsp > 0)
{
	x += ((xTo+75) - x + 50) / 25;	
}
else if (oPlayer.hsp < 0)
{
	x += ((xTo-75) - x - 50) / 25;	
}



y += (yTo - y);

camera_set_view_pos(view_camera[0], x-(camWidth*0.5), y-(camHeight*0.5));