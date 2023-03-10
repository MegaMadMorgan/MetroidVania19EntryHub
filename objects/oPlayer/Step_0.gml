// inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_dodge = keyboard_check(vk_shift);
key_jump = keyboard_check(ord("Z"));
key_melee = keyboard_check(ord("X"));
key_shoot = keyboard_check(ord("C"));
key_grapple = keyboard_check(ord("S"));
key_interact = keyboard_check(ord("E"));
key_pause = keyboard_check(ord("P"));


//weapon changing inputs
key_1 = keyboard_check(ord("1"));
key_2 = keyboard_check(ord("2"));
key_3 = keyboard_check(ord("3"));
key_4 = keyboard_check(ord("4"));

//work out where to move horizontally
if place_meeting(x, y+1, oWall)
{
	hsp = (key_right - key_left) * moveSpeed;
}

//work out where to move vertically
vsp = vsp + grav;

//work out if we should jump
if (canJump-- > 0) && (key_jump)
{
	vsp = jumpSpeed;
	canJump = 0;
}

//horizontal collision
move_and_collide(hsp, 0, oWall, abs(ceil(hsp)))

//vertical collision
if (array_length(move_and_collide(0, vsp, oWall, abs(ceil(vsp)), 0, 0)) > 0)
{
	if (vsp > 0) canJump = 20;
	vsp = 0;
}

//player sprite facing direction
if ((key_left && hsp < 0 && place_meeting(x, y+1, oWall)) || (key_left && !place_meeting(x, y+1, oWall) && !key_right))
{
	image_xscale = -1;	
}

if ((key_right && hsp > 0 && place_meeting(x, y+1, oWall)) || (key_right && !place_meeting(x, y+1, oWall) && !key_left))
{
	image_xscale = 1;	
}

//considering allowing the player to turn around whilst in the air, since they cannot control the character already. this allows for a jumping turn for shooting whilst fleeing as an advanced tactic!