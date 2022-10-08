package museum.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MuseumDao {
	final String namespace = "museum.model.Museum";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public void insertMuseum(MuseumBean mb) {
		System.out.println("ok");
		int insert = sqlSessionTemplate.insert(namespace+".InsertMuseum",mb);
		System.out.println("insert:"+insert);
	}

	public List<MuseumBean> getMuseumList() {
		List<MuseumBean> lists= sqlSessionTemplate.selectList(namespace+".GetMuseumList");
		System.out.println("lists.size:"+lists.size());
		return lists;
	}
	
	
	
	
}
