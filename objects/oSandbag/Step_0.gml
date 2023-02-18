//work out where to move horizontally
//hsp = 1 * moveSpeed; // update this for enemies

//work out where to move vertically
vsp = vsp + grav;

//horizontal collision
move_and_collide(hsp, 0, oWall, abs(ceil(hsp)))

//vertical collision
if (array_length(move_and_collide(0, vsp, oWall, abs(ceil(vsp)), 0, 0)) > 0)
{
	if (vsp > 0) canJump = 20;
	vsp = 0;
}

//if place_meeting(x, y, oPlayerAttack1)
//{
//	vsp = -2;
//	hsp = oPlayer.image_xscale * 2;
//	alarm[0] = 6;
//}
if (oPlayer.key_melee) {hit = 0;}