package board.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component
public class BoardDao {
	final String namespace = "board.model.Board";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public int getTotalCount(Map<String, String> map) {
		int totalCount = sqlSessionTemplate.selectOne(namespace+".GetTotalCount",map);
		return totalCount;
	}

	public List<BoardBean> getAll(Map<String, String> map, Paging pageInfo) {
		RowBounds rb = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
		List<BoardBean> lists = sqlSessionTemplate.selectList(namespace+".GetAll",map,rb);
		return lists;
	}

	public BoardBean getByNo(int no) {
		BoardBean bb = sqlSessionTemplate.selectOne(namespace+".GetByNo",no);
		return bb;
	}

	public void updateReadcnt(int no) {
		int rcnt = sqlSessionTemplate.update(namespace+".UpdateReadcnt",no);
		System.out.println("rcnt:"+rcnt);
		
	}

	public void insertBoard(BoardBean bb) {
		int insert = sqlSessionTemplate.insert(namespace+".InsertBoard",bb);
		System.out.println("insert:"+insert);
	}

	public void deleteByNo(int no) {
		int delete = sqlSessionTemplate.delete(namespace+".DeleteByNo",no);
		System.out.println("delete:"+delete);
	}

	public void updateByNo(BoardBean bb) {
		int update = sqlSessionTemplate.update(namespace+".UpdateByNo",bb);
		System.out.println("update:"+update);
	}
	public void plusReplyCnt(int no) {
		int update = sqlSessionTemplate.update(namespace+".PlusReplyCnt",no);
		System.out.println("update:"+update);
	}

	public void minusReplyCnt(int reno) {
		int update = sqlSessionTemplate.update(namespace+".MinusReplyCnt",reno);
		System.out.println("update:"+update);
	}

	public List<BoardBean> getById(String id) {
		List<BoardBean> blists = sqlSessionTemplate.selectList(namespace+".GetById",id);
		return blists;
	}
	
	//table reply-----------------------
	
	public List<ReplyBean> repleByReno(int reno) {
		List<ReplyBean> lists = sqlSessionTemplate.selectList(namespace+".ReplyByReno",reno);
		return lists;
	}

	public void insertReply(ReplyBean rb) {
		int insert = sqlSessionTemplate.insert(namespace+".InsertReply",rb);
		System.out.println("insert:"+insert);
		
	}

	public void deleteReplyByNo(int no) {
		int delete = sqlSessionTemplate.delete(namespace+".DeleteReplyByNo",no);
		System.out.println("delete:"+delete);
	}

	public ReplyBean repleByNo(int no) {
		ReplyBean rb = sqlSessionTemplate.selectOne(namespace+".RepleByNo",no);
		return rb;
	}

	public void updateReply(ReplyBean rb) {
		int update = sqlSessionTemplate.update(namespace+".UpdateReply",rb);
		System.out.println("update:"+update);
		
	}

	
	
	
}
