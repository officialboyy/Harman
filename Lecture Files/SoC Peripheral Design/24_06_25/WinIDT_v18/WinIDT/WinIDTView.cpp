
// WinIDTView.cpp : CWinIDTView 클래스의 구현
//

#include "stdafx.h"
// SHARED_HANDLERS는 미리 보기, 축소판 그림 및 검색 필터 처리기를 구현하는 ATL 프로젝트에서 정의할 수 있으며
// 해당 프로젝트와 문서 코드를 공유하도록 해 줍니다.
#ifndef SHARED_HANDLERS
#include "WinIDT.h"
#endif

#include "WinIDTDoc.h"
#include "WinIDTView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

#define  COMM_BUF_SIZE			2048
#define	 COMM_DEBUG_MODE		0
#define  COM_UPDATE_MODE		1


int	  gTcpLinkTimeoutMax = 5000;
int   gCommLoadFlag = 0;
char  gCommRcvBuffer[COMM_BUF_SIZE]="";
int   gComIndex=0;
int   gCommRcvState = COMM_DEBUG_MODE;

// CWinIDTView

IMPLEMENT_DYNCREATE(CWinIDTView, CFormView)

BEGIN_MESSAGE_MAP(CWinIDTView, CFormView)
	ON_MESSAGE(WM_COMM_READ, &CWinIDTView::OnCommRead)    // Communication Message Handleer
	ON_BN_CLICKED(IDC_BUTTON_SERIAL_OPEN, &CWinIDTView::OnBnClickedButtonSerialOpen)
	ON_BN_CLICKED(IDC_BUTTON_SERIAL_CLOSE, &CWinIDTView::OnBnClickedButtonSerialClose)
	ON_BN_CLICKED(IDC_BUTTON_CLEAR, &CWinIDTView::OnBnClickedButtonClear)
	ON_WM_CTLCOLOR()
	ON_WM_DRAWITEM()
	ON_BN_CLICKED(IDC_BUTTON_NET_LOAD_PROM, &CWinIDTView::OnBnClickedButtonNetLoadProm)
	ON_BN_CLICKED(IDC_BUTTON_NET_SAVE_PROM, &CWinIDTView::OnBnClickedButtonNetSaveProm)
	ON_BN_CLICKED(IDC_BUTTON_MAC_WRITE, &CWinIDTView::OnBnClickedButtonMacWrite)
	ON_BN_CLICKED(IDC_BUTTON_MAC_READ, &CWinIDTView::OnBnClickedButtonMacRead)
	ON_BN_CLICKED(IDC_BUTTON_TCPIP_CONNECT, &CWinIDTView::OnBnClickedButtonTcpipConnect)
	ON_BN_CLICKED(IDC_BUTTON_TCPIP_CLOSE, &CWinIDTView::OnBnClickedButtonTcpipClose)
	ON_BN_CLICKED(IDC_BUTTON_INFO_READ, &CWinIDTView::OnBnClickedButtonInfoRead)
	ON_WM_TIMER()
	ON_BN_CLICKED(IDC_BUTTON_FW_DOWN, &CWinIDTView::OnBnClickedButtonFwDown)
	ON_BN_CLICKED(IDC_CHECK_SHOW_PCDATA, &CWinIDTView::OnBnClickedCheckShowPcdata)
	ON_BN_CLICKED(IDC_CHECK_SHOW_BDDATA, &CWinIDTView::OnBnClickedCheckShowBddata)
END_MESSAGE_MAP()

// CWinIDTView 생성/소멸
HWND hCommWnd;
unsigned char gDataBuffer[64*1024];



CWinIDTView::CWinIDTView()
	: CFormView(CWinIDTView::IDD)
	, m_nComPort(4)
	, m_nComState(0)
	, m_strCommRxBuffer(_T(""))
	, m_nExitFlag(0)
	, m_strMsg(_T(""))
	, m_strMessage(_T(""))
	, m_nSocketFlag(0)
	, m_nCommTcpState(0)
{
	// TODO: 여기에 생성 코드를 추가합니다.

}

CWinIDTView::~CWinIDTView()
{
	KillTimer(TIMER_TCP);
	NetworkCloseSocket();
}

