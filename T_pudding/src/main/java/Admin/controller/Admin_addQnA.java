package Admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Admin.model.QnA;
import Admin.model.QnADao;


@Controller
public class Admin_addQnA {
	final String command = "addQnA.ad";
	final String getPage = "add_QnA";
	final String gotoPage = "redirect:/addQA.ad";
@Autowired
QnADao dao;

@RequestMapping(value = command,method = RequestMethod.GET)
public ModelAndView doAction() {
	ModelAndView mav = new ModelAndView();
	mav.setViewName(getPage);
	return mav;
	}
@RequestMapping(value = command,method = RequestMethod.POST)
public ModelAndView doAction(QnA qna) {
	ModelAndView mav = new ModelAndView();
	System.out.println(qna.getQna_category());
	int cnt = dao.insertData(qna);
	System.out.println(cnt);
	mav.setViewName(gotoPage);
	return mav;
}
}
