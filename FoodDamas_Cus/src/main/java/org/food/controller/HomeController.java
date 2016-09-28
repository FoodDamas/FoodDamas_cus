package org.food.controller;

import java.util.HashMap;
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
public class HomeController {
	@Inject
	TruckService service;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("home connected....");
		return "home";
	}

	@CrossOrigin
	@ResponseBody
	@RequestMapping(value = "/home/list/{page}", method = RequestMethod.GET)
	public Map<String, Object> listGET(@PathVariable Integer page, double lat, double lng) throws Exception {
		Map<String, Object> result = new HashMap<>();
		PositionVO vo = new PositionVO();
		vo.setLat(lat);
		vo.setLng(lng);
		vo.setPage(page);
		int distanceLength = service.distanceLength(vo);
		if (page > distanceLength) {
			return null;
		}
		result.put("distance", service.orderByDistance(vo));
		return result;

	}

	@CrossOrigin
	@ResponseBody
	@RequestMapping(value = "/home/grade/{page}", method = RequestMethod.GET)
	public Map<String, Object> gradeList(@PathVariable Integer page, double lat, double lng) throws Exception {
		System.out.println("page: " + page);

		System.out.println("lat: " + lat);
		System.out.println("lng: " + lng);		
		Map<String, Object> result = new HashMap<>();
		PositionVO vo = new PositionVO();
		
		int distanceLength = service.gradeLength(vo);
		if (page > distanceLength) {
			return null;
		}
		result.put("grade", service.orderByGrade(vo));
		return result;
	}
	
	/*
	  @CrossOrigin
	  
	  @ResponseBody
	  
	  @RequestMapping(value = "/home/review/{page}", method =
	  RequestMethod.GET) public Map<String, Object> reviewList(@PathVariable
	  Integer page, double lat, double lng) throws Exception { Map<String,
	  Object> result = new HashMap<>(); PositionVO vo = new PositionVO(); int
	  distanceLength = service.reviewLength(vo); if(page>distanceLength){
	  return null; } result.put("grade", service.orderByReview(vo)); return
	  result; }
	 */
}