void CWinIDTView::DoDataExchange(CDataExchange* pDX)
{
	CFormView::DoDataExchange(pDX);
	DDX_Text(pDX, IDC_EDIT_MESSAGE, m_strMessage);
	DDX_Control(pDX, IDC_COMBO_COM_PORT, m_comboComPort);
	DDX_Control(pDX, IDC_COMBO_BUADRATE, m_comboBaudRate);
	DDX_Control(pDX, IDC_BUTTON_SERIAL_STATUS, m_btSerialStatus);
	DDX_Control(pDX, IDC_EDIT_MESSAGE, m_editMessage);
	DDX_Control(pDX, IDC_DEVICE_IPADDRESS, m_ctrlDeviceIP);
	DDX_Control(pDX, IDC_DEVICE_SUBNET, m_ctrlDeviceSubNet);
	DDX_Control(pDX, IDC_DEVICE_GATEWAY, m_ctrlDeviceGateway);
	DDX_Control(pDX, IDC_EDIT_ADDR2, m_editMacAddr);
	DDX_Control(pDX, IDC_STATIC_TCPIP, m_editTcpipState);
	DDX_Control(pDX, IDC_FW_PROGRESS, m_ctrlProgress);
	DDX_Control(pDX, IDC_CHECK_SHOW_PCDATA, m_chkPCData);
	DDX_Control(pDX, IDC_CHECK_SHOW_BDDATA, m_chkBDData);
}

BOOL CWinIDTView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: CREATESTRUCT cs를 수정하여 여기에서
	//  Window 클래스 또는 스타일을 수정합니다.

	return CFormView::PreCreateWindow(cs);
}

void CWinIDTView::OnInitialUpdate()
{
	CFormView::OnInitialUpdate();
	GetParentFrame()->RecalcLayout();
	ResizeParentToFit();

	hCommWnd = m_hWnd;

	errno_t err;
	int nBPS=1, nComPort=3;
	CString FileName;
	FILE *fp;

	err = fopen_s(&fp, _T("com_set.txt"), "rt");
	if(err == 0)
	{
		fscanf_s(fp, "%d", &nComPort);
		fscanf_s(fp, "%d", &nBPS);
		fclose(fp);
	}
	else
	{
		nBPS = 1;
		nComPort = 3;
	}

	CString sComPort =_T("");
	for(int i=0; i<20; i++)
	{
		sComPort.Format(_T("COM%d                        "), i+1);
		m_comboComPort.AddString(sComPort);
	}
	m_comboComPort.SetCurSel(nComPort);

	m_comboBaudRate.AddString(_T("4800                    "));
	m_comboBaudRate.AddString(_T("9600                    "));
	m_comboBaudRate.AddString(_T("19200                   "));
	m_comboBaudRate.AddString(_T("38400                   "));
	m_comboBaudRate.AddString(_T("57600                   "));
	m_comboBaudRate.AddString(_T("76800                   "));
	m_comboBaudRate.AddString(_T("115200                  "));
	m_comboBaudRate.AddString(_T("230400                  "));
	m_comboBaudRate.AddString(_T("460800                  "));
	m_comboBaudRate.AddString(_T("921600                  "));
	m_comboBaudRate.AddString(_T("1843200                 "));
	m_comboBaudRate.AddString(_T("3686400                 "));
	m_comboBaudRate.SetCurSel(nBPS);

	m_bmpPlay.LoadBitmap(IDB_BITMAP_PLAY);
	m_bmpStop.LoadBitmap(IDB_BITMAP_STOP);

	m_btSerialStatus.SetBitmap(m_bmpStop);

	m_ctrlDeviceIP.SetAddress(192, 168, 1, 11);
	m_ctrlDeviceSubNet.SetAddress(255, 255, 255, 0);
	m_ctrlDeviceGateway.SetAddress(192, 168, 1, 1);

	m_editMacAddr.SetWindowTextA(_T("1A202301273F"));

	m_ctrlProgress.SetRange(0, 100);
	m_ctrlProgress.SetPos(0);

	m_editMessage.SetLimitText(0);

	SetTimer(TIMER_TCP , 1000 , 0);
}


// CWinIDTView 진단

#ifdef _DEBUG
void CWinIDTView::AssertValid() const
{
	CFormView::AssertValid();
}

