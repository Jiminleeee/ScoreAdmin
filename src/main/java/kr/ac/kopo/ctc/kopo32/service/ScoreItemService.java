package kr.ac.kopo.ctc.kopo32.service;

import java.sql.SQLException;
import java.util.List;

import kr.ac.kopo.ctc.kopo32.dao.ScoreItemDao;
import kr.ac.kopo.ctc.kopo32.domain.ScoreItem;
import kr.ac.kopo.ctc.kopo32.dto.Pagination;


public interface ScoreItemService {

	// 조회
	List<ScoreItem> scoreItemSelectAll(int cPage, int countPerPage) throws ClassNotFoundException, SQLException;
	
	ScoreItem scoreItemSelectId(int id);
	
	List<ScoreItem> scoreItemSelectName(String name);

	Pagination getPagination(int cPage, int countPerPage, int pageSize, int totalCount);
	
	// 입력
	ScoreItem scoreItemInsertOne(String name,String kor, String eng, String mat);
	
	// 수정
	ScoreItem scoreItemUpdateOne(String name, String id, String kor, String eng, String mat);
	
	// 삭제
	void scoreItemDeleteOne(int id);

	
}
