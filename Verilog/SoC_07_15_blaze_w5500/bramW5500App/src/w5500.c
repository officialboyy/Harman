

#include "w5500.h"
#include "sleep.h"
#include "platform.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "ax_common.h"

wiz_NetInfo gWIZNETINFO = {
	{0x0A, 0x15, 0x23, 0x07, 0x21, 0x01},
	{192, 168, 1, 11},
	{255, 255, 255, 0},
	{192, 168, 1, 1},
	{0, 0, 0, 0},
	NETINFO_STATIC
};

uint8_t   _DNS_[4];      // DNS server ip address
dhcp_mode _DHCP_;        // DHCP mode

uint8_t   tcpRxBuffer[TCP_BUF_MAX];
uint8_t   tcpTxBuffer[TCP_BUF_MAX];


void w5500_write(uint16_t addr16, uint8_t bsb, uint16_t data_len, uint8_t *dat8)
{
	uint16_t i;
	uint32_t data32;

	eth_ram_sel(1);
	for(i=0; i<data_len/4; i++)
	{
		data32 = (uint32_t)(dat8[i*4]<<24) | (uint32_t)(dat8[i*4+1]<<16) | (uint32_t)(dat8[i*4+2]) | (uint32_t)(dat8[i*4+3]);
		Xil_Out32(XPAR_BRAM_0_BASEADDR+(4*i), data32);
		//xil_printf("w addr : %08x, data : %08x \r\n", XPAR_BRAM_0_BASEADDR+(4*i), data32);
	}
	if((data_len%4) != 0)
	{
		if((data_len%4) == 1)			data32 = (uint32_t)(dat8[i*4]<<24);
		else if((data_len%4) == 2)		data32 = (uint32_t)(dat8[i*4]<<24) | (uint32_t)(dat8[i*4+1]<<16);
		else                       		data32 = (uint32_t)(dat8[i*4]<<24) | (uint32_t)(dat8[i*4+1]<<16) | (uint32_t)(dat8[i*4+2]<<8);
		Xil_Out32(XPAR_BRAM_0_BASEADDR+(4*i), data32);
		//xil_printf("w addr : %08x, data : %08x \r\n", XPAR_BRAM_0_BASEADDR+(4*i), data32);
	}
	eth_ram_sel(0);

	eth_addr((uint32_t)(addr16<<8) | (uint32_t)(bsb<<3) | (1<<2));
	eth_size((uint32_t)data_len-1);
	//xil_printf("ww addr : %08x, size : %08x \r\n", (uint32_t)(addr16<<8) | (uint32_t)((bsb<<3)|(1<<2)), (uint32_t)data_len-1);

	eth_start(1);
	eth_start(0);
	while(eth_done() == 0)   ;
}

void w5500_read(uint16_t addr16, uint8_t bsb, uint16_t data_len, uint8_t *rbuf)
{
	uint16_t i;
	uint32_t rdata32;

	eth_addr((uint32_t)(addr16<<8) | (uint32_t)(bsb<<3));
	eth_size((uint32_t)data_len-1);
	//xil_printf("rr addr : %08x, size : %08x \r\n", (uint32_t)(addr16<<8) | (uint32_t)(bsb<<3), (uint32_t)data_len-1);

	eth_start(1);
	eth_start(0);
	while(eth_done() == 0)   ;

	eth_ram_sel(1);
	for(i=0; i<data_len/4; i++)
	{
		rdata32 = Xil_In32(XPAR_BRAM_0_BASEADDR+i*4);
		rbuf[i*4]   = (uint8_t)(rdata32>>24);
		rbuf[i*4+1] = (uint8_t)((rdata32>>16) & 0xff);
		rbuf[i*4+2] = (uint8_t)((rdata32>>8) & 0xff);
		rbuf[i*4+3] = (uint8_t)(rdata32&0xff);
		//xil_printf("r addr : %08x, data : %08x \r\n", XPAR_BRAM_0_BASEADDR+i*4, rdata32);
	}
	if((data_len%4) != 0)
	{
		rdata32 = Xil_In32(XPAR_BRAM_0_BASEADDR+i*4);
		if((data_len%4)>=1)			rbuf[i*4]   = (uint8_t)(rdata32>>24);
		if((data_len%4)>=2)			rbuf[i*4+1] = (uint8_t)((rdata32>>16) & 0xff);
		if((data_len%4)>=3)			rbuf[i*4+2] = (uint8_t)((rdata32>>8) & 0xff);
		//xil_printf("r addr : %08x, data : %08x \r\n", XPAR_BRAM_0_BASEADDR+i*4, rdata32);
	}
	eth_ram_sel(0);
}

