if (global.phasing == 0 && global.interact == 0)
{
    if (global.facing == 3)
    {
        if (collision_point((bbox_left - 2), (bbox_top - 2), obj_solidparent, 0, 1) == -4)
        {
            x = (xprevious - 1.5)
            y = (yprevious - 1.5)
        }
        else
            x = xprevious
    }
    if (global.facing == 0)
    {
        if (collision_point((bbox_right + 3), (bbox_bottom + 3), obj_solidparent, 0, 1) == -4)
        {
            x = (xprevious + 1.5)
            y = (yprevious + 1.5)
        }
        else
            y = yprevious
    }
    if (global.facing == 2)
    {
        x = xprevious
        y = (yprevious - 1.5)
    }
    if (global.facing == 1)
    {
        y = yprevious
        x = (xprevious + 1.5)
    }
    if (obj_time.down && obj_time.left)
    {
        x = xprevious
        y = yprevious
    }
    moving = false
    if ((x % 3) != 0)
        x += 1
    if ((y % 3) != 0)
        y -= 1
}
if (global.interact == 5 || global.interact == 1 || (global.interact == 3 && global.phasing == 0))
{
    x = xprevious
    y = yprevious
}
