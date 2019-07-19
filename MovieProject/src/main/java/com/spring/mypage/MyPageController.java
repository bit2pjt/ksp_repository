package com.spring.mypage;
/**
 * @Class Name : MyPageController.java
 * @Description : MyPage Controller
 * @Modification Information
 * @
 * @  수정일     	  수정자                 수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2019.07.0?     황진석      최초생성
 * @ 2019.07.17     한유진      순서변경, 각 메서드 별 주석추가(기능설명)
 * @ 2019.07.17     한유진      클래스명 변경(LoginController -> MyPageController), 기능구현
 * @author bit 2조
 * @since 2019. 07.01
 * @version 1.0
 * @see
 *
 *  Copyright (C) by Bit All right reserved.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPageController {
	
	@Autowired
	private MyPageService myPageService;
	
	
	//마이페이지 첫화면
	@RequestMapping(value="/mypage.do", method=RequestMethod.GET)
	public String mypage(Model model, HttpSession session) {
		
		
			session.setAttribute("id", 1);
				
			
			MemberVO member = (MemberVO)myPageService.getMember(1);
			System.out.println(member);
			model.addAttribute("member",member);
			return "mypage/mypage";
	}
	
	//마이페이지 - 비밀번호 재확인
	@RequestMapping(value="/pw_confirm.do", method=RequestMethod.GET)
	public String pwConfirm(int id, Model model) {
		MemberVO member = myPageService.getMember(id);
		
		model.addAttribute("member",member);
		
		return "mypage/pw_confirm";
	}
	
	//마이페이지 - 비밀번호 재확인 - 회원정보 수정
	@RequestMapping(value="/member_info.do")
	public String memberInfo(MemberVO member, Model model, int id) {
		MemberVO member1 = myPageService.getMember(id);
		System.out.println("member1="+member1);
		// 클라이언트에서 입력한 비밀번호
		String input_password = member.getM_password();
		System.out.println("input_pwd="+input_password);
		// id로 검색한 member의 비밀번호
		String member_password = member1.getM_password();
		System.out.println("member_pwd="+member_password);
		
		if(input_password.equals(member_password)) {		
			model.addAttribute("member",member);
			model.addAttribute("member1",member1);
			System.out.println("넘긴다"+member1);
			return "mypage/member_info";
		}
		else {
			return "mypage/mypage";
		}
	}
	
	
	//마이페이지 - 회원정보수정
	@RequestMapping(value="/member_update.do")
	public String updateMember(HttpSession session, HttpServletResponse response, MemberVO memberVO) {
		int id = (int)session.getAttribute("id");
		System.out.println("id="+id);
		System.out.println("member="+memberVO);
		memberVO.setId(id);
		
		
		myPageService.updateMember(memberVO);
		response.setContentType("text/html; charset=UTF-8");
		try {
			PrintWriter out = response.getWriter();
			out.println("<script>"); 
			out.println("alert('회원정보수정완료');");
			out.println("</script>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:../movie/mypage.do";
	}
	
	//마이페이지 - 회원탈퇴
	@RequestMapping(value="/member_out.do", method=RequestMethod.GET)
	public String memberOut() {
		return "mypage/member_out";
	}
	
	//마이페이지 - 1:1 문의내역 리스트
	@RequestMapping(value="/one_list.do", method=RequestMethod.GET)
	public String oneList(HttpServletRequest request, HttpSession session) {
	
		//왼쪽 메뉴 상단의 사용자 정보가져오기 위해 session에 강제로 email정보 저장
		session.setAttribute("m_email", "bit0hyj@gmail.com");
		
		//사용자 정보
		String m_email = (String)session.getAttribute("m_email");
		String m_name = myPageService.getMemberName(m_email);	//System.out.println("=============MyPageController.java=====================  m_name : " + m_name);
		request.setAttribute("m_name", m_name);
		
		//1:1 문의내역
		List<OneVO> qnaList = null;
		int id = myPageService.getMemberId(m_email);	//System.out.println("=============MyPageController.java=====================  id : " + id);
		qnaList = myPageService.getQnaList(id);
		request.setAttribute("qnaList", qnaList);
		return "mypage/one_list";
	}
	
	//마이페이지 - 1:1 문의내역 - 1:1 문의내역 상세보기
	@RequestMapping(value="/one_get.do", method=RequestMethod.GET)
	public String Loggin() {
		return "mypage/one_get";
	}
	
	//마이페이지 - 1:1 문의내역 리스트 - 1:1문의내역 등록
	@RequestMapping(value="/one_register.do", method=RequestMethod.GET)
	public String oneRegister() {
		return "mypage/one_register";
	}
	
	//마이페이지 - 1:1 문의내역 수정
	@RequestMapping(value="/one_update.do", method=RequestMethod.GET)
	public String oneUpdate() {
		return "mypage/one_update";
	}
	
	//마이페이지 - FAQ
	@RequestMapping(value="/faq.do", method=RequestMethod.GET)
	public String faqList() {
		return "mypage/faq";
	}
	
	

	
}
