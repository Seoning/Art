package member.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDao {
	final String namespace="member.model.Member";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public MemberBean getById(String id) {
		MemberBean membean = sqlSessionTemplate.selectOne(namespace+".GetById",id);
		return membean;
	}

	public void insertMember(MemberBean mb) {
		int insert = sqlSessionTemplate.insert(namespace+".InsertMember",mb);
		System.out.println("insert:"+insert);
	}

	public List<MemberBean> getAllMember() {
		List<MemberBean>lists = sqlSessionTemplate.selectList(namespace+".GetAllMember");
		return lists;
	}

	public void deleteByNo(int no) {
		int delete = sqlSessionTemplate.delete(namespace+".DeleteByNo",no);
		System.out.println("delete:"+delete);
	}

	public MemberBean getByNo(int no) {
		MemberBean memb = sqlSessionTemplate.selectOne(namespace+".GetByNo",no);
		return memb;
	}

	public void updateMember(MemberBean memb) {
		int update = sqlSessionTemplate.update(namespace+".UpdateMember",memb);
		System.out.println("update:"+update);
	}

	public MemberBean login(Map<String, String> map) {
		MemberBean mb = sqlSessionTemplate.selectOne(namespace+".Login",map);
		return mb;
	}

	public MemberBean findId(Map<String, String> map) {
		MemberBean memb = sqlSessionTemplate.selectOne(namespace+".FindId",map);
		return memb;
	}
	
	
}
