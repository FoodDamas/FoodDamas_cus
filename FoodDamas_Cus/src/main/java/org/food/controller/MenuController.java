package org.food.controller;

import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;

import org.food.domain.CartVO;
import org.food.service.CartService;
import org.food.service.MenuService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@Inject
	MenuService service;
	@Inject
	CartService Cservice;
	
	private static final Logger logger = LoggerFactory.getLogger(MenuController.class);

	@RequestMapping(value = "/menulist", method = RequestMethod.GET)
	public void menu()throws Exception{
		logger.info("그냥 쀼려줘봤댜");
	}
	
	@ResponseBody
	@RequestMapping(value = "/all/{u_id}", method = RequestMethod.GET)
	public Map<String, Object> menuList(@PathVariable("u_id")String u_id) throws Exception {
		logger.info("menu로 들어오나용??");
		logger.info(""+service.select("food1"));
		logger.info("----------------------------------------");
		Map<String, Object> result = new HashMap<>();
		result.put("list", service.select(u_id));
		
		return result;
	}
	
	@RequestMapping(value = "/menudetail", method = RequestMethod.GET)
	public void menudetail(Integer mno, Model model)throws Exception{
		logger.info("그냥 쀼려줘봤댜");
		model.addAttribute("view", service.view(mno));
		
	}
	



}
