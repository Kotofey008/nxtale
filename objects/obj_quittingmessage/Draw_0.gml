var scale;
if instance_exists(obj_time)
{
    //scale = (view_wview[view_current] / 640)
    if (obj_time.quit > 0)
        draw_sprite_ext(sprite_index, image_index, 0, 0, 90, 14, 0, c_white, image_alpha)
    else
        instance_destroy()
}
else
    instance_destroy()
if (image_alpha < 0.9)
    image_alpha += 0.1
