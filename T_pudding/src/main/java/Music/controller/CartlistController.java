package Music.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Music.model.Cart;
import Music.model.CartDao;
import Music.model.Music;
import Music.model.MusicDao;


@Controller
public class CartlistController {
	
		final String command = "/listcart.ms";
		final String getPage = "CartList";
		
		@Autowired
		CartDao cartdao;
		
		@Autowired
		ServletContext servletcontext;
		
		
		@RequestMapping(command)
		public ModelAndView doAction(HttpSession session
							) {
			int amount =0;
			ModelAndView mav = new ModelAndView();
			if(session.getAttribute("loginInfo") == null) {
				session.setAttribute("destination",  "redirect:/listcart.ms");
				mav.setViewName("redirect:/loginForm.me");
				return mav;
			}				
			List<Cart> cartlists = cartdao.getDataList();
			Cart cart = new Cart();
			
			for(int i=0;i<cartlists.size();i++) {
			amount += cartlists.get(i).getCart_price();
			}
			mav.addObject("cartlists", cartlists);
			session.setAttribute("amount", amount);
			mav.setViewName(getPage);
			
				return mav;																				
		}
	
	
}