void CWinIDTView::Dump(CDumpContext& dc) const
{
	CFormView::Dump(dc);
}

CWinIDTDoc* CWinIDTView::GetDocument() const // 디버그되지 않은 버전은 인라인으로 지정됩니다.
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CWinIDTDoc)));
	return (CWinIDTDoc*)m_pDocument;
}
#endif //_DEBUG


// CWinIDTView 메시지 처리기


void CWinIDTView::OnBnClickedButtonSerialOpen()
{
	// TODO: 여기에 컨트롤 알림 처리기 코드를 추가합니다.
	CString com_port, msg;
	DWORD	baud_rate[] = {4800, 9600, 19200, 38400, 57600, 76800, 115200, 230400, 460800, 921600, 1843200, 3686400};

	if(m_nComState==0)
	{
		m_nComPort = m_comboComPort.GetCurSel()+1;
		com_port.Format(_T("//./COM%d"), m_nComPort);

		if(!(m_comm.OpenPort(com_port, baud_rate[m_comboBaudRate.GetCurSel()], 1)))
		{
			msg.Format(_T("\r\n COM%d open fail"), m_nComPort);
			UpdateDebugMsg(msg);
		}
		else
		{
			m_nComState = TRUE;
			msg.Format(_T("\r\n COM%d open !"), m_nComPort);
			UpdateDebugMsg(msg);
			m_btSerialStatus.SetBitmap(m_bmpPlay);

			errno_t err;
			FILE *fp;
			err = fopen_s(&fp, _T("com_set.txt"), "wt");
			if(err == 0)
			{
				fprintf_s(fp, "%d\r\n", m_comboComPort.GetCurSel());
				fprintf_s(fp, "%d\r\n", m_comboBaudRate.GetCurSel());
				fclose(fp);
			}
			else	;
		}
	}
	else	;

}


void CWinIDTView::OnBnClickedButtonSerialClose()
{
	// TODO: 여기에 컨트롤 알림 처리기 코드를 추가합니다.
	CString msg;
	if(m_nComState)
	{
		m_comm.ClosePort();
		msg.Format(_T("\r\n COM%d close.."), m_nComPort);
		UpdateDebugMsg(msg);
		m_nComState = 0;
		m_btSerialStatus.SetBitmap(m_bmpStop);
	}
	else	;
}


void CWinIDTView::UpdateDebugMsg(CString msg)
{
//	m_strMessage += msg;
//	UpdateData(FALSE);

	int nLength = m_editMessage.GetWindowTextLengthA();
	m_editMessage.SetSel(nLength, nLength);
	m_editMessage.ReplaceSel(msg);

}


void CWinIDTView::OnBnClickedButtonClear()
{
	m_strMessage = _T("");
	int i;
	for(i=0; i<300; i++)
		m_strMessage += _T("                                               \r\n");
	UpdateData(FALSE);
	m_editMessage.LineScroll(m_editMessage.GetLineCount());

	m_strMessage = _T("");
	UpdateData(FALSE);
	m_editMessage.LineScroll(m_editMessage.GetLineCount());

}


HBRUSH CWinIDTView::OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor)
{
	HBRUSH hbr = CFormView::OnCtlColor(pDC, pWnd, nCtlColor);

	switch (nCtlColor)
    {
		case CTLCOLOR_STATIC :
		case CTLCOLOR_LISTBOX :
		case CTLCOLOR_EDIT :
		case CTLCOLOR_MSGBOX :
		case CTLCOLOR_SCROLLBAR :
			pDC->SetTextColor(RGB(255, 255, 255));
			pDC->SetBkColor(RGB(50, 50, 50));
			//pDC->SetBkMode(TRANSPARENT);
			return (HBRUSH)GetStockObject(NULL_BRUSH);
		default:
			hbr = CreateSolidBrush(RGB(50, 50, 50));
			return hbr;
			//return CFormView::OnCtlColor(pDC, pWnd, nCtlColor);
    }
}


