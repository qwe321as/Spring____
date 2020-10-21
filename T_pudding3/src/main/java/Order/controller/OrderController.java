package Order.controller;

import java.util.ArrayList;
import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Music.model.Cart;
import Music.model.CartDao;
import Order.model.OrderDao;

@Controller
public class OrderController {
	
	final String command = "/order.od";
	final String insertcommand = "/insertorder.od";
	final String getPage = "Ordermain";
	final String gotoPage = "OrderList";
	
	@Autowired
	CartDao cartdao;
	
	@Autowired
	OrderDao orderdao;
	
	
	@RequestMapping(value=command, method = RequestMethod.GET)
	public ModelAndView doAction(@RequestParam("userid") String userid
						) {
	List<Cart> lists =	new ArrayList<Cart>();
	
	lists = cartdao.Allselectdata(userid);
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("lists",lists);
		mav.setViewName(getPage);
		
			return mav;																				
	}
	
	
	@RequestMapping(insertcommand)
	public ModelAndView doAction(HttpSession session,@RequestParam("orderuser") String orderuser
						) {
		
		List<Cart> lists =	new ArrayList<Cart>();		
		lists = cartdao.Allselectdata(orderuser);
		
		System.out.println("***lists:"+lists.size());
		
		ModelAndView mav = new ModelAndView();
		orderdao.insertorder(lists);
		
		mav.setViewName(gotoPage);
		
			return mav;																				
	}

}
