// ConnectSocket.cpp : implementation file
//

#include "stdafx.h"
#include <winsock2.h>
#include "ConnectSocket.h"
#include "m_datatype.h"

//#include "ChatClientDlg.h"

// CConnectSocket

int	gTcpGetInfo = TCP_GET_STATE;
int	gTcpGetInfoAllUpdate = false;
BYTE	gTcpSetInfo = 0;

BYTE	gTcpGetBuf[2048];

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

void CConnectSocket::OnReceive(int nErrorCode)
{
	TCHAR szBuffer[2048];
	::ZeroMemory(szBuffer, sizeof(szBuffer));

	if(Receive(szBuffer, sizeof(szBuffer)) > 0)
	{
		switch(gTcpGetInfo)
		{
		case TCP_GET_INFO_ALL :
			for(int i=0; i<120; i++)	  gTcpGetBuf[i] = szBuffer[i];
			gTcpGetInfoAllUpdate = true;
			break;
		default:
			break;
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
