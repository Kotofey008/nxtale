y = obj_mainchara.y
movement = 1
moving = false
dsprite = spr_maincharad
rsprite = spr_maincharar
usprite = spr_maincharau
lsprite = spr_maincharal
if global.skin = 1
{
	dsprite = spr_maincharad_b
	rsprite = spr_maincharar_b
	usprite = spr_maincharau_b
	lsprite = spr_maincharal_b
}
uncan = 0
interactedobject = 0
if (global.facing == 0)
    sprite_index = dsprite
if (global.facing == 1)
    sprite_index = rsprite
if (global.facing == 2)
    sprite_index = usprite
if (global.facing == 3)
    sprite_index = lsprite
facing = global.facing
global.caninteract = 0
global.onebuffer = 0


// TEST Joystick
move_speed = 1.5
if keyboard_check_pressed(vk_backspace)
	move_speed = 3
collision_instance = obj_solidparent