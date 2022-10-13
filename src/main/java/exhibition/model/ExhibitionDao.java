package exhibition.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ExhibitionDao {
	String namespace = "exhibition.model.Exhibition";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<ExhibitionBean> getAllEx() {
		List<ExhibitionBean> lists = sqlSessionTemplate.selectList(namespace+".GetAllEx");
		return lists;
	}

	public void insertExhibition(ExhibitionBean eb) {
		int insert = sqlSessionTemplate.insert(namespace+".InsertExhibition",eb);
		System.out.println("insert:"+insert);
	}
	
	
	
	
}
