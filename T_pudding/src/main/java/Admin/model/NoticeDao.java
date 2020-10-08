package Admin.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myNoticeDao")
public class NoticeDao {
	private String namespace = "Notice.model.Notice";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	public void insertData(Notice notice) {
		sqlSessionTemplate.insert(namespace+".insertdata",notice);
	}
	
}
