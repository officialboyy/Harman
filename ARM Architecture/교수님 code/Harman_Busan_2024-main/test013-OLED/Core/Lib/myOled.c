#include "fonts.h"
#include "oled.h"

FontDef_t *Fonts[] = { &Font_7x10, &Font_11x18, &Font_16x26 };
void SSD1306_Outs(int x, int y, char *s, int n)
{
	SSD1306_GotoXY (x, y);
	SSD1306_Puts (s, Fonts[n-1], 1);
}

