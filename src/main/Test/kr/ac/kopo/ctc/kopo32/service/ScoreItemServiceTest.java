
package kr.ac.kopo.ctc.kopo32.service;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import kr.ac.kopo.ctc.kopo32.dao.ScoreItemDao;
import kr.ac.kopo.ctc.kopo32.dao.ScoreItemDaoImpl;
import kr.ac.kopo.ctc.kopo32.dao.ScoreItemDaoMock;
import kr.ac.kopo.ctc.kopo32.dto.Pagination;

class ScoreItemServiceTest {

	private ScoreItemDao scoreItemDao = new ScoreItemDaoMock();
	private ScoreItemService scoreItemService = new ScoreItemServiceImpl();
	
//	@BeforeEach
//	void setUp() throws Exception {
//		scoreItemService.setScoreItemDao(scoreItemDao);
//	}

//	@AfterEach
	void tearDown() throws Exception {
	}
	
	@Test
	void testGetPagination1() {
		Pagination pagination = scoreItemService.getPagination(1, 15, 50, 1025);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(16, pagination.getnPage());
		assertEquals(21, pagination.getNnPage());
		assertEquals(1, pagination.getcPage());
	}
	
	@Test
	void testGetPagination2() {
		Pagination pagination = scoreItemService.getPagination(-100, 15, 50, 1025);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(16, pagination.getnPage());
		assertEquals(21, pagination.getNnPage());
		assertEquals(1, pagination.getcPage());
	}
	
	@Test
	void testGetPagination3() {
		Pagination pagination = scoreItemService.getPagination(8, 15, 50, 1025);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(16, pagination.getnPage());
		assertEquals(21, pagination.getNnPage());
		assertEquals(8, pagination.getcPage());
	}
	
	@Test
	void testGetPagination4() {
		Pagination pagination = scoreItemService.getPagination(21, 15, 50, 1025);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(21, pagination.getnPage());
		assertEquals(21, pagination.getNnPage());
		assertEquals(21, pagination.getcPage());
	}
	
	@Test
	void testGetPagination5() {
		Pagination pagination = scoreItemService.getPagination(100, 15, 50, 1025);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(21, pagination.getnPage());
		assertEquals(21, pagination.getNnPage());
		assertEquals(21, pagination.getcPage());
	}
	
	
	
	@Test
	void testGetPagination6() {
		Pagination pagination = scoreItemService.getPagination(1, 10, 21, 100);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(5, pagination.getnPage());
		assertEquals(5, pagination.getNnPage());
		assertEquals(1, pagination.getcPage());
	}
	
	@Test
	void testGetPagination7() {
		Pagination pagination = scoreItemService.getPagination(-100, 10, 21, 100);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(5, pagination.getnPage());
		assertEquals(5, pagination.getNnPage());
		assertEquals(1, pagination.getcPage());
	}
	
	@Test
	void testGetPagination8() {
		Pagination pagination = scoreItemService.getPagination(3, 10, 21, 100);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(5, pagination.getnPage());
		assertEquals(5, pagination.getNnPage());
		assertEquals(3, pagination.getcPage());
	}
	
	@Test
	void testGetPagination9() {
		Pagination pagination = scoreItemService.getPagination(5, 10, 21, 100);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(5, pagination.getnPage());
		assertEquals(5, pagination.getNnPage());
		assertEquals(5, pagination.getcPage());
	}
	
	@Test
	void testGetPagination10() {
		Pagination pagination = scoreItemService.getPagination(100, 10, 21, 100);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(5, pagination.getnPage());
		assertEquals(5, pagination.getNnPage());
		assertEquals(5, pagination.getcPage());
	}
	
	@Test
	void testGetPagination11() {
		Pagination pagination = scoreItemService.getPagination(1, 15, 50, 525);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(11, pagination.getnPage());
		assertEquals(11, pagination.getNnPage());
		assertEquals(1, pagination.getcPage());
	}
	
	@Test
	void testGetPagination12() {
		Pagination pagination = scoreItemService.getPagination(-100, 15, 50, 525);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(11, pagination.getnPage());
		assertEquals(11, pagination.getNnPage());
		assertEquals(1, pagination.getcPage());
	}
	
	@Test
	void testGetPagination13() {
		Pagination pagination = scoreItemService.getPagination(6, 15, 50, 525);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(11, pagination.getnPage());
		assertEquals(11, pagination.getNnPage());
		assertEquals(6, pagination.getcPage());
	}
	
	@Test
	void testGetPagination14() {
		Pagination pagination = scoreItemService.getPagination(11, 15, 50, 525);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(11, pagination.getnPage());
		assertEquals(11, pagination.getNnPage());
		assertEquals(11, pagination.getcPage());
	}
	
	@Test
	void testGetPagination15() {
		Pagination pagination = scoreItemService.getPagination(1000, 15, 50, 525);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(11, pagination.getnPage());
		assertEquals(11, pagination.getNnPage());
		assertEquals(11, pagination.getcPage());
	}
	
	@Test
	void testGetPagination16() {
		Pagination pagination = scoreItemService.getPagination(1, 10, 10, 18);
		assertEquals(1, pagination.getPpPage());
		assertEquals(1, pagination.getpPage());
		assertEquals(11, pagination.getnPage());
		assertEquals(11, pagination.getNnPage());
		assertEquals(11, pagination.getcPage());
	}
	
	@Test
	void test1() {
		int n = 1;
		assertEquals(n, 1);
	}

}
