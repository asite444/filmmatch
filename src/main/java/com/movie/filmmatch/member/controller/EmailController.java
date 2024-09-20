package com.movie.filmmatch.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.movie.filmmatch.member.vo.MemberVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;



@Controller
@RequestMapping("/member/email/")
public class EmailController {

@Autowired
	HttpSession session;

    @Autowired
	HttpServletRequest request;	

    @RequestMapping("emailmain.do")
    public String emailMain() {

        MemberVo vo = (MemberVo) request.getSession().getAttribute("user");
		// System.out.println(vo);

			if (vo != null) {
				// 사용자 정보가 존재하면 해당 정보의 mem_idx를 주소 정보에 설정
				vo.setMem_idx(vo.getMem_idx());
			} else {
				// 세션에 사용자 정보가 없을 경우
				return "redirect:/member/login_form.do";
			}



        return "member/email/emailmain";
    }
    
}
