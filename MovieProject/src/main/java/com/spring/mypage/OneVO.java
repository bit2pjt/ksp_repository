package com.spring.mypage;

/**
* @Class Name : OneVO.java
* @Description : 1:1���� ������ - 1:1���� ���̺��� �÷���� �����ϰ� �ۼ�
* @Modification Information
* @
* @  ������     	  ������                 ��������
* @ ---------   ---------   -------------------------------
* @ 2019.07.18     ������      ���ʻ���
* @author bit 2��
* @since 2019. 07.01
* @version 1.0
* @see
*
*  Copyright (C) by Bit All right reserved.
*/

import java.sql.Date;

import lombok.Data;
import lombok.ToString;

@Data
public class OneVO {

	private int qna_no;		//1:1 ���� �۹�ȣ
	private int id;			//1:1 ���� �ۼ��� ���ID
	private String qna_category;	//1:1 ���� ī�װ�
	private String qna_title;	//1:1 ���� Ÿ��Ʋ
	private String qna_content;	//1:1 ���� ���� 
	private Date qna_date;	//1:1 ���� �ۼ���¥
	private Date qna_update_date;	//1:1 ���� ������¥
	private String qna_answer;	//1:1 ���� �亯����
	
	public String toString() {
		return "[" + qna_no + ", " + id + ", " + qna_category + ", " + qna_title + ", " + qna_content + ", " + qna_date + ", " + qna_update_date + ", " + qna_answer+ "]\n"; 
	}
}
