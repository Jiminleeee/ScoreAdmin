package kr.ac.kopo.ctc.kopo32.dao;

import java.sql.SQLException;
import java.util.List;

import kr.ac.kopo.ctc.kopo32.domain.ScoreItem;

public interface ScoreItemDao {	
	// 조회(read)
	List<ScoreItem> selectAll(int startRecordNo, int countPerPage) throws SQLException, ClassNotFoundException;
	
	ScoreItem selectOne(int id);
	
	List<ScoreItem> selectName(String name);
	
	int selectTotalCount();
	
	
	// 입력
	int selectNewId();
	
	
	
	ScoreItem insertOne(ScoreItem scoreItem);
	
	
	// 수정(update)
	ScoreItem updateOne(ScoreItem scoreItem);
	
	
	// 삭제(delete)
	void deleteOne(int id);
	
	
	
	

	


	
}
