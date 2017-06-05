package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.OrdersMapper;
import vo.Orders;

@Service
public class OrdersService {
	@Autowired
	private OrdersMapper ordersMapper;

	public List<Orders> selectAllOrders(Orders orders) {
		return ordersMapper.selectAllOrders(orders);
	}
}
