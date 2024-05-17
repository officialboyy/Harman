#include <stdio.h>
// 단색 BMP file
int main(int n, char* v[])
{
    if (n < 3)
    {
        printf("Usage :\n    bmp2txt  a.bmp  t.txt\n\n\n"); return 0;
    }
    unsigned char c, b[32];
    unsigned int  i, j, *k, *m, *w, col = 6, al = 2;
    FILE* fi = fopen(v[1], "rb");
    FILE* fo = fopen(v[2], "wb");

    for (i = 0; i < 32; i++) b[i] = fgetc(fi);
    k = (unsigned int*)(b+10);//k = ((((b[13] * 256) + b[12]) * 256) + b[11]) * 256 + b[10];
    m = (unsigned int*)(b+2);//m = ((((b[5] * 256) + b[4]) * 256) + b[3]) * 256 + b[2];
    w = (unsigned int*)(b+18);
    col = *w / 8; al = 4 - ((col + 4) % 4);
    for (i = 32; i < *k; i++) fgetc(fi);

    printf("Total %d byte\nBitmap data offset : %d\nWidth : %d(%d/%d)\n", *m, *k, *w, col, al);
    for (i = *k, j = 0; i < *m; i++)
    {
        c = fgetc(fi);
        fprintf(fo, " 0x%02x", c);
        if (++j == col) 
        {
            for (int i1 = 0; i1 < al; i1++) fgetc(fi); i += al;
            fprintf(fo, ",\r\n"); j = 0;
        }
        else fprintf(fo, ",");
    }
}
