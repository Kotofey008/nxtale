depth = -10000

//textbox width
tbw = 289
tbh = 76
border = 11 //4
linesep = 16
line_width = (tbw - border*2)
tbs = spr_dialogbg
tbi = 0
tbis = 6/60

//text
page = 0
page_number = 0
text[0] = ""
text_length[0] = string_length(text[0])
char[0, 0] = ""
char_x[0, 0] = 0
char_y[0, 0] = 0
draw_char = 0
text_sd = 0.5

//options
option[0] = ""
option_link_id[0] = -1
option_pos = 0
option_number = 0

setup = false

//effects
scr_set_defaults_for_text()
last_free_space = 0