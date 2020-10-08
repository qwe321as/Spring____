package Admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Admin_Notice {
final String command = "addNotice.ad";
final String getPage = "a_notice";

@RequestMapping(command)
public ModelAndView doAction() {
	ModelAndView mav = new ModelAndView();
	mav.setViewName(getPage);
	return mav;
	}

}
