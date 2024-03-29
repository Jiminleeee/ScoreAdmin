package kr.ac.kopo.ctc.kopo32.service;

import java.sql.SQLException;
import java.util.List;

import kr.ac.kopo.ctc.kopo32.dao.ScoreItemDao;
import kr.ac.kopo.ctc.kopo32.dao.ScoreItemDaoImpl;
import kr.ac.kopo.ctc.kopo32.domain.ScoreItem;
import kr.ac.kopo.ctc.kopo32.dto.Pagination;


public class ScoreItemServiceImpl implements ScoreItemService {
	private ScoreItemDao scoreItemDao = new ScoreItemDaoImpl();
	private  final int countPerPage = 10;
	private  final int pageSize = 10;
	
	@Override
	public List<ScoreItem> scoreItemSelectAll(int cPage, int countPerPage) throws ClassNotFoundException, SQLException {
	

		return scoreItemDao.selectAll(cPage, countPerPage);
	}





	@Override
	public ScoreItem scoreItemSelectId(int id) {
		return scoreItemDao.selectOne(id);
	}




	@Override
	public List<ScoreItem> scoreItemSelectName(String name) {
		
		return scoreItemDao.selectName(name);
	}




	@Override
	public ScoreItem scoreItemInsertOne(String name, String kor, String eng, String mat) {
		int newId = scoreItemDao.selectNewId();
		
		ScoreItem scoreItem = new ScoreItem();
		scoreItem.setName(name);
		scoreItem.setStudentId(newId);
		scoreItem.setKor(Integer.parseInt(kor));
		scoreItem.setEng(Integer.parseInt(eng));
		scoreItem.setMat(Integer.parseInt(mat));
		
		
		return scoreItemDao.insertOne(scoreItem);
	}

	


	@Override
	public ScoreItem scoreItemUpdateOne(String name, String id, String kor, String eng, String mat) {
		ScoreItem scoreItem = new ScoreItem();
		scoreItem.setName(name);
		scoreItem.setStudentId(Integer.parseInt(id));
		scoreItem.setKor(Integer.parseInt(kor));
		scoreItem.setEng(Integer.parseInt(eng));
		scoreItem.setMat(Integer.parseInt(mat));
		
		
		return scoreItemDao.updateOne(scoreItem);
	}




	@Override
	public void scoreItemDeleteOne(int id) {

		scoreItemDao.deleteOne(id);
	}

	
	@Override
	public Pagination getPagination(int cPage, int countPerPage, int pageSize, int totalCount) {
		Pagination pagination = new Pagination(); 
		
		// 총페이지 계산
		int totalPage = (int) Math.ceil(totalCount / (double) countPerPage);
		if (totalPage != Math.ceil(totalCount / (double) countPerPage)) {
			totalPage++;
		}
		
		// 현재페이지에 불가능한 값을 넣었을 경우 처리
		if (cPage > totalPage) {
			cPage = totalPage;
		}
		if (cPage < 1) {
			cPage = 1;
		}
		
		//페이지 묶음의 시작과 끝 페이지
		int startPage;
		
		if (cPage % pageSize == 0) {
			startPage = ((cPage - 1) / pageSize) * pageSize + 1;
		} else {
			startPage = (cPage / pageSize) * pageSize + 1;
		}
		int lastPage = startPage + pageSize - 1;
		
		
		// 만약 끝 값이 총 페이지보다 크다면 총페이지만 나오도록
		
		if (lastPage > totalPage) {
			lastPage = totalPage;
		}
		
		// 이전 페이지열 계산
		int pPage;
		if (startPage == 1) {
			pPage = 1;
		} else {
			pPage = startPage - 1;
		}
		
		
		// 다음 페이지열 계산
		int nPage;
		if (lastPage == totalPage) {
			nPage = totalPage;
		} else {
			nPage = lastPage + 1;
		}
		
		//ppPage : 제일 처음 페이지 
		int ppPage = 1;
		
		//nnPage : 제일 마지막 페이지
		int nnPage = (int)Math.ceil((double)totalCount / pageSize);
		

		pagination.setPpPage(ppPage);
		pagination.setpPage(pPage);
		pagination.setnPage(nPage);
		pagination.setNnPage(nnPage);
		pagination.setcPage(cPage);
		pagination.setStartPage(startPage);
		pagination.setLastPage(lastPage);
		pagination.setTotalPage(totalPage);
		pagination.setcPage(cPage);
		pagination.setCountPerpage(countPerPage);
		pagination.setTotalCount(totalCount);
		pagination.setPageSize(pageSize);
	
		return pagination;


		
	}







	
	
	

}
