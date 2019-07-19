package com.spring.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
* @Class Name : MyPageServiceImpl.java
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

@Service("myPageService")
public class MyPageServiceImpl implements MyPageService{

	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public String getMemberName(String m_email) {
		MyPageDAO mypageDAO = sqlSession.getMapper(MyPageDAO.class);
		String m_name = mypageDAO.getMemberName(m_email);
		return m_name;
	}
	
	@Override
	public int getMemberId(String m_email) {
		MyPageDAO mypageDAO = sqlSession.getMapper(MyPageDAO.class);
		int id = mypageDAO.getMemberId(m_email);
		return id;
	}
	
	@Override
	public List<OneVO> getQnaList(int id) {
		MyPageDAO mypageDAO = sqlSession.getMapper(MyPageDAO.class);
		List<OneVO> qnaList = mypageDAO.getQnaList(id);
		
		return qnaList;
	}
	
	@Override
	public MemberVO getMember(int id){
		MyPageDAO mypageDAO = sqlSession.getMapper(MyPageDAO.class);
		MemberVO member = mypageDAO.getMember(id);
		
		return member;
	}

	@Override
	public void updateMember(MemberVO memberVO) {
		MyPageDAO mypageDAO = sqlSession.getMapper(MyPageDAO.class);
		mypageDAO.updateMember(memberVO);
	}
	
}
