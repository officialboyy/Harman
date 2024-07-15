#pragma once

// CConnectSocket command target

#define  TCP_BUF_SIZE		(4096*2)


extern BYTE	 gTcpGetBuf[TCP_BUF_SIZE];
extern int	 gTcpShowDataFlag;
extern int   gTcpTotalRcvData;

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


