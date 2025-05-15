///@description Quit+ Functionality
if (canquit == 1)
{
    if (quit > 40)
    {
        if (global.osflavor <= 2)
            game_end()
    }
}

if instance_exists(obj_mainchara)
{
	charx = string(round(obj_mainchara.x))
	chary = string(round(obj_mainchara.y))
}
else if instance_exists(obj_newchara)
{
	charx = string(round(obj_newchara.x))
	chary = string(round(obj_newchara.y))
}
else
{
	charx = "NaN"
	chary = "NaN"
}