
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

#define		COM_BUF_MAX				20480
#define		COM_DEBUG_MODE			0
#define		COM_FACTOR_READ			1
#define		COM_NETWORK_READ		2
#define		COM_MAC_READ			3
#define		COM_SECTION_1P0_READ	4
#define		COM_SECTION_2P5_READ	5
#define		COM_SECTION_10_READ		6
#define		COM_PARTICLE_INFO_READ	7
#define		COM_SECTION_4P0_READ	8



int		gTcpLinkTimeoutMax = 5000;
int     gCommRcvState = COM_DEBUG_MODE;
char    gCommRcvBuffer[COM_BUF_MAX]="";
int     gComIndex=0;

// CWinIDTView

IMPLEMENT_DYNCREATE(CWinIDTView, CFormView)

BEGIN_MESSAGE_MAP(CWinIDTView, CFormView)
	ON_MESSAGE(WM_COMM_READ, &CWinIDTView::OnCommRead)    // Communication Message Handleer
	ON_BN_CLICKED(IDC_BUTTON_SERIAL_OPEN, &CWinIDTView::OnBnClickedButtonSerialOpen)
	ON_BN_CLICKED(IDC_BUTTON_SERIAL_CLOSE, &CWinIDTView::OnBnClickedButtonSerialClose)
	ON_BN_CLICKED(IDC_BUTTON_CLEAR, &CWinIDTView::OnBnClickedButtonClear)
	ON_WM_CTLCOLOR()
	ON_WM_DRAWITEM()
	ON_WM_TIMER()
	ON_BN_CLICKED(IDC_BT_PWM1_FREQW, &CWinIDTView::OnBnClickedBtPwm1Freqw)
	ON_BN_CLICKED(IDC_BT_PWM2_FREQW, &CWinIDTView::OnBnClickedBtPwm2Freqw)
	ON_BN_CLICKED(IDC_BT_PWM3_FREQW, &CWinIDTView::OnBnClickedBtPwm3Freqw)
	ON_BN_CLICKED(IDC_BT_PWM4_FREQW, &CWinIDTView::OnBnClickedBtPwm4Freqw)
	ON_BN_CLICKED(IDC_BT_PWM1_DUTYW, &CWinIDTView::OnBnClickedBtPwm1Dutyw)
	ON_BN_CLICKED(IDC_BT_PWM2_DUTYW, &CWinIDTView::OnBnClickedBtPwm2Dutyw)
	ON_BN_CLICKED(IDC_BT_PWM3_DUTYW, &CWinIDTView::OnBnClickedBtPwm3Dutyw)
	ON_BN_CLICKED(IDC_BT_PWM4_DUTYW, &CWinIDTView::OnBnClickedBtPwm4Dutyw)
	ON_BN_CLICKED(IDC_BT_PWM1_FREQR, &CWinIDTView::OnBnClickedBtPwm1Freqr)
	ON_BN_CLICKED(IDC_BT_PWM2_FREQR, &CWinIDTView::OnBnClickedBtPwm2Freqr)
	ON_BN_CLICKED(IDC_BT_PWM3_FREQR, &CWinIDTView::OnBnClickedBtPwm3Freqr)
	ON_BN_CLICKED(IDC_BT_PWM4_FREQR, &CWinIDTView::OnBnClickedBtPwm4Freqr)
	ON_BN_CLICKED(IDC_BT_PWM1_DUTYR, &CWinIDTView::OnBnClickedBtPwm1Dutyr)
	ON_BN_CLICKED(IDC_BT_PWM2_DUTYR, &CWinIDTView::OnBnClickedBtPwm2Dutyr)
	ON_BN_CLICKED(IDC_BT_PWM3_DUTYR, &CWinIDTView::OnBnClickedBtPwm3Dutyr)
	ON_BN_CLICKED(IDC_BT_PWM4_DUTYR, &CWinIDTView::OnBnClickedBtPwm4Dutyr)
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
	, m_nComBps(6)
	, m_strMessage(_T(""))
{
	// TODO: 여기에 생성 코드를 추가합니다.

}

CWinIDTView::~CWinIDTView()
{
	KillTimer(TIMER_TCP);
}

