package Login.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;


@Component("myCustomerDao")
public class CustomerDao {
	
	private final String namespace="Login.model.Customer";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	


	public void insertData(Customer customer) {
		

		sqlSessionTemplate.insert(namespace + ".InsertData", customer);
	}



	public Customer getData(String customer_id) {
		Customer customer = new Customer();
		customer = sqlSessionTemplate.selectOne(namespace + ".GetData",customer_id);
		return customer;
	}


	public List<Customer> getDataList(Paging paging,Map<String,String> map) {	
		
		List<Customer> lists = new ArrayList<Customer>();
		RowBounds rowBounds = new RowBounds(paging.getOffset(),paging.getLimit()); // 10,5
		lists = sqlSessionTemplate.selectList(namespace+".GetDataList",map,rowBounds);
		return lists;	
	}

	public Customer getOneData(String customer_name) {	//findId
		Customer customer = new Customer();
		customer = sqlSessionTemplate.selectOne(namespace + ".getOneData",customer_name);
		return customer; 
	}



	public Customer getOneId(String customer_id) {		//findPwd
		Customer customer = new Customer();
		customer = sqlSessionTemplate.selectOne(namespace + ".getOneId",customer_id);
		return customer; 
	}


	public int getTotalCount(Map<String,String> map){
		int cnt = sqlSessionTemplate.selectOne(namespace+".GetTotalCount",map);
		return cnt;
	}


	public int deleteData(int customerno) {
		
		int cnt = sqlSessionTemplate.delete(namespace+".deleteData", customerno);
		return cnt;
		
	}


	


	



	



	


}
