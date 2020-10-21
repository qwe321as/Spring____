package Admin.controller;


import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Admin.model.QnA;
import Admin.model.QnADao;

@Controller
public class C_QnA {
	final String command = "C_QnA_list.ad";
	final String getPage = "c_QnA";

	@Autowired
	QnADao dao;
	
	@RequestMapping(command)
	public ModelAndView doAction(ModelAndView mav) {

		List<QnA> lists = dao.getDataList();
		mav.addObject("lists", lists);
		mav.setViewName(getPage);
		return mav;
	}

}
