package mapper;

import java.util.List;

import vo.Orders;


public  interface  OrdersMapper {
	List<Orders> selectAllOrders(Orders orders);


}
