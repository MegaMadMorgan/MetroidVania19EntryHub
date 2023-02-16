//stay with player
x = oPlayer.x;
y = oPlayer.y;

//face player's direction
image_xscale = oPlayer.image_xscale;

if (alarm[0] <= -1)
{
	image_index = 0;
}

if (oPlayer.key_shoot)
{
	alarm[0] = 4;	
}