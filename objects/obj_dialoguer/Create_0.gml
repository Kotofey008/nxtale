count = 0
side = 0
global.facechange = 1
xx = view_xview[view_current]
yy = view_yview[view_current]
if instance_exists(obj_mainchara)
{
    if (obj_mainchara.y > (yy + 130))
    {
        side = 0
        if (global.facechoice != 0)
        {
            writer = instance_create_depth((xx + 68), (yy - 5), -500, OBJ_WRITER)
            script_execute(scr_facechoice)
        }
        else
            writer = instance_create_depth((xx + 10), (yy - 5), -500, OBJ_WRITER)
    }
    else
    {
        side = 1
		if (global.facechoice != 0)
        {
            writer = instance_create_depth((xx + 68), (yy + 150), -500, OBJ_WRITER)
            script_execute(scr_facechoice)
        }
        else
            writer = instance_create_depth((xx + 10), (yy + 150), -500, OBJ_WRITER)
    }
}