void CWinIDTView::OnDrawItem(int nIDCtl, LPDRAWITEMSTRUCT lpDrawItemStruct)
{
	// TODO: 여기에 메시지 처리기 코드를 추가 및/또는 기본값을 호출합니다.
	if ( (nIDCtl==IDC_BUTTON_SERIAL_OPEN) ||
		 (nIDCtl==IDC_BUTTON_SERIAL_CLOSE) ||
		 (nIDCtl==IDC_BUTTON_SERIAL_STATUS) ||
		 (nIDCtl==IDC_BUTTON_FW_DOWNLOAD) ||
		 (nIDCtl==IDC_BUTTON_CLEAR) 	 )
	{
		CDC dc;

		dc.Attach(lpDrawItemStruct ->hDC);
		RECT rect;
		rect= lpDrawItemStruct ->rcItem;

		dc.FillSolidRect(&rect,RGB(100,100,100));
		UINT state=lpDrawItemStruct->itemState;

		if((state & ODS_SELECTED))
		{
			dc.DrawEdge(&rect,EDGE_SUNKEN,BF_RECT);

		}
		else
		{
			dc.DrawEdge(&rect,EDGE_RAISED,BF_RECT);
		}

		dc.SetBkColor(RGB(100,100,255));
		dc.SetTextColor(RGB(255,255,255));
		dc.SetBkMode( TRANSPARENT );

		TCHAR buffer[MAX_PATH];
		ZeroMemory(buffer,MAX_PATH );
		::GetWindowText(lpDrawItemStruct->hwndItem,buffer,MAX_PATH);
		dc.DrawText(buffer,&rect,DT_CENTER|DT_VCENTER|DT_SINGLELINE);

		dc.Detach();
	}				

	CFormView::OnDrawItem(nIDCtl, lpDrawItemStruct);
}


BYTE CWinIDTView::Hexa2Int(BYTE ch)
{
	BYTE ret = 0;

	if((ch >= '0') && (ch <= '9'))		ret = ch - '0';
	else if((ch >= 'a') && (ch <= 'f'))	ret = ch - 'a' + 10;
	else if((ch >= 'A') && (ch <= 'F'))	ret = ch - 'A' + 10;
	else					ret = 0;

	return(ret);
}


int nRxBufferSize = 0;
LONG CWinIDTView::OnCommRead(UINT wParam, LONG lParam)
{
	BYTE aByte;
	int i;
	CString msg;

	int size= (m_comm.m_QueueRead).GetSize();
	if(size == 0)
		return 0;
	else	;

	if(gCommRcvState == COMM_DEBUG_MODE)
	{
		for(i=0; i<size; i++)
		{
			(m_comm.m_QueueRead).GetByte(&aByte);
			if( aByte!= NULL )		gCommRcvBuffer[i]= aByte;
			else { i--; size--; }
		}
		msg.Format(_T("%s"), gCommRcvBuffer);
		UpdateDebugMsg(msg);
		memset(gCommRcvBuffer, 0, COMM_BUF_SIZE);		// Very Important
	}
	else
	{
		for(i=0; i<size; i++)
		{
			(m_comm.m_QueueRead).GetByte(&aByte);
			if( aByte!= NULL )		gCommRcvBuffer[gComIndex++]= aByte;
			else { i--; size--; }

		}
		gCommRcvBuffer[gComIndex] = NULL;
		gCommLoadFlag = 1;
	}

	return 0;

}


BOOL CWinIDTView::PreTranslateMessage(MSG* pMsg)
{
	// TODO: 여기에 특수화된 코드를 추가 및/또는 기본 클래스를 호출합니다.

	return CFormView::PreTranslateMessage(pMsg);
}


void CWinIDTView::Wait(DWORD dwMilliSecond)
{
	MSG msg;
	DWORD dwStart=0;
	dwStart = GetTickCount();
 
	while(GetTickCount() - dwStart < dwMilliSecond)
	{
		while(PeekMessage(&msg,NULL,0,0,PM_REMOVE))
		{
			TranslateMessage(&msg);
			DispatchMessage(&msg);
		}
	}
}



