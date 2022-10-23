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

	public ExhibitionBean getByNo(int no) {
		ExhibitionBean eb = sqlSessionTemplate.selectOne(namespace+".GetByNo",no);
		return eb;
	}

	public void deleteByNo(int no) {
		int delete = sqlSessionTemplate.delete(namespace+".DeleteByNo",no);
		System.out.println("delete:"+delete);
	}

	public void updateExhibition(ExhibitionBean eb) {
		int update = sqlSessionTemplate.update(namespace+".UpdateExhibition",eb);
		System.out.println("update:"+update);
	}

	public ExhibitionBean getByTitle(String title) {
		ExhibitionBean eb = sqlSessionTemplate.selectOne(namespace+".GetByTitle",title);
		return eb;
	}

	public List<ExhibitionBean> getExByEndday() {
		List<ExhibitionBean> elists = sqlSessionTemplate.selectList(namespace+".GetExByEndday");
		return elists;
	}
	
	
	
	
}
