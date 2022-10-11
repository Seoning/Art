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

	public MuseumBean getByNo(int no) {
		MuseumBean mb = sqlSessionTemplate.selectOne(namespace+".GetByNo",no);
		return mb;
	}

	public void deleteByNo(int no) {
		int delete = sqlSessionTemplate.delete(namespace+".DeleteByNo",no);
		System.out.println("delete:"+delete);
	}

	public void updateMuseum(MuseumBean mb) {
		int update = sqlSessionTemplate.update(namespace+".UpdateMuseum",mb);
		System.out.println("udpate:"+update);
	}
	
	
	
	
}
