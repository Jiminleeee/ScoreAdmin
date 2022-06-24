package kr.ac.kopo.ctc.kopo32.dao;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;

import kr.ac.kopo.ctc.kopo32.domain.ScoreItem;
//test 내가 지정한 순서대로 하기 
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class ScoreItemDaoTest {
	private ScoreItemDao scoreItemDao = new ScoreItemDaoImpl();
	

	@Test
	@Order(1)
	void testInsert() {
		ScoreItem scoreItemInput = new ScoreItem();
//		scoreItemInput.setId(209999);
		scoreItemInput.setName("홍길동");
		scoreItemInput.setStudentId(209999);
		scoreItemInput.setKor(100);
		scoreItemInput.setEng(100);
		scoreItemInput.setMat(100);
		ScoreItem scoreItemOutput = scoreItemDao.insertOne(scoreItemInput);	// dao로 데이터 옮길 때 domain사용하기.
		assertEquals(scoreItemOutput.getStudentId(), 209999);	// id는 내부적 고유번호용도, auto increase설정, DB에서 확인 후 비교값으로 넣기.
		
	}
	
	@Test
	@Order(2)
	   void testSelectOne() {
	      ScoreItem scoreItemOutput = new ScoreItem();
	      
	      scoreItemOutput = scoreItemDao.selectOne(209902);
	      
	      assertEquals( scoreItemOutput.getName(), "정연");
	      assertEquals(scoreItemOutput.getStudentId(), 209902);
	      assertEquals(scoreItemOutput.getKor(), 95);
	      assertEquals(scoreItemOutput.getEng(), 95);
	      assertEquals(scoreItemOutput.getMat(), 95);
	   }

	
	 @Test
	 @Order(3)
	   void testSelectAll() {
	      
	      int totalDataLength = scoreItemDao.selectTotalCount();
	      
	      assertEquals(totalDataLength, 18);
	   }


	@Test
	@Order(4)
	void testUpdate() {
		ScoreItem scoreItemInput = new ScoreItem();
		scoreItemInput.setName("홍길동");
		scoreItemInput.setKor(80);
		scoreItemInput.setEng(80);
		scoreItemInput.setMat(80);
		scoreItemInput.setStudentId(209999);
		scoreItemDao.updateOne(scoreItemInput);	// dao로 데이터 옮길 때 domain사용하기.
		ScoreItem scoreItemOutput = scoreItemDao.selectOne(209999);
		assertEquals(scoreItemOutput.getStudentId(), 209999); // id는 내부적 고유번호용도, auto increase설정, DB에서 확인 후 비교값으로 넣기.
		assertEquals(scoreItemOutput.getKor(), 80);
		assertEquals(scoreItemOutput.getEng(), 80);
		assertEquals(scoreItemOutput.getMat(), 80);
		
	}
	

	@Test
	@Order(5)
	void testDelete() {
		int deleteId = 209999;		
		scoreItemDao.deleteOne(deleteId);	
		assertEquals(scoreItemDao.selectTotalCount(), 17); 
	}
	


	
	@Test
	void test() {
		int n = 1;
		assertEquals(n, 1);
	}


}