void CWinIDTView::DoDataExchange(CDataExchange* pDX)
{
	CFormView::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_COMBO_COM_PORT, m_comboComPort);
	DDX_Control(pDX, IDC_COMBO_BUADRATE, m_comboBaudRate);
	DDX_Control(pDX, IDC_BUTTON_SERIAL_STATUS, m_btSerialStatus);
	DDX_Control(pDX, IDC_EDIT_MESSAGE, m_editMessage);
	DDX_Text(pDX, IDC_EDIT_MESSAGE, m_strMessage);
	DDX_Control(pDX, IDC_EDIT_PWM1_FREQ, m_editPwm1Freq);
	DDX_Control(pDX, IDC_EDIT_PWM2_FREQ, m_editPwm2Freq);
	DDX_Control(pDX, IDC_EDIT_PWM3_FREQ, m_editPwm3Freq);
	DDX_Control(pDX, IDC_EDIT_PWM4_FREQ, m_editPwm4Freq);
	DDX_Control(pDX, IDC_EDIT_PWM1_DUTY, m_editPwm1Duty);
	DDX_Control(pDX, IDC_EDIT_PWM2_DUTY, m_editPwm2Duty);
	DDX_Control(pDX, IDC_EDIT_PWM3_DUTY, m_editPwm3Duty);
	DDX_Control(pDX, IDC_EDIT_PWM4_DUTY, m_editPwm4Duty);
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

	CString sComPort =_T("");
	for(int i=0; i<20; i++)
	{
		sComPort.Format(_T("COM%d                        "), i+1);
		m_comboComPort.AddString(sComPort);
	}
	m_comboComPort.SetCurSel(m_nComPort);

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
	m_comboBaudRate.SetCurSel(m_nComBps);

	m_bmpPlay.LoadBitmap(IDB_BITMAP_PLAY);
	m_bmpStop.LoadBitmap(IDB_BITMAP_STOP);

	m_btSerialStatus.SetBitmap(m_bmpStop);

	m_editPwm1Freq.SetWindowTextA(_T("100"));
	m_editPwm2Freq.SetWindowTextA(_T("100"));
	m_editPwm3Freq.SetWindowTextA(_T("100"));
	m_editPwm4Freq.SetWindowTextA(_T("100"));
	m_editPwm1Duty.SetWindowTextA(_T("50"));
	m_editPwm2Duty.SetWindowTextA(_T("50"));
	m_editPwm3Duty.SetWindowTextA(_T("50"));
	m_editPwm4Duty.SetWindowTextA(_T("50"));

	m_editMessage.SetLimitText(0);
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
		m_nComPort = m_comboComPort.GetCurSel();
		m_nComBps  = m_comboBaudRate.GetCurSel() ;
		com_port.Format(_T("//./COM%d"), m_nComPort+1);

		if(!(m_comm.OpenPort(com_port, baud_rate[m_nComBps], 1)))
		{
			msg.Format(_T("\r\n COM%d open fail"), m_nComPort+1);
			UpdateDebugMsg(msg);
		}
		else
		{
			m_nComState = 1;
			msg.Format(_T("\r\n COM%d open !"), m_nComPort+1);
			UpdateDebugMsg(msg);
			m_btSerialStatus.SetBitmap(m_bmpPlay);
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
		msg.Format(_T("\r\n COM%d close.."), m_nComPort+1);
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
//	m_editMessage.LineScroll(m_editMessage.GetLineCount());

	int nLength = m_editMessage.GetWindowTextLengthA();
	m_editMessage.SetSel(nLength, nLength);
	m_editMessage.ReplaceSel(msg);
//	ProcessWindowMessage();

}


