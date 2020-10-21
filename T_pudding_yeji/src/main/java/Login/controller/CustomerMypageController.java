package Login.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Login.model.Customer;
import Login.model.CustomerDao;

@Controller
public class CustomerMypageController {
   
   final String command = "/myPageList.me"; 
   final String getPage = "MyPageListForm";
 
   
   
   @Autowired
   CustomerDao customerDao;
   
   @RequestMapping(command)
   public String doAction(Model model, HttpSession session) {
	   Customer loginInfo = (Customer)session.getAttribute("loginInfo");
	   if(loginInfo == null) {
		session.setAttribute("destination","redirect:/myPageList.me");
		return "redirect:/loginForm.me";
		}
	   else {
			Customer lists = customerDao.getData(loginInfo.getCustomer_id());
			model.addAttribute("lists",lists);
			  return getPage; 
		}
	   
	
	   
   }
}
