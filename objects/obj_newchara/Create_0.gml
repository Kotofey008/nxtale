xspd = 0
yspd = 0

move_spd = 1.5

sprite[DOWN] = spr_newcharad
sprite[UP] = spr_newcharau
sprite[LEFT] = spr_newcharal
sprite[RIGHT] = spr_newcharar

face = DOWN

if (global.facing == 0)
	face = DOWN
if (global.facing == 1)
	face = RIGHT
if (global.facing == 2)
	face = UP
if (global.facing == 3)
	face = LEFT