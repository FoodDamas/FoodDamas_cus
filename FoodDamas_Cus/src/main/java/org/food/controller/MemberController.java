package org.food.controller;

import java.awt.List;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.food.domain.MemberVO;
import org.food.dto.LoginDTO;
import org.food.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;


@Controller
@RequestMapping("/member")
public class MemberController {
	//ALTER TABLE tbl_customer convert to charset utf8; �ѱ� �ȵ���
	@Inject
	MemberService service;
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) {

	}

	@RequestMapping(value="/loginPost", method=RequestMethod.POST)
	public void loginPOST(LoginDTO dto, HttpSession session, Model model, RedirectAttributes rttr) throws Exception
	{
		MemberVO vo =service.login(dto);
		logger.info(""+vo);
		if(vo==null){
			//  rttr.addFlashAttribute("result", "fail");
			return;		      
		}
		model.addAttribute("memberVO", vo);

		if(dto.isUseCookie()){
			int amount=60*60*24*7;

			Date sessinoLimit=new Date(System.currentTimeMillis()+(1000*amount));

			service.keepLogin(vo.getC_id(), session.getId(), sessinoLimit);
		}
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, 
			HttpServletResponse response, HttpSession session) throws Exception {

		Object obj = session.getAttribute("login");

		if (obj != null) {
			MemberVO vo = (MemberVO) obj;

			session.removeAttribute("login");
			session.invalidate();

			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

			if (loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepLogin(vo.getC_id(), session.getId(), new Date());
			}
		}
		return "login";
	}


	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET( Model model) {


	}

	@ResponseBody
	@CrossOrigin
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST( MemberVO vo ) {


		logger.info("register POST");

		logger.info(""+vo);
		/*	System.out.println(vo);
		service.insertMember(vo);
		 */	
		return "success";

	}


	@ResponseBody
	@RequestMapping(value = "/checkId", method = RequestMethod.POST)
	public String checkIdPOST(@RequestBody String c_id) {//requestBody�� vo���ƴҋ�
		logger.info(""+service.checkId(c_id));
		return service.checkId(c_id);

	}



	@CrossOrigin
	@RequestMapping(value = "/registerKakao", method = RequestMethod.GET)
	public void kakaoGET(MemberVO vo, Model model ) {

	}

	//회원가입할때 있는아이디인지 체크하는부분
	@CrossOrigin
	@ResponseBody
	@RequestMapping(value = "/registerKakao", method = RequestMethod.POST)
	public String kakaoPOST(@RequestBody String k_id) {

		return service.checkKakao(k_id);
	}


	//회원가입카카오톡
	@ResponseBody
	@CrossOrigin
	@RequestMapping(value = "/registerKakaomember", method = RequestMethod.POST)
	public String registerKakaomemberPOST(MemberVO vo) {
		logger.info(""+vo);
		service.insertKakaoMember(vo);

		return "success";
	}


	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public void test(MemberVO vo, Model model ) {
		logger.info("test");

	}
}
