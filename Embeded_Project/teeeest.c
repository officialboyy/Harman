#include <mega128.h>                // 7-Segment 0 ~ 9999 ���� ���  
#include <delay.h> 

const char seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};       // ���� 0 ~ 9

void Seg4_out(int);                 // 4�ڸ� ���� out �Լ� ��
void Seg4_stop(int); 

void main(void) 
{ 
    int num = 0;
    int o_sw = 1;
    DDRB = 0xF0; // ��Ʈ B ���� 4��Ʈ ��� ���� 
    DDRD = 0xF0; // ��Ʈ D ���� 4��Ʈ ��� ���� 
    DDRG = 0x0F; // ��Ʈ G ���� 4��Ʈ ��� ����
    DDRE = 0x00; // ����ġ �Է� ����  
    PORTB = 0x0; // E, F, G, DP off 
    PORTD = 0x0; // A, B, C, D off  
    

    while(1)
    {       
        int n_sw = PINE & 0x10;
        if(o_sw != 0 && n_sw == 0)
        {
            while(1)
            {     
                n_sw = PINE & 0x10;
                if(n_sw == 0) 
                    break;
                Seg4_stop(num);                         
            }
        }                
        o_sw = n_sw;
         
        Seg4_out(num);
        num++;
        if(num >= 99) 
        {
            while(1)
            {
                Seg4_stop(num);
            }
            
        }
        if(num <= 0)
        {
            while(1)
            {
                Seg4_stop(num);
            }
        }                
    } 
}

void Seg4_out(int num) // �� �ڸ� ���� ��� 
{ 
    int i, N1000, N100, N10, N1, buf;
    N1000 = num / 1000; // 1000�ڸ� ���� 
    buf = num % 1000;
    N100 = buf / 100; // 100�ڸ� ���� 
    buf = buf % 100;
    N10 = buf / 10; // 10�ڸ� ���� 
    N1 = buf % 10; // 1�ڸ� ���� 
    
    for(i = 0;i < 2;i++)
    { 
        PORTG = 0b00001000; // �� ���� 7-Segment DIG4 ON(PG3=1) 
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D ǥ�� 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F); // E, F, G ǥ�� 
        delay_ms(5);
        
        PORTG = 0b00000100; // 7-Segment DIG3 ON(PG2=1)
        if(num >= 10)
        { 
            PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D ǥ�� 
            PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); // E, F, G ǥ��
        }
        else
        {
            PORTD = 0x00;
            PORTB = 0x00;
        } 
        delay_ms(5);

        PORTG = 0b00000010; // 7-Segment DIG2 ON(PG1=1)
        if(num >= 100)
        { 
            PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D ǥ�� 
            PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); // E, F, G ǥ��
        }
        else
        {
            PORTD = 0x00;
            PORTB = 0x00;
        } 
        delay_ms(5);

        PORTG = 0b00000001; // 7-Segment DIG1 ON(PG0=1)
        if(num >= 1000)
        { 
            PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D ǥ�� 
            PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); // E, F, G ǥ��
        }
        else
        {
            PORTD = 0x00;
            PORTB = 0x00;
        } 
        delay_ms(5);
        
          
    }
}

void Seg4_stop(int num) // �� �ڸ� ���� ��� 
{ 
    int i, N1000, N100, N10, N1, buf;
    N1000 = num / 1000; // 1000�ڸ� ���� 
    buf = num % 1000;
    N100 = buf / 100; // 100�ڸ� ���� 
    buf = buf % 100;
    N10 = buf / 10; // 10�ڸ� ���� 
    N1 = buf % 10; // 1�ڸ� ���� 
    
    for(i = 0;i < 2;i++)
    { 
        PORTG = 0b00001000; // �� ���� 7-Segment DIG4 ON(PG3=1) 
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D ǥ�� 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F); // E, F, G ǥ�� 
        delay_ms(5);
        
        PORTG = 0b00000100; // 7-Segment DIG3 ON(PG2=1)
        if(num >= 10)
        { 
            PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D ǥ�� 
            PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); // E, F, G ǥ��
        }
        else
        {
            PORTD = 0x00;
            PORTB = 0x00;
        } 
        delay_ms(5);

        PORTG = 0b00000010; // 7-Segment DIG2 ON(PG1=1)
        if(num >= 100)
        { 
            PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D ǥ�� 
            PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); // E, F, G ǥ��
        }
        else
        {
            PORTD = 0x00;
            PORTB = 0x00;
        } 
        delay_ms(5);

        PORTG = 0b00000001; // 7-Segment DIG1 ON(PG0=1)
        if(num >= 1000)
        { 
            PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D ǥ�� 
            PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); // E, F, G ǥ��
        }
        else
        {
            PORTD = 0x00;
            PORTB = 0x00;
        } 
        delay_ms(5);

    }
}