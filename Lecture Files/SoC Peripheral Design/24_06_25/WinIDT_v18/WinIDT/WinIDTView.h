
// WinIDTView.h : CWinIDTView Ŭ������ �������̽�
//

#pragma once
#pragma comment(lib,"Windowscodecs.lib")

#include "resource.h"
#include "CommThread.h"
#include "afxwin.h"
#include "afxcmn.h"
#include "m_datatype.h"
#include "ConnectSocket.h"

class CWinIDTView : public CFormView
{
protected: // serialization������ ��������ϴ�.
	CWinIDTView();
	DECLARE_DYNCREATE(CWinIDTView)

public:
	enum{ IDD = IDD_WINIDT_FORM };

// Ư���Դϴ�.
public:
	CWinIDTDoc* GetDocument() const;

// �۾��Դϴ�.
public:

// �������Դϴ�.
public:
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV �����Դϴ�.
	virtual void OnInitialUpdate(); // ���� �� ó�� ȣ��Ǿ����ϴ�.

// �����Դϴ�.
public:
	virtual ~CWinIDTView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// ������ �޽��� �� �Լ�
protected:
	DECLARE_MESSAGE_MAP()
public:
	CComboBox m_comboComPort;
	CComboBox m_comboBaudRate;
	CBitmap m_bmpPlay;
	CBitmap m_bmpStop;
	CCommThread  m_comm;
	int m_nComPort;
	int m_nComState;

	afx_msg LONG OnCommRead(UINT, LONG);		// Serial Message
	afx_msg void OnBnClickedButtonSerialOpen();
	afx_msg void OnBnClickedButtonSerialClose();
	void UpdateDebugMsg(CString msg);
	afx_msg void OnBnClickedButtonClear();
	CButton m_btSerialStatus;
	afx_msg HBRUSH OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor);
	afx_msg void OnDrawItem(int nIDCtl, LPDRAWITEMSTRUCT lpDrawItemStruct);
	BYTE Hexa2Int(BYTE ch);
	virtual BOOL PreTranslateMessage(MSG* pMsg);
	CString m_strCommRxBuffer;
	void Wait(DWORD dwMilliSecond);
	int m_nExitFlag;
	CString m_strMsg;
	void SendCommand(int flag);
	CEdit m_editMessage;
	CString m_strMessage;
	void FwOpenSend(void);

	CConnectSocket* m_Socket;
	int		m_nSocketConnectFlag[MAX_NET_DEVICE];

	uNET_INFO	m_NetInfo;

	CIPAddressCtrl m_ctrlDeviceIP;
	CIPAddressCtrl m_ctrlDeviceSubNet;
	CIPAddressCtrl m_ctrlDeviceGateway;
	afx_msg void OnBnClickedButtonNetLoadProm();
	afx_msg void OnBnClickedButtonNetSaveProm();
	CEdit m_editMacAddr;
	afx_msg void OnBnClickedButtonMacWrite();
	afx_msg void OnBnClickedButtonMacRead();
	CStatic m_editTcpipState;
	afx_msg void OnBnClickedButtonTcpipConnect();
	afx_msg void OnBnClickedButtonTcpipClose();
	void NetworkCreateSocket(void);
	int m_nSocketFlag;
	void NetworkConnect(int nIndex);
	void NetworkCloseSocket(void);
	afx_msg void OnBnClickedButtonInfoRead();
	int m_nCommTcpState;
	void SendTcpip(int flag);
	afx_msg void OnTimer(UINT_PTR nIDEvent);
	CProgressCtrl m_ctrlProgress;
	afx_msg void OnBnClickedButtonFwDown();
	CButton m_chkPCData;
	CButton m_chkBDData;
	afx_msg void OnBnClickedCheckShowPcdata();
	afx_msg void OnBnClickedCheckShowBddata();
};

#ifndef _DEBUG  // WinIDTView.cpp�� ����� ����
inline CWinIDTDoc* CWinIDTView::GetDocument() const
   { return reinterpret_cast<CWinIDTDoc*>(m_pDocument); }
#endif

