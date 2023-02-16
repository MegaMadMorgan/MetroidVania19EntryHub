x+= projectileSpeed;
y+= Verticality;

if (place_meeting(x, y, oWall))
{
	
	if (image_index == 0)
	{
		instance_create_layer(x, y, "Instances", oBulletExplosion1)
	}
	else if (image_index == 1)
	{
		instance_create_layer(x, y, "Instances", oBulletExplosion2)
	}
	else if (image_index == 2)
	{
		instance_create_layer(x, y, "Instances", oBulletExplosion3)
	}
	else if (image_index == 3)
	{
		instance_create_layer(x, y, "Instances", oBulletExplosion4)
	}
	instance_destroy();
}