package product.model;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import mall.cart.ShoppingInfo;
import order.model.Order;

@Component("myComponentDao")
public class CompositDao {
	final String namespace="product.model.Composite";
	
	@Autowired
	SqlSessionTemplate sqlsessiontemplate;

	public List<Order> ordermall(String id) {
		List<Order> lists=new ArrayList<Order>();
		 lists = sqlsessiontemplate.selectList(namespace+".OrderMall", id);
		 return lists;
	}

	public List<ShoppingInfo> showDetail(int oid) {
		List<ShoppingInfo> list = new ArrayList<ShoppingInfo>();
		list = sqlsessiontemplate.selectList(namespace+".showDetail",oid);
		return list;
	}
	
	
}
