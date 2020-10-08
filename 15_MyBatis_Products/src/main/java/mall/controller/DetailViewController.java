package mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mall.cart.ShoppingInfo;
import product.model.CompositDao;

@Controller
public class DetailViewController {
	final String command = "/detailView.mall";
	final String getpage="ShopResult";
	@Autowired
	CompositDao compositdao;
	
	@RequestMapping(value = command)
	public String doAction(@RequestParam("oid") int oid , Model model) {
	 List<ShoppingInfo> lists=compositdao.showDetail(oid);
		model.addAttribute("lists",lists);
		model.addAttribute("oid",oid);
		return getpage;
	}
}
