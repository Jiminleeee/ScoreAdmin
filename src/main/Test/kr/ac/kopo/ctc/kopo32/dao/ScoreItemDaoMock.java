package kr.ac.kopo.ctc.kopo32.dao;

import java.util.List;

import kr.ac.kopo.ctc.kopo32.domain.ScoreItem;

public class ScoreItemDaoMock implements ScoreItemDao {

	@Override
	public List<ScoreItem> selectAll(int page, int countPerPage) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ScoreItem selectOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ScoreItem> selectName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectTotalCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectNewId() {
		// TODO Auto-generated method stub
		return 0;
	}

//	@Override
//	public int selectFirstId() {
//		// TODO Auto-generated method stub
//		return 0;
//	}
	
	@Override
	public ScoreItem insertOne(ScoreItem scoreItem) {
		return scoreItem;
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public ScoreItem updateOne(ScoreItem scoreItem) {
		return scoreItem;

		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int id) {
//		return null;
		// TODO Auto-generated method stub
		
	}



	
}
