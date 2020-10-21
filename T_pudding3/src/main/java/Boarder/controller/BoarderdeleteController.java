package Boarder.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Boarder.model.BoarderDao;
import Boarder.model.RecontentDao;

@Controller
public class BoarderdeleteController {
	
	final String command = "/delete.bd";
	final String gotoPage = "redirect:/boarderList.bd";
	
	@Autowired    
	BoarderDao boardDao;
	
	@Autowired
	RecontentDao recontentdao;
	
	@RequestMapping(command)
	public String doAction(@RequestParam(value="boardno",required=true) int boardno) {
		
		boardDao.deleteboard(boardno);
		
		return gotoPage;
	}
	
	@RequestMapping("recontentdelete.bd")
	public String recontentdoAction(@RequestParam("recontentno")int recontentno,
			@RequestParam("boardno")int boardno) {
			
		      recontentdao.deleterecontent(recontentno);
		
				return "redirect:/content.bd?boardno="+boardno;
		
	}
}
