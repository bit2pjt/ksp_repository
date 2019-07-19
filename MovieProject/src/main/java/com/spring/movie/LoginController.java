package com.spring.movie;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@RequestMapping(value="/member_login.do", method=RequestMethod.GET)
	public String Loggin() {
		return "mypage/one_get";
	}
	
	
	

	
}
