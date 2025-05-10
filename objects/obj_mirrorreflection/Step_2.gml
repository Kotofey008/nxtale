if instance_exists(obj_mainchara)
{
    image_blend = obj_mainchara.image_blend
    x = obj_mainchara.x
    y = (horizon - (obj_mainchara.y - horizon))
    if (y < ceiling)
        y = ceiling
    sprite_index = obj_mainchara.sprite_index
    image_index = obj_mainchara.image_index
    if (sprite_index == spr_maincharad && flip == 0)
    {
        sprite_index = spr_maincharau
		if global.death = 1
			sprite_index = spr_charau
        flip = 1
    }
    if (sprite_index == spr_maincharau && flip == 0)
    {
        sprite_index = spr_maincharad
		if global.death = 1
			sprite_index = spr_charad
        flip = 1
    }
    flip = 0
	if global.death = 1
	{
		if (sprite_index == spr_maincharal)
		    sprite_index = spr_charal
		if (sprite_index == spr_maincharar)
		    sprite_index = spr_charar
	}
}
