package Order.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import Music.model.Cart;

@Component
public class OrderDao {
	
private String namespace = "Order.model.OrderDto";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	public void insertorder(List<Cart> lists) {
		
		sqlSessionTemplate.insert(namespace+".insertorder",lists);
		
	}

}
