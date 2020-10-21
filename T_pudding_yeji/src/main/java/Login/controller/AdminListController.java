package Login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Login.model.Customer;
import Login.model.CustomerDao;

import utility.Paging;
@Controller
public class AdminListController {

	final String command = "admin_customerlist.me";  
	final String getPage = "Customerlist"; 

	@Autowired
	CustomerDao customerDao; 

	@RequestMapping(value=command,method=RequestMethod.GET)
	public String doAction(HttpSession session,Customer customer,HttpServletResponse response) throws IOException {
		
		
		if(session.getAttribute("loginInfo") == null) {						
        	session.setAttribute("destination",  "redirect:/admin_customerlist.me");
        	return "redirect:/admin_customerlist.me";
		}
		return getPage;
		
	}
			
	@RequestMapping(value=command,method=RequestMethod.POST)
	public ModelAndView doAction(@RequestParam(value="whatColumn", required = false) String whatColumn,
			@RequestParam(value="keyword", required = false) String keyword,
			@RequestParam(value="pageNumber", required = false) String pageNumber,
			@RequestParam(value="pageSize", required = false) String pageSize,
			Customer customer,
			HttpServletRequest request,HttpServletResponse response,
			HttpSession session
			) throws IOException {

	
			Map<String,String> map = new HashMap<String,String>();
			map.put("keyword","%"+keyword+"%");
			map.put("whatColumn","%"+whatColumn+"%");
			
			int totalCount = customerDao.getTotalCount(map);
			String url = request.getContextPath() + command; // admin.ad
			Paging pageInfo = new Paging(pageNumber,pageSize,totalCount,url,whatColumn,keyword);
			
			ModelAndView mav = new ModelAndView();
			
			List<Customer> lists = customerDao.getDataList(pageInfo,map);
			
			System.out.println(lists.size());
			
			
			mav.addObject("lists", lists);
			mav.addObject("pageInfo", pageInfo);
			mav.setViewName(getPage);
			return mav;

		
	}
}