void CWinIDTView::SendCommand(int flag)
{
	BYTE buff[200];
	CString sAddr = _T(""),  sData = _T(""),  sDuty = _T("");
	CString sBuffer = _T("");
	CTime cTime = CTime::GetCurrentTime(); // 현재 시스템으로부터 날짜 및 시간을 얻어 온다.

	CString strDate;
	strDate.Format("%02d %02d %02d %02d %02d %02d", 
			cTime.GetYear()-2000, // 현재 년도 반환
                        cTime.GetMonth(), // 현재 월 반환
                        cTime.GetDay(), // 현재 일 반환
			cTime.GetHour(), // 현재 시간 반환
                        cTime.GetMinute(), // 현재 분 반환
                        cTime.GetSecond() ); // 현재 초 반환

	switch(flag)
	{
	case 2:
		if(m_chkBDData.GetCheck()==BST_CHECKED)
			sBuffer.Format(_T("@BD1*"));
		else
			sBuffer.Format(_T("@BD0*"));
		break;
	case 5 :
		sBuffer.Format(_T("@NW%03d%03d%03d%03d%03d%03d%03d%03d%03d%03d%03d%03d*"),
			m_NetInfo.ip[0], m_NetInfo.ip[1], m_NetInfo.ip[2], m_NetInfo.ip[3],
			m_NetInfo.sn[0], m_NetInfo.sn[1], m_NetInfo.sn[2], m_NetInfo.sn[3],
			m_NetInfo.gw[0], m_NetInfo.gw[1], m_NetInfo.gw[2], m_NetInfo.gw[3] );
		break;
	case 6 :
		sBuffer.Format(_T("@NR*"));
		break;
	case 7 :
		m_editMacAddr.GetWindowText(sAddr);
		sBuffer.Format(_T("@MW%s*"), sAddr);
		break;
	case 8 :
		sBuffer.Format(_T("@MR*"));
		break;
	default :
		break;
	}

	for(int i=0; i<sBuffer.GetLength(); i++)
		buff[i] = (BYTE)sBuffer.GetAt(i);

	m_comm.WriteComm(buff, sBuffer.GetLength());

//	UpdateDebugMsg(sBuffer);

}



void CWinIDTView::OnBnClickedButtonNetSaveProm()
{
	// TODO: 여기에 컨트롤 알림 처리기 코드를 추가합니다.
	m_ctrlDeviceIP.GetAddress(m_NetInfo.ip[0], m_NetInfo.ip[1], m_NetInfo.ip[2], m_NetInfo.ip[3]);
	m_ctrlDeviceSubNet.GetAddress(m_NetInfo.sn[0], m_NetInfo.sn[1], m_NetInfo.sn[2], m_NetInfo.sn[3]);
	m_ctrlDeviceGateway.GetAddress(m_NetInfo.gw[0], m_NetInfo.gw[1], m_NetInfo.gw[2], m_NetInfo.gw[3]);
	SendCommand(5);
}

void CWinIDTView::OnBnClickedButtonNetLoadProm()
{
	int i, j;

	gCommLoadFlag = 0;
	gCommRcvState = COM_UPDATE_MODE;
	gComIndex = 0;
	memset(gCommRcvBuffer, 0, COMM_BUF_SIZE);
	SendCommand(6);
	Wait(10);
	for(i=0; i<30; i++)
	{
		if(gCommLoadFlag == 1)
			break;
		Wait(50);
	}
	Wait(100);

	CString sText1[12] = {_T(""), };
	CString sText2 = _T("");
	int nIndex = 0;
	for(i=0; i<12; i++)
	{
		sText1[i] = _T("");
		for(j=0; j<5; j++)
		{
			if( (gCommRcvBuffer[nIndex] == ' ') || (gCommRcvBuffer[nIndex] == 0) )
			{
				nIndex++;
				break;
			}
			sText2.Format(_T("%c"), gCommRcvBuffer[nIndex]);
			sText1[i] += sText2;
			nIndex++;
		}
	}

	for(i=0; i<4; i++)	m_NetInfo.ip[i]    = (BYTE)(atoi(sText1[i]));
	for(i=0; i<4; i++)	m_NetInfo.sn[i]    = (BYTE)(atoi(sText1[i+4]));
	for(i=0; i<4; i++)	m_NetInfo.gw[i]    = (BYTE)(atoi(sText1[i+8]));

	m_ctrlDeviceIP.SetAddress(m_NetInfo.ip[0], m_NetInfo.ip[1], m_NetInfo.ip[2], m_NetInfo.ip[3]);
	m_ctrlDeviceSubNet.SetAddress(m_NetInfo.sn[0], m_NetInfo.sn[1], m_NetInfo.sn[2], m_NetInfo.sn[3]);
	m_ctrlDeviceGateway.SetAddress(m_NetInfo.gw[0], m_NetInfo.gw[1], m_NetInfo.gw[2], m_NetInfo.gw[3]);

	gCommRcvState = COMM_DEBUG_MODE;
}




