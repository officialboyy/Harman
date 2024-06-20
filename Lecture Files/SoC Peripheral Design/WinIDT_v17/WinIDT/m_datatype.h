#pragma once


#define	COMM_USB	0
#define	COMM_TCP_WRITE	1
#define	COMM_TCP_READ	2


#define PORT_TCPS	5000
#define PORT_UDPS	3000

#define		MAX_NET_DEVICE			20

#define		NETWORK_IP_OFFSET		11

#define		TIMER_TCP		100

// TCP/IP Receive State
#define		TCP_GET_STATE		0
#define		TCP_GET_INFO_ALL	1		// temper, humidity, particle info
#define		TCP_GET_SCRIPT_NAME	2
#define		TCP_GET_EDID		3
#define		TCP_MIPI_READ		4
#define		TCP_SPI_READ		5
#define		TCP_GET_PATTERN_STRING	6
#define		TCP_GET_BMP_INDEX	7
#define		TCP_LOAD_CURRENT_ELVSS	8
#define		TCP_GET_PING		9
#define		TCP_GET_FUNC_KEY_STATE	10
#define		TCP_CHECK_LINK		11
#define		TCP_ADC_READ		12
#define		TCP_GET_PATTERN_MAX	13
#define		TCP_FW_CHECK_SUM	14
#define		TCP_PIM_PAGE_ERASE	15
#define		TCP_PIM_CHECK_SUM	16
#define		TCP_LOAD_CURRENT_PPM	17
#define		TCP_LOAD_EEPROM_PPM	18
#define		TCP_CHECK_FILE_SEND3	19

typedef enum
{
   NETINFO_STATIC = 1,    // Static IP configuration by manually.
   NETINFO_DHCP           // Dynamic IP configruation from a DHCP sever
}  dhcp_mode;


typedef struct	_NET_INFO	{
	BYTE		mac[6];
	BYTE		ip[4];
	BYTE		sn[4];
	BYTE		gw[4];
	dhcp_mode	mode;
	int		MaxDevice;
} uNET_INFO;
