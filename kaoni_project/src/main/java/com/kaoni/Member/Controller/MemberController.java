package com.kaoni.Member.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kaoni.Member.Service.MemberService;
import com.kaoni.Member.VO.MemberVO;
import com.kaoni.common.chabun.ChabunUtil;
import com.kaoni.common.chabun.Service.ChabunService;

@Controller
public class MemberController {
	
	Logger logger = Logger.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private ChabunService chabunService;
	
//	회원가입	
	@RequestMapping(value="memberSignUp", method=RequestMethod.GET)
	public String memberSignUp(){
		return "member/memberSignUp";
	}
	
	@RequestMapping( value="memberSignUp1", method=RequestMethod.POST)
	public String memberSignUpSuccess(@Valid MemberVO mvo, BindingResult result,HttpServletRequest request){
		System.out.println("BindingResult : "+ result);
		logger.info("프린트 실행");
		if(result.hasErrors()) {
			for(ObjectError obj : result.getAllErrors()) {
				System.out.println("메세지 :"+obj.getDefaultMessage());
				System.out.println("코드 :"+ obj.getCode());
				System.out.println("ObjectName :"+obj.getObjectName());
				logger.info("에러 실행");
				}
			return "member/memberSignUp";
		}else {
		String emnum = ChabunUtil.getMemChabun("EM", chabunService.getMemberChabun().getEmnum());
		mvo.setEmnum(emnum);
		
		memberService.memberSignUp(mvo);
		logger.info(emnum);
		logger.info("가입 실행");
		return "redirect:/";
		}
	}
	
//	회원정보 수정 전 비밀번호 체크
	@RequestMapping(value = "updateInfo_pwCheck",method = RequestMethod.GET)
	public String changeInfo_pwCheck() {
		return "member/updateInfo_pwCheck";
	}
	@RequestMapping(value = "updateInfo_pwCheck1",method = RequestMethod.POST)
	public String changeInfoPasswdCheck(MemberVO mvo,HttpServletRequest request) {
		
		HttpSession session = request.getSession(true);
		MemberVO memberVO = new MemberVO(); 
		
		memberVO.setId(request.getParameter("id"));
		memberVO.setPasswd(request.getParameter("passwd"));
		
		mvo.setId((String)session.getAttribute("member"));
		mvo.setPasswd((String)session.getAttribute("passwd"));
		
		memberService.memberLogin(memberVO);
		memberService.memberLogin(mvo);
		
		if(memberVO.getPasswd().equals(mvo.getPasswd())) {
			return "member/updateInfo";
		}else{
		return "redirect:/";
		}
	}

	//	회원정보 수정 창
	@RequestMapping(value = "updateInfo",method = RequestMethod.GET)
	public String updateInfo() {
		return "member/updateInfo";
	}
	
	@RequestMapping(value = "updateInfo2",method = RequestMethod.POST)
	public String updateInfo1(HttpServletRequest request,MemberVO mvo, HttpSession session) {
		mvo.setPosition(request.getParameter("position"));
		mvo.setPasswd(request.getParameter("passwd"));
		mvo.getId();
		
		memberService.updateInfo(mvo);
		return "redirect:/";
	}
	
//	로그인, 세션
	@RequestMapping(value="memberLogin", method=RequestMethod.GET)
	public String memberLogin(){
		return "member/memberLogin";
	}
	
	@RequestMapping(value="memberLogin1", method=RequestMethod.POST)
	public String memberLoginSuccess(HttpServletRequest request, MemberVO mvo){
		
		HttpSession session = request.getSession();	
		MemberVO memberVO = memberService.memberLogin(mvo);
		
		if(memberVO == null) {
			session.setAttribute("emnum", null);
			session.setAttribute("member", null);
			session.setAttribute("passwd", null);
			return "redirect:/";
		}else {
			session.setAttribute("emnum", memberVO.getEmnum());
			session.setAttribute("member", memberVO.getId());
			session.setAttribute("passwd", memberVO.getPasswd());
			return "redirect:/";
		}
		}	
	
	@RequestMapping(value = "logOut", method = RequestMethod.GET)
	public String logOut(HttpServletRequest request, HttpSession session) {
		session = request.getSession();
		session.invalidate();
		return "redirect:/";
	}
}
