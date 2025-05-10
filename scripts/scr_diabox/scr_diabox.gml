// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_diabox(dia0, dia1, dia2, dia3, dia4, dia5, dia6, dia7, dia8, dia9, dia10, dia11, dia12){
	
var xxx, yyy;
draw_text(10000, 10000, dia0)
xxx = view_xview[0]
yyy = 0
keyboard_lastchar = ""
if (text1 == 0)
{
    if (text2 == 0)
    {
        if (text3 == 0)
        {
            if (text4 == 0)
            {
                if (text5 == 0)
                {
                    if (text6 == 0)
                    {
                        if (text7 == 0)
                        {
                            if (text8 == 0)
                            {
                                if (text9 == 0)
                                {
                                    if (text10 == 0)
                                        text1 = 1
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
draw_set_colour(c_black)
draw_rectangle(((xxx + 0) + 15), ((yyy + global.window_y) - 78), (global.window_x - 15), ((yyy + global.window_y) - 5), false)
draw_set_colour(c_white)
draw_line_width((((xxx + 0) + 15) - 1), ((yyy + global.window_y) - 78), ((1 + global.window_x) - 15), ((yyy + global.window_y) - 78), 2)
draw_line_width(((xxx + 0) + 15), ((yyy + global.window_y) - 78), ((xxx + 0) + 15), ((yyy + global.window_y) - 5), 2)
draw_line_width((global.window_x - 15), ((yyy + global.window_y) - 78), (global.window_x - 15), ((yyy + global.window_y) - 5), 2)
draw_line_width((((xxx + 0) + 15) - 1), ((yyy + global.window_y) - 5), ((1 + global.window_x) - 15), ((yyy + global.window_y) - 5), 2)
if (talkface != -1)
    draw_sprite_ext(talkface, 0, ((((xxx + 15) + 13) + 5) + (sprite_get_width(talkface) / 2)), (((yyy + global.window_y) - 78) + 36), 1, 1, 0, c_white, 1)
if (global.sansfont == 1)
    draw_set_font(fn_8bit)
else if (global.sansfont == 2)
    draw_set_font(fn_sans)
else if (global.sansfont == 3)
    draw_set_font(fn_wingdings)
if (dia12 == 1)
{
    if (talkface != -1)
    {
        draw_set_colour(c_white)
        draw_text_ext_transformed((93 + view_xview[0]), ((global.window_y - 78) + 4), "*", 20, 171, 1.17, 1.17, 0)
    }
    else
    {
        draw_set_colour(c_white)
        draw_text_ext_transformed((45 + view_xview[0]), ((global.window_y - 78) + 4), "*", 20, 205, 1.17, 1.17, 0)
    }
}
draw_set_colour(talkcolor)
if (keyboard_check_released(ord("Z")) || keyboard_check_released(vk_return))
{
    if (text1 == 1)
    {
        if (charcount == string_length(dia1))
        {
            text1 = 0
            text2 = 1
            drawtext = ""
            charcount = 0
            exit
        }
    }
    if (text2 == 1)
    {
        if (charcount == string_length(dia2))
        {
            text2 = 0
            text3 = 1
            drawtext = ""
            charcount = 0
            exit
        }
    }
    if (text3 == 1)
    {
        if (charcount == string_length(dia3))
        {
            text3 = 0
            text4 = 1
            drawtext = ""
            charcount = 0
            exit
        }
    }
    if (text4 == 1)
    {
        if (charcount == string_length(dia4))
        {
            text4 = 0
            text5 = 1
            drawtext = ""
            charcount = 0
            exit
        }
    }
    if (text5 == 1)
    {
        if (charcount == string_length(dia5))
        {
            text5 = 0
            text6 = 1
            drawtext = ""
            charcount = 0
            exit
        }
    }
    if (text6 == 1)
    {
        if (charcount == string_length(dia6))
        {
            text6 = 0
            text7 = 1
            drawtext = ""
            charcount = 0
            exit
        }
    }
    if (text7 == 1)
    {
        if (charcount == string_length(dia7))
        {
            text7 = 0
            text8 = 1
            drawtext = ""
            charcount = 0
            exit
        }
    }
    if (text8 == 1)
    {
        if (charcount == string_length(dia8))
        {
            text8 = 0
            text9 = 1
            drawtext = ""
            charcount = 0
            exit
        }
    }
    if (text9 == 1)
    {
        if (charcount == string_length(dia9))
        {
            text9 = 0
            text10 = 1
            drawtext = ""
            charcount = 0
            exit
        }
    }
    if (text10 == 1)
    {
        if (charcount == string_length(dia10))
        {
            text10 = 0
            drawtext = ""
            charcount = 0
            alarm[10] = 1
            exit
        }
    }
}
if keyboard_check_released(ord("X"))
{
    if (text1 == 1)
    {
        charcount = string_length(dia1)
        drawtext = string_copy(dia1, 1, string_length(dia1))
    }
    if (text2 == 1)
    {
        charcount = string_length(dia2)
        drawtext = string_copy(dia2, 1, string_length(dia2))
    }
    if (text3 == 1)
    {
        charcount = string_length(dia3)
        drawtext = string_copy(dia3, 1, string_length(dia3))
    }
    if (text4 == 1)
    {
        charcount = string_length(dia4)
        drawtext = string_copy(dia4, 1, string_length(dia4))
    }
    if (text5 == 1)
    {
        charcount = string_length(dia5)
        drawtext = string_copy(dia5, 1, string_length(dia5))
    }
    if (text6 == 1)
    {
        charcount = string_length(dia6)
        drawtext = string_copy(dia6, 1, string_length(dia6))
    }
    if (text7 == 1)
    {
        charcount = string_length(dia7)
        drawtext = string_copy(dia7, 1, string_length(dia7))
    }
    if (text8 == 1)
    {
        charcount = string_length(dia8)
        drawtext = string_copy(dia8, 1, string_length(dia8))
    }
    if (text9 == 1)
    {
        charcount = string_length(dia9)
        drawtext = string_copy(dia9, 1, string_length(dia9))
    }
    if (text10 == 1)
    {
        charcount = string_length(dia10)
        drawtext = string_copy(dia10, 1, string_length(dia10))
    }
}
if (text1 == 1)
{
    if (dia1 == "")
    {
        text1 = 0
        text2 = 1
        drawtext = ""
        charcount = 0
    }
}
if (text2 == 1)
{
    if (dia2 == "")
    {
        text2 = 0
        text3 = 1
        drawtext = ""
        charcount = 0
    }
}
if (text3 == 1)
{
    if (dia3 == "")
    {
        text3 = 0
        text4 = 1
        drawtext = ""
        charcount = 0
    }
}
if (text4 == 1)
{
    if (dia4 == "")
    {
        text4 = 0
        text5 = 1
        drawtext = ""
        charcount = 0
    }
}
if (text5 == 1)
{
    if (dia5 == "")
    {
        text5 = 0
        text6 = 1
        drawtext = ""
        charcount = 0
    }
}
if (text6 == 1)
{
    if (dia6 == "")
    {
        text6 = 0
        text7 = 1
        drawtext = ""
        charcount = 0
    }
}
if (text7 == 1)
{
    if (dia7 == "")
    {
        text7 = 0
        text8 = 1
        drawtext = ""
        charcount = 0
    }
}
if (text8 == 1)
{
    if (dia8 == "")
    {
        text8 = 0
        text9 = 1
        drawtext = ""
        charcount = 0
    }
}
if (text9 == 1)
{
    if (dia9 == "")
    {
        text9 = 0
        text10 = 1
        drawtext = ""
        charcount = 0
    }
}
if (text10 == 1)
{
    if (dia10 == "")
    {
        text10 = 0
        drawtext = ""
        charcount = 0
        alarm[10] = 1
    }
}
if (text1 == 1)
{
    if (charcount != string_length(dia1))
    {
        charcount += 1
        drawtext += string_copy(dia1, charcount, 1)
        if (!((charcount & 1)))
            audio_play_sound(dia11, 10, false)
        if (!((charcount & 3)))
            talkface = speakface1
        if (!((charcount & 7)))
            talkface = speakface2
    }
    else
        talkface = speakface1
    draw_set_colour(talkcolor)
    if (global.sansfont == 3)
    {
        draw_set_colour(make_colour_rgb(100, 100, 100))
        if (talkface != -1)
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed((((68 + sprite_get_width(talkface)) + 15) - 5), (((global.window_y - 78) + 8) - 5), drawtext, 20, 171, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(((68 + sprite_get_width(talkface)) + 15), ((global.window_y - 78) + 8), drawtext, 20, 171, 1.17, 1.17, 0)
        }
        else
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed(40, (((global.window_y - 78) + 8) - 5), drawtext, 20, 205, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(45, ((global.window_y - 78) + 8), drawtext, 20, 205, 1.17, 1.17, 0)
        }
    }
    else if (dia12 == 1)
    {
        if (talkface != -1)
            draw_text_ext_transformed((108 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 156, 1.17, 1.17, 0)
        else
            draw_text_ext_transformed((60 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 190, 1.17, 1.17, 0)
    }
    else if (talkface != -1)
        draw_text_ext_transformed((93 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 171, 1.17, 1.17, 0)
    else
        draw_text_ext_transformed((45 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 205, 1.17, 1.17, 0)
}
if (text2 == 1)
{
    if (charcount != string_length(dia2))
    {
        charcount += 1
        drawtext += string_copy(dia2, charcount, 1)
        if (!((charcount & 1)))
            audio_play_sound(dia11, 10, false)
        if (!((charcount & 3)))
            talkface = speakface1
        if (!((charcount & 7)))
            talkface = speakface2
    }
    else
        talkface = speakface1
    draw_set_colour(talkcolor)
    if (global.sansfont == 3)
    {
        draw_set_colour(make_colour_rgb(100, 100, 100))
        if (talkface != -1)
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed((((68 + sprite_get_width(talkface)) + 15) - 5), (((global.window_y - 78) + 8) - 5), drawtext, 20, 171, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(((68 + sprite_get_width(talkface)) + 15), ((global.window_y - 78) + 8), drawtext, 20, 171, 1.17, 1.17, 0)
        }
        else
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed(40, (((global.window_y - 78) + 8) - 5), drawtext, 20, 205, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(45, ((global.window_y - 78) + 8), drawtext, 20, 205, 1.17, 1.17, 0)
        }
    }
    else if (dia12 == 1)
    {
        if (talkface != -1)
            draw_text_ext_transformed((108 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 156, 1.17, 1.17, 0)
        else
            draw_text_ext_transformed((60 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 190, 1.17, 1.17, 0)
    }
    else if (talkface != -1)
        draw_text_ext_transformed((93 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 171, 1.17, 1.17, 0)
    else
        draw_text_ext_transformed((45 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 205, 1.17, 1.17, 0)
}
if (text3 == 1)
{
    if (charcount != string_length(dia3))
    {
        charcount += 1
        drawtext += string_copy(dia3, charcount, 1)
        if (!((charcount & 1)))
            audio_play_sound(dia11, 10, false)
        if (!((charcount & 3)))
            talkface = speakface1
        if (!((charcount & 7)))
            talkface = speakface2
    }
    else
        talkface = speakface1
    draw_set_colour(talkcolor)
    if (global.sansfont == 3)
    {
        draw_set_colour(make_colour_rgb(100, 100, 100))
        if (talkface != -1)
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed((((68 + sprite_get_width(talkface)) + 15) - 5), (((global.window_y - 78) + 8) - 5), drawtext, 20, 171, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(((68 + sprite_get_width(talkface)) + 15), ((global.window_y - 78) + 8), drawtext, 20, 171, 1.17, 1.17, 0)
        }
        else
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed(40, (((global.window_y - 78) + 8) - 5), drawtext, 20, 205, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(45, ((global.window_y - 78) + 8), drawtext, 20, 205, 1.17, 1.17, 0)
        }
    }
    else if (dia12 == 1)
    {
        if (talkface != -1)
            draw_text_ext_transformed((108 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 156, 1.17, 1.17, 0)
        else
            draw_text_ext_transformed((60 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 190, 1.17, 1.17, 0)
    }
    else if (talkface != -1)
        draw_text_ext_transformed((93 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 171, 1.17, 1.17, 0)
    else
        draw_text_ext_transformed((45 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 205, 1.17, 1.17, 0)
}
if (text4 == 1)
{
    if (charcount != string_length(dia4))
    {
        charcount += 1
        drawtext += string_copy(dia4, charcount, 1)
        if (!((charcount & 1)))
            audio_play_sound(dia11, 10, false)
        if (!((charcount & 3)))
            talkface = speakface1
        if (!((charcount & 7)))
            talkface = speakface2
    }
    else
        talkface = speakface1
    draw_set_colour(talkcolor)
    if (global.sansfont == 3)
    {
        draw_set_colour(make_colour_rgb(100, 100, 100))
        if (talkface != -1)
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed((((68 + sprite_get_width(talkface)) + 15) - 5), (((global.window_y - 78) + 8) - 5), drawtext, 20, 171, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(((68 + sprite_get_width(talkface)) + 15), ((global.window_y - 78) + 8), drawtext, 20, 171, 1.17, 1.17, 0)
        }
        else
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed(40, (((global.window_y - 78) + 8) - 5), drawtext, 20, 205, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(45, ((global.window_y - 78) + 8), drawtext, 20, 205, 1.17, 1.17, 0)
        }
    }
    else if (dia12 == 1)
    {
        if (talkface != -1)
            draw_text_ext_transformed((108 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 156, 1.17, 1.17, 0)
        else
            draw_text_ext_transformed((60 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 190, 1.17, 1.17, 0)
    }
    else if (talkface != -1)
        draw_text_ext_transformed((93 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 171, 1.17, 1.17, 0)
    else
        draw_text_ext_transformed((45 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 205, 1.17, 1.17, 0)
}
if (text5 == 1)
{
    if (charcount != string_length(dia5))
    {
        charcount += 1
        drawtext += string_copy(dia5, charcount, 1)
        if (!((charcount & 1)))
            audio_play_sound(dia11, 10, false)
        if (!((charcount & 3)))
            talkface = speakface1
        if (!((charcount & 7)))
            talkface = speakface2
    }
    else
        talkface = speakface1
    draw_set_colour(talkcolor)
    if (global.sansfont == 3)
    {
        draw_set_colour(make_colour_rgb(100, 100, 100))
        if (talkface != -1)
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed((((68 + sprite_get_width(talkface)) + 15) - 5), (((global.window_y - 78) + 8) - 5), drawtext, 20, 171, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(((68 + sprite_get_width(talkface)) + 15), ((global.window_y - 78) + 8), drawtext, 20, 171, 1.17, 1.17, 0)
        }
        else
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed(40, (((global.window_y - 78) + 8) - 5), drawtext, 20, 205, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(45, ((global.window_y - 78) + 8), drawtext, 20, 205, 1.17, 1.17, 0)
        }
    }
    else if (dia12 == 1)
    {
        if (talkface != -1)
            draw_text_ext_transformed((108 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 156, 1.17, 1.17, 0)
        else
            draw_text_ext_transformed((60 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 190, 1.17, 1.17, 0)
    }
    else if (talkface != -1)
        draw_text_ext_transformed((93 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 171, 1.17, 1.17, 0)
    else
        draw_text_ext_transformed((45 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 205, 1.17, 1.17, 0)
}
if (text6 == 1)
{
    if (charcount != string_length(dia6))
    {
        charcount += 1
        drawtext += string_copy(dia6, charcount, 1)
        if (!((charcount & 1)))
            audio_play_sound(dia11, 10, false)
        if (!((charcount & 3)))
            talkface = speakface1
        if (!((charcount & 7)))
            talkface = speakface2
    }
    else
        talkface = speakface1
    draw_set_colour(talkcolor)
    if (global.sansfont == 3)
    {
        draw_set_colour(make_colour_rgb(100, 100, 100))
        if (talkface != -1)
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed((((68 + sprite_get_width(talkface)) + 15) - 5), (((global.window_y - 78) + 8) - 5), drawtext, 20, 171, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(((68 + sprite_get_width(talkface)) + 15), ((global.window_y - 78) + 8), drawtext, 20, 171, 1.17, 1.17, 0)
        }
        else
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed(40, (((global.window_y - 78) + 8) - 5), drawtext, 20, 205, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(45, ((global.window_y - 78) + 8), drawtext, 20, 205, 1.17, 1.17, 0)
        }
    }
    else if (dia12 == 1)
    {
        if (talkface != -1)
            draw_text_ext_transformed((108 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 156, 1.17, 1.17, 0)
        else
            draw_text_ext_transformed((60 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 190, 1.17, 1.17, 0)
    }
    else if (talkface != -1)
        draw_text_ext_transformed((93 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 171, 1.17, 1.17, 0)
    else
        draw_text_ext_transformed((45 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 205, 1.17, 1.17, 0)
}
if (text7 == 1)
{
    if (charcount != string_length(dia7))
    {
        charcount += 1
        drawtext += string_copy(dia7, charcount, 1)
        if (!((charcount & 1)))
            audio_play_sound(dia11, 10, false)
        if (!((charcount & 3)))
            talkface = speakface1
        if (!((charcount & 7)))
            talkface = speakface2
    }
    else
        talkface = speakface1
    draw_set_colour(talkcolor)
    if (global.sansfont == 3)
    {
        draw_set_colour(make_colour_rgb(100, 100, 100))
        if (talkface != -1)
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed((((68 + sprite_get_width(talkface)) + 15) - 5), (((global.window_y - 78) + 8) - 5), drawtext, 20, 171, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(((68 + sprite_get_width(talkface)) + 15), ((global.window_y - 78) + 8), drawtext, 20, 171, 1.17, 1.17, 0)
        }
        else
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed(40, (((global.window_y - 78) + 8) - 5), drawtext, 20, 205, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(45, ((global.window_y - 78) + 8), drawtext, 20, 205, 1.17, 1.17, 0)
        }
    }
    else if (dia12 == 1)
    {
        if (talkface != -1)
            draw_text_ext_transformed((108 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 156, 1.17, 1.17, 0)
        else
            draw_text_ext_transformed((60 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 190, 1.17, 1.17, 0)
    }
    else if (talkface != -1)
        draw_text_ext_transformed((93 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 171, 1.17, 1.17, 0)
    else
        draw_text_ext_transformed((45 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 205, 1.17, 1.17, 0)
}
if (text8 == 1)
{
    if (charcount != string_length(dia8))
    {
        charcount += 1
        drawtext += string_copy(dia8, charcount, 1)
        if (!((charcount & 1)))
            audio_play_sound(dia11, 10, false)
        if (!((charcount & 3)))
            talkface = speakface1
        if (!((charcount & 7)))
            talkface = speakface2
    }
    else
        talkface = speakface1
    draw_set_colour(talkcolor)
    if (global.sansfont == 3)
    {
        draw_set_colour(make_colour_rgb(100, 100, 100))
        if (talkface != -1)
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed((((68 + sprite_get_width(talkface)) + 15) - 5), (((global.window_y - 78) + 8) - 5), drawtext, 20, 171, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(((68 + sprite_get_width(talkface)) + 15), ((global.window_y - 78) + 8), drawtext, 20, 171, 1.17, 1.17, 0)
        }
        else
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed(40, (((global.window_y - 78) + 8) - 5), drawtext, 20, 205, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(45, ((global.window_y - 78) + 8), drawtext, 20, 205, 1.17, 1.17, 0)
        }
    }
    else if (dia12 == 1)
    {
        if (talkface != -1)
            draw_text_ext_transformed((108 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 156, 1.17, 1.17, 0)
        else
            draw_text_ext_transformed((60 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 190, 1.17, 1.17, 0)
    }
    else if (talkface != -1)
        draw_text_ext_transformed((93 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 171, 1.17, 1.17, 0)
    else
        draw_text_ext_transformed((45 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 205, 1.17, 1.17, 0)
}
if (text9 == 1)
{
    if (charcount != string_length(dia9))
    {
        charcount += 1
        drawtext += string_copy(dia9, charcount, 1)
        if (!((charcount & 1)))
            audio_play_sound(dia11, 10, false)
        if (!((charcount & 3)))
            talkface = speakface1
        if (!((charcount & 7)))
            talkface = speakface2
    }
    else
        talkface = speakface1
    draw_set_colour(talkcolor)
    if (global.sansfont == 3)
    {
        draw_set_colour(make_colour_rgb(100, 100, 100))
        if (talkface != -1)
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed((((68 + sprite_get_width(talkface)) + 15) - 5), (((global.window_y - 78) + 8) - 5), drawtext, 20, 171, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(((68 + sprite_get_width(talkface)) + 15), ((global.window_y - 78) + 8), drawtext, 20, 171, 1.17, 1.17, 0)
        }
        else
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed(40, (((global.window_y - 78) + 8) - 5), drawtext, 20, 205, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(45, ((global.window_y - 78) + 8), drawtext, 20, 205, 1.17, 1.17, 0)
        }
    }
    else if (dia12 == 1)
    {
        if (talkface != -1)
            draw_text_ext_transformed((108 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 156, 1.17, 1.17, 0)
        else
            draw_text_ext_transformed((60 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 190, 1.17, 1.17, 0)
    }
    else if (talkface != -1)
        draw_text_ext_transformed((93 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 171, 1.17, 1.17, 0)
    else
        draw_text_ext_transformed((45 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 205, 1.17, 1.17, 0)
}
if (text10 == 1)
{
    if (charcount != string_length(dia10))
    {
        charcount += 1
        drawtext += string_copy(dia10, charcount, 1)
        if (!((charcount & 1)))
            audio_play_sound(dia11, 10, false)
        if (!((charcount & 3)))
            talkface = speakface1
        if (!((charcount & 7)))
            talkface = speakface2
    }
    else
        talkface = speakface1
    draw_set_colour(talkcolor)
    if (global.sansfont == 3)
    {
        draw_set_colour(make_colour_rgb(100, 100, 100))
        if (talkface != -1)
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed((((68 + sprite_get_width(talkface)) + 15) - 5), (((global.window_y - 78) + 8) - 5), drawtext, 20, 171, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(((68 + sprite_get_width(talkface)) + 15), ((global.window_y - 78) + 8), drawtext, 20, 171, 1.17, 1.17, 0)
        }
        else
        {
            draw_set_font(fn_wingdings)
            draw_text_ext_transformed(40, (((global.window_y - 78) + 8) - 5), drawtext, 20, 205, 0.5, 0.5, 0)
            draw_set_font(fn_8bit)
            draw_set_colour(c_white)
            draw_text_ext_transformed(45, ((global.window_y - 78) + 8), drawtext, 20, 205, 1.17, 1.17, 0)
        }
    }
    else if (dia12 == 1)
    {
        if (talkface != -1)
            draw_text_ext_transformed((108 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 156, 1.17, 1.17, 0)
        else
            draw_text_ext_transformed((60 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 190, 1.17, 1.17, 0)
    }
    else if (talkface != -1)
        draw_text_ext_transformed((93 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 171, 1.17, 1.17, 0)
    else
        draw_text_ext_transformed((45 + view_xview[0]), ((global.window_y - 78) + 4), drawtext, 20, 205, 1.17, 1.17, 0)
}


}