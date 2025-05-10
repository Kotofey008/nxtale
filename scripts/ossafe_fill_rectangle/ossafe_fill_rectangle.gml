// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function ossafe_fill_rectangle(x1, y1, x2, y2)
{
if (x1 > x2)
{
    var temp = x1
    x1 = x2
    x2 = temp
}
if (y1 > y2)
{
    temp = y1
    y1 = y2
    y2 = temp
}
draw_rectangle(x1, y1, x2, y2, false)
}