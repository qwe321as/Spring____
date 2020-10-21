package Order.controller;

import java.util.ArrayList;
import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Music.model.Cart;
import Music.model.CartDao;
import Music.model.Music;
import Music.model.MusicDao;
import Order.model.OrderDao;

@Controller
public class OrderController {
	
	final String command = "/order.od";
	final String insertcommand = "/insertorder.od";
	final String insertonecommand = "/insertorderone.od";
	final String directcommand = "/directorder.od";
	final String getPage = "Ordermain";
	final String gotoPage = "OrderList";
	
	@Autowired
	CartDao cartdao;
	  
	@Autowired
	OrderDao orderdao;

	@Autowired
	MusicDao musicdao;
	
	@RequestMapping(value=command, method = RequestMethod.GET)
	public ModelAndView doAction(@RequestParam("userid") String userid
				 		) {
	List<Cart> lists =	new ArrayList<Cart>();
	ModelAndView mav = new ModelAndView();
	lists = cartdao.Allselectdata(userid);
		
	mav.addObject("lists",lists);
	mav.setViewName(getPage);
			return mav;		 																		
	}
	
	@RequestMapping(value=directcommand, method = RequestMethod.GET)
	public String doAction(@RequestParam("mno") int mno, Model model
				 		) {
	Music music = new Music();
	music = musicdao.selectOne(mno);
	
	model.addAttribute("music",music);
			return getPage;		 																		
	}
	
	
	//상품->장바구니->결제하기
	@RequestMapping(insertcommand)
	public ModelAndView doAction(HttpSession session,@RequestParam(value="orderuser", required=false) String orderuser) {
		
	

		//cart테이블에있는 user기준으로 데이터 불러와서 List에 담기
		List<Cart> lists =	new ArrayList<Cart>();		
		lists = cartdao.Allselectdata(orderuser);
		
		
		//List 데이터 for문돌려서 insert하기
		ModelAndView mav = new ModelAndView();
		for(int i=0;i<lists.size();i++) {
			orderdao.insertorder(lists.get(i));
		}     
		
		// insert시 cart테이블에 담겨있던 데이터 삭제
		cartdao.deleteUsercart(orderuser);  
		System.out.println("***lists:"+lists.size());
		
		mav.addObject("lists",lists);
		mav.addObject("orderuser",orderuser);
		mav.setViewName(gotoPage);
		
			return mav;																				
	}
	
	
	
	//상품->바로결제하기
	@RequestMapping(insertonecommand)
	public ModelAndView doAction(HttpSession session,@RequestParam(value="orderuser", required=false) String orderuser,
									@RequestParam(value="mno", required=false) int mno) {
		
		ModelAndView mav = new ModelAndView();
	
		//music테이블에있는 mno기준으로 데이터 불러와서 Music bean에 담기
				Music music = new Music();
				music = musicdao.selectOne(mno);
				
				//Music bean 가지고 insert하기
				music.setUser(orderuser);  
				orderdao.insertOne(music);

				mav.addObject("music",music);
				mav.setViewName(gotoPage);
				return mav;
	}

}