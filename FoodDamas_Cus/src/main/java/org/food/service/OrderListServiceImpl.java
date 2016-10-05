package org.food.service;

import java.util.List;

import javax.inject.Inject;

import org.food.domain.OrderListVO;
import org.food.persistence.OrderListDAO;
import org.springframework.stereotype.Service;

@Service
public class OrderListServiceImpl implements OrderListService {

	
	@Inject
	private OrderListDAO dao;
	
	@Override
	public List<String> readlist(OrderListVO vo) {
		return dao.readlist(vo);
	}

	@Override
	public Integer pageCount(String c_id) {
		return dao.pageCount(c_id);

	}

}
