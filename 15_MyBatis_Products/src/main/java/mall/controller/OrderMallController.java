package mall.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.model.Member;
import order.model.Order;
import product.model.CompositDao;

@Controller
public class OrderMallController {

	final String command = "/order.mall";
	final String getPage= "ShopList";
	@Autowired
	CompositDao compositdao;
	
	@RequestMapping(command)
	public String doAction(HttpSession session, Model model) {
			Member login = (Member)session.getAttribute("loginInfo");
			if (login ==null) {
				session.setAttribute("destination", "redirect:/order.mall");
				return "redirect:/loginForm.me";
			}else {
				List<Order> lists = compositdao.ordermall(login.getId());
				model.addAttribute("lists",lists);
			}
			
		
		return getPage;
	}
	
	
}
