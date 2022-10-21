package reservation.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component
public class ReservationDao {
	final String namespace = "reservation.model.Reservation";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<ReservationBean> getById(String id) {
		List<ReservationBean> lists = sqlSessionTemplate.selectList(namespace+".GetById",id);
		return lists;
	}

	public void insertData(ReservationBean rb) {
		int insert = sqlSessionTemplate.insert(namespace+".InsertData",rb);
		System.out.println("insert:"+insert);
	}

	public ReservationBean getByNo(int no) {
		ReservationBean rb = sqlSessionTemplate.selectOne(namespace+".GetByNo",no);
		return rb;
	}

	public void deleteByNo(int no) {
		int delete = sqlSessionTemplate.delete(namespace+".DeleteByNo",no);
		System.out.println("delete:"+delete);
		
	}

	public List<ReservationBean> getAll(Map<String, String> map, Paging pageInfo) {
		
		RowBounds rbs = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
		List<ReservationBean> lists = sqlSessionTemplate.selectList(namespace+".GetAll",map,rbs);
		return lists;
	}

	public int getTotalCount(Map<String, String> map) {
		int totalCount = sqlSessionTemplate.selectOne(namespace+".GetTotalCount",map);
		return totalCount;
	}
	
	
}
