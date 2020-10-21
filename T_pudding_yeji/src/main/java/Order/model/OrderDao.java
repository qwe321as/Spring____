package Order.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import Music.model.Cart;
import Music.model.Music;

@Component
public class OrderDao {
	
private String namespace = "Order.model.OrderDto";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	public void insertorder(Cart lists) {
		 
		sqlSessionTemplate.insert(namespace+".insertorder",lists);
		
	}
	
	public void insertOne(Music music) {
		sqlSessionTemplate.insert(namespace+".insertorderOne",music);
		
	}
	
	public List<OrderDto> getDataList(){
		List<OrderDto> lists = new ArrayList<OrderDto>();
		lists = sqlSessionTemplate.selectList(namespace+".getDataList");
		
		return lists;
	}
  
	public List<OrderDto> getDataSearchList(Map<String, String> map){
		List<OrderDto> lists = new ArrayList<OrderDto>();
		lists = sqlSessionTemplate.selectList(namespace+".getDataSearchList", map);
		
		return lists;
	}
}
