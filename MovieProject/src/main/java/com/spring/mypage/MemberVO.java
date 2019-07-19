package com.spring.mypage;

/**
* @Class Name : MemberVO.java
* @Description : ��� ������ - ������̺��� �÷���� �����ϰ� �ۼ�
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

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {

	private int id;				//���ID(ȸ�� �ĺ� ��ȣ)
	private String m_nickname;	//�г���
	private String m_image;		//�����ʻ���
	private String m_email;		//�̸���
	private String m_eagree;	//�̸��� ���ŵ���
	private String m_sagree;	//sms ���ŵ���
	private String m_name;		//�̸�
	private String m_phone;		//��ȭ��ȣ
	private String m_cert;		//�̸��� ��������
	private String m_password;	//�н�����
	private Date m_regdate;		//ȸ��������
	private Date m_update_date;	//ȸ������ ������
	private String m_deleteyn;	//Ż�𿩺�
	private int m_following;	//�ȷ��׼�
	private int m_follower;		//�ȷο���
	private String m_level;		//���� ���
	private String m_favorite;	//��ȣ�帣
	private String m_blacklist;	//������Ʈ ����
	
}
