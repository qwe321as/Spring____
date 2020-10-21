package Login.controller;



import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Login.model.Customer;
import Login.model.CustomerDao;

@Controller
public class CustomerMypageUpdateController {
   
   final String command = "/myPageUpdate.me";  
   final String getPage = "MyPageUpdateForm";
   final String gotoPage = "redirct:/myPageList.me";
 
   
   
   @Autowired
   CustomerDao customerDao;
   
   @RequestMapping(value="command",method=RequestMethod.GET)
   public String doAction(@RequestParam(value="customerno") int customerno) {
//	   .customerno.Customer loginInfo = (Customer)session.getAttribute("loginInfo");
	   
	   System.out.println("customerno:" + customerno);
	 //  Customer lists = customerDao.getData(loginInfo.getCustomer_id());
	 ModelAndView mav = new ModelAndView();
	 //  mav.addObject("lists",lists);
	  // mav.setViewName(getPage);
	   return getPage;
	   
   }
   @RequestMapping(value="command",method=RequestMethod.POST)
   public ModelAndView doAction(@Valid Customer customer,HttpSession session,BindingResult result) {
	   System.out.println("post방식");
	   
	   ModelAndView mav = new ModelAndView();
	   
	   if(result.hasErrors()) {
		   mav.setViewName(getPage);
		   return mav;
	   }
	   Customer loginInfo = (Customer)session.getAttribute("loginInfo");
	   
	   Customer lists = customerDao.getData(loginInfo.getCustomer_id());
	   customerDao.updateData(customer);
	   mav.setViewName(gotoPage);
	   return mav;
	   
   }
}
