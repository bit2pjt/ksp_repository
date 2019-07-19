package com.spring.mypage;

import java.util.List;

/**
* @Class Name : MyPageService.java
* @Description : 
* @Modification Information
* @
* @  ������     	  ������                 ��������
* @ ---------   ---------   -------------------------------
* @ 2019.07.17     ������      ���ʻ���
* @author bit 2��
* @since 2019. 07.01
* @version 1.0
* @see
*
*  Copyright (C) by Bit All right reserved.
*/

public interface MyPageService {
	
	//��������� ��������, �����ϱ�, Ż���û�ϱ�
	public String getMemberName(String m_email);	//��� �̸� ��������
	public int getMemberId(String m_email);		//��� ���̵� ��������
	
	
	//1:1 ���ǳ��� ����Ʈ ��������
	public List<OneVO> getQnaList(int id);
	//1:1 ���� ����ϱ�, ��������, �����ϱ�, �����ϱ�
	public MemberVO getMember(int id);
	void updateMember(MemberVO memberVO);
}
