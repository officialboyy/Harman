
// WinIDT.h : WinIDT ���� ���α׷��� ���� �� ��� ����
//
#pragma once

#ifndef __AFXWIN_H__
	#error "PCH�� ���� �� ������ �����ϱ� ���� 'stdafx.h'�� �����մϴ�."
#endif

#include "resource.h"       // �� ��ȣ�Դϴ�.


// CWinIDTApp:
// �� Ŭ������ ������ ���ؼ��� WinIDT.cpp�� �����Ͻʽÿ�.
//

class CWinIDTApp : public CWinApp
{
public:
	CWinIDTApp();


// �������Դϴ�.
public:
	virtual BOOL InitInstance();
	virtual int ExitInstance();

// �����Դϴ�.
	afx_msg void OnAppAbout();
	DECLARE_MESSAGE_MAP()
};

extern CWinIDTApp theApp;
