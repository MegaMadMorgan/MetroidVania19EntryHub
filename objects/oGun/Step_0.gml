//stay with player
x = oPlayer.x;
y = oPlayer.y;

//face player's direction
image_xscale = oPlayer.image_xscale;

if (alarm[0] <= -1)
{
	image_index = 0;
}

if (image_index = 1 && sprite_index != sPlayerGun4 && sprite_index != sPlayerGun3)
{
	instance_create_layer(x, y, "Instances", oBullet);
}
else if (image_index = 1 && sprite_index == sPlayerGun4)
{
	instance_create_layer(x, y, "Instances", oLaser);
}
else if (image_index = 1 && sprite_index == sPlayerGun3)
{
	instance_create_layer(x, y, "Instances", oBlast);
}

if (oPlayer.key_shoot && alarm[1] <= -1)
{
	alarm[0] = 4;
	if (sprite_index = sPlayerGun1)
	{
		alarm[1] = 25;	
	}
		if (sprite_index = sPlayerGun3)
	{
		alarm[1] = 60;	
	}
		if (sprite_index = sPlayerGun4)
	{
		alarm[1] = 33;	
	}
}


//considered using case for this, may do another day, just want it to work thou
if (oPlayer.key_1)
{
	sprite_index = sPlayerGun1
}
if (oPlayer.key_2)
{
	sprite_index = sPlayerGun2
}
if (oPlayer.key_3)
{
	sprite_index = sPlayerGun3
}
if (oPlayer.key_4)
{
	sprite_index = sPlayerGun4
}