
// WinIDTView.h : CWinIDTView 클래스의 인터페이스
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
protected: // serialization에서만 만들어집니다.
	CWinIDTView();
	DECLARE_DYNCREATE(CWinIDTView)

public:
	enum{ IDD = IDD_WINIDT_FORM };

// 특성입니다.
public:
	CWinIDTDoc* GetDocument() const;

// 작업입니다.
public:

// 재정의입니다.
public:
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV 지원입니다.
	virtual void OnInitialUpdate(); // 생성 후 처음 호출되었습니다.

// 구현입니다.
public:
	virtual ~CWinIDTView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// 생성된 메시지 맵 함수
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
	int m_nComBps;

	void ProcessWindowMessage(void);
	CEdit m_editPwm1Freq;
	CEdit m_editPwm2Freq;
	CEdit m_editPwm3Freq;
	CEdit m_editPwm4Freq;
	CEdit m_editPwm1Duty;
	CEdit m_editPwm2Duty;
	CEdit m_editPwm3Duty;
	CEdit m_editPwm4Duty;
	afx_msg void OnBnClickedBtPwm1Freqw();
	afx_msg void OnBnClickedBtPwm2Freqw();
	afx_msg void OnBnClickedBtPwm3Freqw();
	afx_msg void OnBnClickedBtPwm4Freqw();
	afx_msg void OnBnClickedBtPwm1Dutyw();
	afx_msg void OnBnClickedBtPwm2Dutyw();
	afx_msg void OnBnClickedBtPwm3Dutyw();
	afx_msg void OnBnClickedBtPwm4Dutyw();
	afx_msg void OnBnClickedBtPwm1Freqr();
	afx_msg void OnBnClickedBtPwm2Freqr();
	afx_msg void OnBnClickedBtPwm3Freqr();
	afx_msg void OnBnClickedBtPwm4Freqr();
	afx_msg void OnBnClickedBtPwm1Dutyr();
	afx_msg void OnBnClickedBtPwm2Dutyr();
	afx_msg void OnBnClickedBtPwm3Dutyr();
	afx_msg void OnBnClickedBtPwm4Dutyr();
};

#ifndef _DEBUG  // WinIDTView.cpp의 디버그 버전
inline CWinIDTDoc* CWinIDTView::GetDocument() const
   { return reinterpret_cast<CWinIDTDoc*>(m_pDocument); }
#endif

