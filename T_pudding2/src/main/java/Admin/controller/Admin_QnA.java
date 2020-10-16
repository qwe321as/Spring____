package Admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Admin.model.QnA;
import Admin.model.QnADao;



@Controller
public class Admin_QnA {
	final String command = "addQA.ad";
	final String getPage = "a_qna";

	@Autowired
	QnADao dao;


	@RequestMapping(command)
	public ModelAndView doAction() {
		ModelAndView mav = new ModelAndView();
		List<QnA> lists = dao.getDataList();
		System.out.println(lists.toString());
		mav.addObject("lists", lists);
		mav.setViewName(getPage);
		return mav;
	}

}