void CWinIDTView::OnBnClickedButtonClear()
{
	// TODO: 여기에 컨트롤 알림 처리기 코드를 추가합니다.

	//int i;
	//for(i=0; i<300; i++)
	//	m_strMessage += _T("                                               \r\n");
	//UpdateData(FALSE);
	//m_editMessage.LineScroll(m_editMessage.GetLineCount());

	for(int i=0; i<100; i++)
		m_strMessage += _T("                                               \r\n");
	UpdateData(FALSE);
	m_editMessage.LineScroll(m_editMessage.GetLineCount());

	m_editMessage.SetSel(0, -1);
	m_editMessage.Clear();
	m_strMessage = _T("");
	m_editMessage.LineScroll(m_editMessage.GetLineCount());
	UpdateData(FALSE);

//	memset(gCommRcvBuffer, 0, COM_BUF_MAX);		// Very Important
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


//int nRxBufferSize = 0;
LONG CWinIDTView::OnCommRead(UINT wParam, LONG lParam)
{
	BYTE aByte;
	unsigned char EndofMsg = 13;
	int i;
	CString msg;

	int size= (m_comm.m_QueueRead).GetSize();
	if(size == 0)
		return 0;
	else	;

	if(gCommRcvState == COM_DEBUG_MODE)
	{
		for(i=0; i<size; i++)
		{
			(m_comm.m_QueueRead).GetByte(&aByte);
			if( aByte!= NULL )		gCommRcvBuffer[i]= aByte;
			else { i--; size--; }
		}
		msg.Format(_T("%s"), gCommRcvBuffer);
		UpdateDebugMsg(msg);
		memset(gCommRcvBuffer, 0, COM_BUF_MAX);		// Very Important
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
	}

//	ProcessWindowMessage();

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
	BYTE sbuf[200];
	CString sText = _T("") ;
	CString sBuffer = _T("") ;
	WORD temp16;

	::ZeroMemory(gCommRcvBuffer, sizeof(gCommRcvBuffer));

	switch(flag)
	{
	case 1 :	// pwm1 frequency write
		m_editPwm1Freq.GetWindowTextA(sText);
		temp16 = _ttoi(sText);
		sBuffer.Format(_T("@pfw1%04X*"), temp16);
		break;
	case 2 :	// pwm2 frequency write
		m_editPwm2Freq.GetWindowTextA(sText);
		temp16 = _ttoi(sText);
		sBuffer.Format(_T("@pfw2%04X*"), temp16);
		break;
	case 3 :	// pwm3 frequency write
		m_editPwm3Freq.GetWindowTextA(sText);
		temp16 = _ttoi(sText);
		sBuffer.Format(_T("@pfw3%04X*"), temp16);
		break;
	case 4 :	// pwm4 frequency write
		m_editPwm4Freq.GetWindowTextA(sText);
		temp16 = _ttoi(sText);
		sBuffer.Format(_T("@pfw4%04X*"), temp16);
		break;
	case 5 :	// pwm1 duty write
		m_editPwm1Duty.GetWindowTextA(sText);
		temp16 = _ttoi(sText);
		sBuffer.Format(_T("@pdw1%02X*"), temp16);
		break;
	case 6 :	// pwm2 duty write
		m_editPwm2Duty.GetWindowTextA(sText);
		temp16 = _ttoi(sText);
		sBuffer.Format(_T("@pdw2%02X*"), temp16);
		break;
	case 7 :	// pwm3 duty write
		m_editPwm3Duty.GetWindowTextA(sText);
		temp16 = _ttoi(sText);
		sBuffer.Format(_T("@pdw3%02X*"), temp16);
		break;
	case 8 :	// pwm4 duty write
		m_editPwm4Duty.GetWindowTextA(sText);
		temp16 = _ttoi(sText);
		sBuffer.Format(_T("@pdw4%02X*"), temp16);
		break;

	case 11 :	// pwm1 frequency read
		sBuffer.Format(_T("@pfr1*"));
		break;
	case 12 :	// pwm2 frequency read
		sBuffer.Format(_T("@pfr2*"));
		break;
	case 13 :	// pwm3 frequency read
		sBuffer.Format(_T("@pfr3*"));
		break;
	case 14 :	// pwm4 frequency read
		sBuffer.Format(_T("@pfr4*"));
		break;

	case 15 :	// pwm1 duty read
		sBuffer.Format(_T("@pdr1*"));
		break;
	case 16 :	// pwm2 duty read
		sBuffer.Format(_T("@pdr2*"));
		break;
	case 17 :	// pwm3 duty read
		sBuffer.Format(_T("@pdr3*"));
		break;
	case 18 :	// pwm4 duty read
		sBuffer.Format(_T("@pdr4*"));
		break;
	default :
		break;
	}

	for(int i=0; i<sBuffer.GetLength(); i++)
		sbuf[i] = (BYTE)sBuffer.GetAt(i);

	m_comm.WriteComm(sbuf, sBuffer.GetLength());

//	UpdateDebugMsg(sBuffer);
//	UpdateDebugMsg(_T("\r\n"));
}


void CWinIDTView::ProcessWindowMessage(void)
{
	MSG msg;

	while(::PeekMessage(&msg, NULL, NULL, NULL, PM_REMOVE))
	{
		::SendMessage(msg.hwnd, msg.message, msg.wParam, msg.lParam);
	}
}

void CWinIDTView::OnBnClickedBtPwm1Freqw()
{
	SendCommand(1);
}


void CWinIDTView::OnBnClickedBtPwm2Freqw()
{
	SendCommand(2);
}


void CWinIDTView::OnBnClickedBtPwm3Freqw()
{
	SendCommand(3);
}


void CWinIDTView::OnBnClickedBtPwm4Freqw()
{
	SendCommand(4);
}


void CWinIDTView::OnBnClickedBtPwm1Dutyw()
{
	SendCommand(5);
}


void CWinIDTView::OnBnClickedBtPwm2Dutyw()
{
	SendCommand(6);
}


void CWinIDTView::OnBnClickedBtPwm3Dutyw()
{
	SendCommand(7);
}


void CWinIDTView::OnBnClickedBtPwm4Dutyw()
{
	SendCommand(8);
}


void CWinIDTView::OnBnClickedBtPwm1Freqr()
{
	SendCommand(11);
}


void CWinIDTView::OnBnClickedBtPwm2Freqr()
{
	SendCommand(12);
}


void CWinIDTView::OnBnClickedBtPwm3Freqr()
{
	SendCommand(13);
}


void CWinIDTView::OnBnClickedBtPwm4Freqr()
{
	SendCommand(14);
}


void CWinIDTView::OnBnClickedBtPwm1Dutyr()
{
	SendCommand(15);
}


void CWinIDTView::OnBnClickedBtPwm2Dutyr()
{
	SendCommand(16);
}


void CWinIDTView::OnBnClickedBtPwm3Dutyr()
{
	SendCommand(17);
}


void CWinIDTView::OnBnClickedBtPwm4Dutyr()
{
	SendCommand(18);
}