void CWinIDTView::OnBnClickedButtonMacWrite()
{
	// TODO: 여기에 컨트롤 알림 처리기 코드를 추가합니다.
	SendCommand(7);
}


void CWinIDTView::OnBnClickedButtonMacRead()
{
	int i;

	gCommLoadFlag = 0;
	gCommRcvState = COM_UPDATE_MODE;
	gComIndex = 0;
	memset(gCommRcvBuffer, 0, COMM_BUF_SIZE);
	SendCommand(8);
	Wait(10);
	for(i=0; i<30; i++)
	{
		if(gCommLoadFlag == 1)
			break;
		Wait(50);
	}
	Wait(100);

	CString sText1 = _T(""), sText2 = _T("");
	for(i=0; i<12; i++)
	{
		sText2.Format(_T("%c"), gCommRcvBuffer[i]);
		sText1 += sText2;
	}
	m_editMacAddr.SetWindowTextA(sText1);

	gCommRcvState = COMM_DEBUG_MODE;
}


void CWinIDTView::OnBnClickedButtonTcpipConnect()
{
	// TODO: 여기에 컨트롤 알림 처리기 코드를 추가합니다.
	NetworkCreateSocket();
	NetworkConnect(0);

	Invalidate(1);
	if( m_nSocketConnectFlag[0] == 1)
		m_editTcpipState.SetWindowTextA(_T("TCP/IP ( Connected )"));
	else    m_editTcpipState.SetWindowTextA(_T("TCP/IP ( ----------- )"));
}


void CWinIDTView::OnBnClickedButtonTcpipClose()
{
	// TODO: 여기에 컨트롤 알림 처리기 코드를 추가합니다.
	NetworkCloseSocket();

	Invalidate(1);
	m_editTcpipState.SetWindowTextA(_T("TCP/IP ( ----------- )"));
	UpdateDebugMsg(_T("\r\nDevice 0 close .."));
}


void CWinIDTView::NetworkCreateSocket(void)
{
	if(m_nSocketFlag==0)
	{
		m_nSocketFlag = 1;
		m_Socket = new CConnectSocket[MAX_NET_DEVICE];
		for(int i=0; i<MAX_NET_DEVICE; i++)
		{
			m_Socket[i].Create();
			m_nSocketConnectFlag[i] = 0;
		}
	}
}


void CWinIDTView::NetworkConnect(int nIndex)
{
	CString sText = _T(""), sText2 = _T("");

	m_ctrlDeviceIP.GetAddress(m_NetInfo.ip[0], m_NetInfo.ip[1], m_NetInfo.ip[2], m_NetInfo.ip[3]);
	sText.Format(_T("%d.%d.%d.%d"), m_NetInfo.ip[0], m_NetInfo.ip[1], m_NetInfo.ip[2], m_NetInfo.ip[3]);
	sText2.Format(_T("\r\n connect %d.%d.%d.%d..  "), m_NetInfo.ip[0], m_NetInfo.ip[1], m_NetInfo.ip[2], m_NetInfo.ip[3]);
	UpdateDebugMsg(sText2);


	if(!m_Socket[nIndex].SetTimeOut(3500))
	{
		UpdateDebugMsg(_T("timer fail.."));
		return;
	}

	if(m_Socket[nIndex].Connect(sText, PORT_TCPS) == FALSE)
	{
		m_nSocketConnectFlag[nIndex] = 0;
		UpdateDebugMsg(_T("  not found.. "));
		m_Socket[nIndex].Close();
	}
	else
	{
		m_nSocketConnectFlag[nIndex] = 1;
		UpdateDebugMsg(_T("  OK.. connected.. "));
	}

	m_Socket[nIndex].KillTimeOut();
}


void CWinIDTView::NetworkCloseSocket(void)
{
	if(m_nSocketFlag==1)
	{
		m_nSocketFlag = 0;
		delete[] m_Socket;
		for(int i=0; i<MAX_NET_DEVICE; i++)
			m_nSocketConnectFlag[i] = 0;
	}
}