void WIZCHIP_WRITE(uint32_t AddrSel, uint8_t wb )
{
	w5500_write( (uint16_t)((AddrSel>>8)&0xffff), (uint8_t)((AddrSel>>3)&0x1f), 1, &wb);
}

void WIZCHIP_WRITE_BUF(uint32_t AddrSel, uint8_t* pBuf, uint16_t len)
{
	w5500_write( (uint16_t)((AddrSel>>8)&0xffff), (uint8_t)((AddrSel>>3)&0x1f), len, pBuf);
}

uint8_t  WIZCHIP_READ(uint32_t AddrSel)
{
	uint8_t  rbuf[6];

	w5500_read( (uint16_t)((AddrSel>>8)&0xffff), (uint8_t)((AddrSel>>3)&0x1f), 1, rbuf);

	return(rbuf[0]);
}

void WIZCHIP_READ_BUF (uint32_t AddrSel, uint8_t* pBuf, uint16_t len)
{
	w5500_read( (uint16_t)((AddrSel>>8)&0xffff), (uint8_t)((AddrSel>>3)&0x1f), len, pBuf);
}

uint16_t getSn_TX_FSR(uint8_t sn)
{
	uint16_t val=0,val1=0;

	do
	{
		val1 = WIZCHIP_READ(Sn_TX_FSR(sn));
		val1 = (val1 << 8) + WIZCHIP_READ(WIZCHIP_OFFSET_INC(Sn_TX_FSR(sn),1));
		if (val1 != 0)
		{
			val = WIZCHIP_READ(Sn_TX_FSR(sn));
			val = (val << 8) + WIZCHIP_READ(WIZCHIP_OFFSET_INC(Sn_TX_FSR(sn),1));
		}
	} while (val != val1);

	return val;
}


uint16_t getSn_RX_RSR(uint8_t sn)
{
	uint16_t val=0,val1=0;

	do
	{
		val1 = WIZCHIP_READ(Sn_RX_RSR(sn));
		val1 = (val1 << 8) + WIZCHIP_READ(WIZCHIP_OFFSET_INC(Sn_RX_RSR(sn),1));
		if (val1 != 0)
		{
			val = WIZCHIP_READ(Sn_RX_RSR(sn));
			val = (val << 8) + WIZCHIP_READ(WIZCHIP_OFFSET_INC(Sn_RX_RSR(sn),1));
		}
	}while (val != val1);

	return val;
}


void wiz_send_data(uint8_t sn, uint8_t *wizdata, uint16_t len)
{
	uint16_t ptr = 0;
	uint32_t addrsel = 0;

	if(len == 0)  return;
	ptr = getSn_TX_WR(sn);
	//M20140501 : implict type casting -> explict type casting
	//addrsel = (ptr << 8) + (WIZCHIP_TXBUF_BLOCK(sn) << 3);
	addrsel = ((uint32_t)ptr << 8) + (WIZCHIP_TXBUF_BLOCK(sn) << 3);
	//
	WIZCHIP_WRITE_BUF(addrsel,wizdata, len);

	ptr += len;
	setSn_TX_WR(sn,ptr);
}

void wiz_recv_data(uint8_t sn, uint8_t *wizdata, uint16_t len)
{
	uint16_t ptr = 0;
	uint32_t addrsel = 0;

	if(len == 0) return;
	ptr = getSn_RX_RD(sn);
	//M20140501 : implict type casting -> explict type casting
	//addrsel = ((ptr << 8) + (WIZCHIP_RXBUF_BLOCK(sn) << 3);
	addrsel = ((uint32_t)ptr << 8) + (WIZCHIP_RXBUF_BLOCK(sn) << 3);
	//
	WIZCHIP_READ_BUF(addrsel, wizdata, len);
	ptr += len;

	setSn_RX_RD(sn,ptr);
}

/*
void wiz_recv_ignore(uint8_t sn, uint16_t len)
{
	uint16_t ptr = 0;

	ptr = getSn_RX_RD(sn);
	ptr += len;
	setSn_RX_RD(sn,ptr);
}
*/

