package Music.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

/*AlbumDao myAlbumDao = new AlbumDao()*/

@Component("myAlbumDao")
public class MusicDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	public int insertAlbum(MusicBean album){
		
		//String sql = "insert into albums~";
		int cnt = sqlSessionTemplate.insert("album.AlbumBean.InsertAlbum",album);
		System.out.println("insertAlbum cnt : " + cnt);
		return cnt;
	}
	
	public List<MusicBean> getAlbumList(Paging pageInfo, Map<String,String> map){
		List<MusicBean> lists = new ArrayList<MusicBean>(); 
		
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
		//넘길 페이지의 갯수 (나오는 페이지의 수
		//new RowBounds(0,2);
		
		lists = sqlSessionTemplate.selectList("album.AlbumBean.GetAlbumList",map,rowBounds);
		System.out.println("lists.size():"+lists.size());
		return lists; 
	}//
	
	
	public int deleteAlbum(int num) {
		int cnt = sqlSessionTemplate.delete("album.AlbumBean.DeleteAlbum",num);
		System.out.println("deleteAlbum cnt : " + cnt);
		return cnt;
	}//
	
	public MusicBean getOneAlbum(int num){
		MusicBean album = null;
		album = sqlSessionTemplate.selectOne("album.AlbumBean.GetOneAlbum",num);
		return album;
	}//
	
	public int updateAlbum(MusicBean album){
		int cnt = sqlSessionTemplate.update("album.AlbumBean.UpdateAlbum",album);
		return cnt;
	}
	
	public int getTotalCount(Map<String, String> map) {
		int cnt = sqlSessionTemplate.selectOne("album.AlbumBean.GetTotalCount",map);
		return cnt;
	}
} 







