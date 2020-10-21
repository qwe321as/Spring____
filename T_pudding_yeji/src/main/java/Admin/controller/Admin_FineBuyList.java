package Admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Order.model.OrderDto;
import Order.model.OrderDao;

@Controller
public class Admin_FineBuyList {

	final String command = "/finebuylist.ad";
	final String getPage = "finebuylist";
	final String searchcommand = "searchlist.ad";
	
	@Autowired
	OrderDao orderdao;
	
	@RequestMapping(command)
	public ModelAndView doAction(
			/*
			 * @RequestParam(value="whatColumn", required=true) String whatColumn,
			 * 
			 * @RequestParam(value="keyword", required=true) String keyword,
			 */
			HttpServletRequest request	
			) {
		
		/*
		 * Map<String, String> map = new HashMap<String, String>();
		 * map.put("whatColumn", whatColumn); map.put("keyword", "%"+keyword+"%");
		 */
		
		List<OrderDto> lists = orderdao.getDataList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("lists", lists);
		
		mav.setViewName(getPage);
		return mav;
	}
	
	@RequestMapping(searchcommand)
	public ModelAndView doAction(  
		@RequestParam(value="whatColumn", required=true) String whatColumn,
		@RequestParam(value="keyword", required=true) String keyword,
		HttpServletRequest request) { 
		
	
		 Map<String, String> map = new HashMap<String, String>();
		map.put("whatColumn", whatColumn); map.put("keyword", "%"+keyword+"%");
		
		
		List<OrderDto> lists = orderdao.getDataSearchList(map);
		ModelAndView mav = new ModelAndView();
		mav.addObject("lists", lists); 
		
		mav.setViewName(getPage);
		return mav;
		
	}
}