void CWinIDTView::OnBnClickedButtonInfoRead()
{
	if(m_nSocketConnectFlag[0] == 0)
	{
		UpdateDebugMsg(_T("\r\n Network not found !!"));
		return ;
	}

	BYTE sData[4096];

	gTcpTotalRcvData = 0;
	::ZeroMemory(gTcpGetBuf, sizeof(gTcpGetBuf));

	for(int i=0; i<4096/16; i++)
	{
		for(int j=0; j<16; j++)
		{
			if(j<10)	sData[i*16+j] = '0'+j;
			else		sData[i*16+j] = 'A'+j-10;
		}
	}
	m_Socket[0].Send(sData, 4096);
	UpdateDebugMsg(_T("\r\n send ok .."));
}


void CWinIDTView::SendTcpip(int flag)
{
	BYTE sData[200] = {0, };

	switch(flag)
	{
	case 1 :	// get info (temper, humidity, particle info
		for(int i=0; i<24; i++)	sData[i] = 'A'+i;
		m_Socket[0].Send(sData, 24);
		break;
	default :
		break;
	}
}


void CWinIDTView::OnTimer(UINT_PTR nIDEvent)
{
	// TODO: 여기에 메시지 처리기 코드를 추가 및/또는 기본값을 호출합니다.
	CFormView::OnTimer(nIDEvent);
}


void CWinIDTView::OnBnClickedButtonFwDown()
{
	UpdateData(TRUE);
	unsigned char buf[5];

	buf[0] = 'F';
	m_comm.WriteComm(buf, 1);
	m_ctrlProgress.SetPos(0);

	FwOpenSend();
}


void CWinIDTView::FwOpenSend(void)
{
	FILE *fp;
	errno_t err;
	int file_start_pos, file_end_pos;
	int size16;
	unsigned char size8H, size8L;
	int i;
	unsigned char size_buf[10];
	unsigned char check_sum = 0;
	CString send_state;

	CClientDC dc(this);

	// file open
	CFileDialog pDlg(TRUE, "bin", ".bin", OFN_HIDEREADONLY|OFN_OVERWRITEPROMPT,	"바이너리파일(*.bin)|*.bin");

	if(pDlg.DoModal() == IDOK)
	{
		for(i=0; i<64*1024; i++)
			gDataBuffer[i] = 0xff;

		err = fopen_s(&fp, pDlg.GetPathName(), "rb");
		if(err != 0)
		{
			AfxMessageBox("file open error");
			return;
		}
		else	;

		file_start_pos = ftell(fp);
		fseek(fp, 0L, SEEK_END);
		file_end_pos = ftell(fp);
		fseek(fp, file_start_pos, SEEK_SET);

		size16 = file_end_pos;
		size8H = (unsigned char)((size16>>8) & 0xFF);
		size8L = (unsigned char)(size16 & 0xFF);

		fread(gDataBuffer, size16, 1, fp);
		fclose(fp);


		// size 전송..
		if(size8L!=0)
		{
				size8H++;
				size8L = 0;
		}
		else	;

		size_buf[0] = size8H;		// file size
		size_buf[1] = size8L;

		m_comm.WriteComm(size_buf, 2);

		check_sum ^= size_buf[0];
		check_sum ^= size_buf[1];


		UpdateDebugMsg("\r\n Send Fw..");

		// fw data 전송..
		for(i=0; i<size8H; i++)
		{
			m_comm.WriteComm(gDataBuffer+256*i, 256);
			m_ctrlProgress.SetPos((int)(i*100.0/size8H));
		}

		for(i=0; i<256*size8H; i++)
			check_sum ^= gDataBuffer[i];

		size_buf[0] = check_sum;
		m_comm.WriteComm(size_buf, 1);
		m_ctrlProgress.SetPos((int)(i*100.0/size8H));
	}
	else	;
}



void CWinIDTView::OnBnClickedCheckShowPcdata()
{
	if(m_chkPCData.GetCheck()==BST_CHECKED)		gTcpShowDataFlag = 1;
	else                                        gTcpShowDataFlag = 0;
}


void CWinIDTView::OnBnClickedCheckShowBddata()
{
	SendCommand(2);
}
