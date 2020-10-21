package Music.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Music.model.Dj;
import Music.model.DjDao;
import Music.model.Djmusic;
import Music.model.Music;
import Music.model.MusicDao;


@Controller
public class Dj_delete {
	final String command = "deleteDj.ms";
	final String gotoPage = "redirect:/Djlist.ms";
	@Autowired
	MusicDao dao;

	@Autowired
	DjDao daodj;

	@RequestMapping(command)
	public ModelAndView doAction(@RequestParam("dj_no") int dj_no) throws IllegalStateException, IOException {
		ModelAndView mav = new ModelAndView();
		Dj dj = daodj.selectOne(dj_no);
		String djcode=dj.getDj_code();
		String djarr[]= djcode.split(",");
		System.out.println("code"+dj.getDj_code());
		List<Music> list = dao.getDataList();
		System.out.println("list.size():"+list.size());
		String song = " ";
		if(list.size()>0) {
			for (int i = 0; i < list.size(); i++) {

				String [] arr = list.get(i).getMusic_dj().split(",");
				System.out.println( "musictitle:"+list.get(i).getMusic_title());
				System.out.println( "musicdj:"+list.get(i).getMusic_dj());
				System.out.println("arr 길이:"+arr.length);
				System.out.println("1");
				for (int j = 0; j < arr.length; j++) {
					if (arr.length==1) {
						System.out.println("하나있ㄴㄴ:"+list.get(i).getMusic_singer());
						Djmusic djmusic = new Djmusic(list.get(i).getMusic_title(),song);
						dao.deleteoneDj(djmusic);
					}else {
						System.out.println(arr[j]);
						System.out.println(dj.getDj_code());
						System.out.println("2");
						for (int j2 = 0; j2 < djarr.length; j2++) {
							if(arr[j].equals(djarr[j2])) {
								song=(list.get(i).getMusic_dj()).replace(arr[j], " ")+",";
								Djmusic djmusic = new Djmusic(list.get(i).getMusic_title(),song);
								System.out.println("song:"+song);
								dao.deleteDj(djmusic);
							}
							else {
								System.out.println("없음");
							}
							
						}
					}
				}
			}
		}
		daodj.deleteData(dj_no);
		mav.setViewName(gotoPage);
		return mav;
	}

}
