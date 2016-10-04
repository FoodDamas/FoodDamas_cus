package org.food.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;

import org.food.domain.CartVO;
import org.food.domain.OrderListVO;
import org.food.domain.OrderVO;
import org.food.service.CartService;
import org.food.service.MenuService;
import org.food.service.PageMaker;
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
@RequestMapping("/")
public class OrderListController {
	
	@Inject
	//OrderListService service;
	
	private static final Logger logger = LoggerFactory.getLogger(OrderListController.class);

	
	@ResponseBody
	@RequestMapping(value = "/orderlist/{c_id}", method = RequestMethod.GET)
	public Map<String, Object> orderList(@PathVariable String u_id,@PathVariable String c_id) throws Exception {
		List<OrderListVO> list = new ArrayList<>();
		Map<String, Object> result = new HashMap<>();
		
//		int totalCount = service.pageCount(c_id);
		OrderListVO vo = new OrderListVO();

		logger.info("Single JSON ++++++++++++++++++++++++++++++++++++++++++++++++++++++");
//		page = (page == null ? 1 : page);
//		int curPage = page - 1;
		
//		System.out.println(totalCount);

//		result.put("totalCount", service.pageCount(c_id));
//		result.put("pageMaker", new PageMaker(page, totalCount));
		
//		vo.setU_id(u_id);
//		vo.setRno(curPage * 10);
	//	result.put("list", service.readlist(vo));

		return result;
	}
	
	@RequestMapping(value = "/orderlist", method = RequestMethod.GET)
	public void menudetail(Integer mno, Model model)throws Exception{
		
	}
	



}