package Boarder.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Boarder.model.Boarder;
import Boarder.model.BoarderDao;
import Login.model.Customer;

@Controller
public class BoarderUpdateController {
	
	final String command = "/update.bd";
	final String getPage = "boarder_UpdateForm";
	final String gotoPage = "redirect:/boarderList.bd";
	
	@Autowired    
	BoarderDao boardDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doAction(@RequestParam("boardno")int boardno,
							Model model							
			) {
		Boarder lists = boardDao.getoneBoardList(boardno);
		model.addAttribute("lists", lists);				
		return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView doAction(@ModelAttribute("bo") @Valid Boarder board,
								HttpServletRequest request
								,@RequestParam(value="boardno", required = false) int boardno
								,HttpServletResponse response) throws IOException {
		 PrintWriter pw = response.getWriter();                     //5-0. PrintWriter객체만들기 (HttpServletResponse response)
	      response.setContentType("text/html;charset=UTF-8");   	
		ModelAndView mav = new ModelAndView();
		
		Boarder dbboarderpasswd = boardDao.getData(board.getBoard_passwd(),boardno); 
		
		if(dbboarderpasswd == null) {
	         
	         pw.println("<script type='text/javascript'>");
	         pw.println("alert('비밀번호가 맞지않습니다');");
	         pw.println("</script>");
	         pw.flush();   //내보내기
	         //return getPage;
	         return new ModelAndView(getPage);
	      }
		else {
		 pw.println("<script type='text/javascript'>");	
		 pw.println("alert('비밀번호가 맞습니다');");
		 pw.println("</script>");
		 pw.flush();
		
		}
		 boardDao.updateBoard(board);
			mav.setViewName(gotoPage);
			return mav;
		
		
	}
}
