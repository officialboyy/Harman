// ConnectSocket.cpp : implementation file
//

#include "stdafx.h"
#include <winsock2.h>
#include "ConnectSocket.h"
#include "m_datatype.h"
#include "MainFrm.h"
#include "WinIDTDoc.h"
#include "WinIDTView.h"

//#include "ChatClientDlg.h"

// CConnectSocket

int	gTcpShowDataFlag = 0;
int gTcpTotalRcvData = 0;

BYTE	gTcpGetBuf[TCP_BUF_SIZE];

CConnectSocket::CConnectSocket()
{
}

CConnectSocket::~CConnectSocket()
{
}


// CConnectSocket member functions
/*
void CConnectSocket::OnClose(int nErrorCode)
{
	ShutDown();
	Close();

	CSocket::OnClose(nErrorCode);

	AfxMessageBox(_T("ERROR: Disconnected from server!"));
//	::PostQuitMessage(0);
}
*/

int tcpTotalRxSize = 0;

void CConnectSocket::OnReceive(int nErrorCode)
{
	CMainFrame *pFrame = (CMainFrame *)AfxGetMainWnd();
	CWinIDTView *pView = (CWinIDTView *)pFrame->GetActiveView();
	CString sText = _T(""), sText2 = _T("");
	int rcv_size, i, j;

	rcv_size = Receive(gTcpGetBuf+gTcpTotalRcvData, 4096);
	if(rcv_size > 0)
	{
		tcpTotalRxSize += rcv_size; 
		sText.Format(_T(" PC Received size : %d, Total : %d \r\n"), rcv_size, tcpTotalRxSize);
		pView->UpdateDebugMsg(sText);
		gTcpTotalRcvData += rcv_size;

		if((tcpTotalRxSize==1200) && (gTcpShowDataFlag==1))
		{
			for(i=0; i<1200/48; i++)
			{
				sText.Format(_T("\r\nP %3d  "), i);
				for(j=0; j<48; j++)
				{
					sText2.Format(_T("%c"), gTcpGetBuf[i*48+j]);
					sText += sText2;
				}
				pView->UpdateDebugMsg(sText);
			}
		}

	}

	CSocket::OnReceive(nErrorCode);
}

BOOL CConnectSocket::OnMessagePending()
{
	MSG msg;
	if(::PeekMessage(&msg, NULL, WM_TIMER, WM_TIMER, PM_REMOVE))	// PM_NOREMOVE 로 하면 절대 안됨!!
	{
		if ( msg.wParam == (UINT) m_nTimerID)
		{
			// Remove the message and call CancelBlockingCall.
			::PeekMessage(&msg, NULL, WM_TIMER, WM_TIMER, PM_REMOVE);
			CancelBlockingCall();
			return FALSE;  // No need for idle time processing.
		}
	}

	return CSocket::OnMessagePending();
}

BOOL CConnectSocket::SetTimeOut(UINT uTimeOut)
{
	m_nTimerID = SetTimer(NULL,0,uTimeOut,NULL);

	return m_nTimerID;
}

BOOL CConnectSocket::KillTimeOut()
{
	return KillTimer(NULL, m_nTimerID);
}
