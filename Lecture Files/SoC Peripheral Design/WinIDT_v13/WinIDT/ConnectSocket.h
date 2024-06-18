#pragma once

// CConnectSocket command target

extern int	gTcpGetInfo;
extern int	gTcpGetInfoAllUpdate;
extern BYTE	gTcpSetInfo;

extern BYTE	gTcpGetBuf[2048];


class CConnectSocket : public CSocket
{
private:
	int m_nTimerID;
public:
	BOOL SetTimeOut(UINT uTimeOut);
	BOOL KillTimeOut();
	CConnectSocket();
	virtual ~CConnectSocket();
//	virtual void OnClose(int nErrorCode);
	virtual void OnReceive(int nErrorCode);
	virtual BOOL OnMessagePending();
};


