package org.food.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;

import org.food.domain.PositionVO;
import org.food.service.TruckService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/")
public class HomeController {
	@Inject
	TruckService service;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public void menu(Model model) {
		logger.info("home connected....");
 
	}

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public void cart(Model model) {
		logger.info("home connected....");
 
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("home connected....");
		return "home";
	}

	@RequestMapping(value = "/review", method = RequestMethod.GET)
	public void review(Model model) {
		logger.info("home connected....");
 
	}

	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public void qna(Model model) {
		logger.info("home connected....");
 
	}
	@RequestMapping(value = "/charge", method = RequestMethod.GET)
	public  void charge(Model model) {
		logger.info("home connected....");
 
	}
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public void info(Model model) {
		logger.info("home connected....");
		
	}
	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public void order(Model model) {
		logger.info("home connected....");
		//return "order";
		
	}
	
	
	
	@CrossOrigin
	@ResponseBody
	@RequestMapping(value = "/home/list/{page}", method = RequestMethod.GET)
	public Map<String, Object> listGET(@PathVariable Integer page, double lat, double lng) throws Exception {
		System.out.println("page: " + page);
		System.out.println("lat: " + lat);
		System.out.println("lng: " + lng);
		Map<String, Object> result = new HashMap<>();
		PositionVO vo = new PositionVO();
		vo.setLat(37.493488);
		vo.setLng(127.028148);
		vo.setPage(page);
		System.out.println(service.distance(vo));
		System.out.println(service.distanceLength(vo));
		int distanceLength = service.distanceLength(vo);
		if(page>distanceLength){
			return null;
		}
		result.put("distance", service.distance(vo));
		return result;

	}

}
