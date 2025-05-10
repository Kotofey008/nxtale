text[0] = "Hello World";
text[1] = "This is a really, really, really, long and silly string to test that the line wrapping works okay.";
text[2] = "Проверка Русского языка."

text_current = 0;
text_last = 2;
text_width = 300;
text_x = 20;
text_y = 160;

char_current = 1;
char_speed = 0.25;

text[text_current] = string_wrap(text[text_current], text_width);
