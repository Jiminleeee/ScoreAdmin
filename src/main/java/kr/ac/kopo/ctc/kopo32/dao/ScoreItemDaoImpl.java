package kr.ac.kopo.ctc.kopo32.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import kr.ac.kopo.ctc.kopo32.domain.ScoreItem;

public class ScoreItemDaoImpl implements ScoreItemDao {
	
	//생성자
	public ScoreItemDaoImpl() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");	
		} catch (Exception e) {
			throw new IllegalStateException("jdbc 드라이버 로드 실패 : " + e.getMessage());
		}
	}
	
	@Override
	public List<ScoreItem> selectAll(int cPage, int countPerPage) throws SQLException, ClassNotFoundException {
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kopoctc", "root", "kopo32"); // database에
		// 연결
		Statement stmt = conn.createStatement(); // 연결된 데이터베이스에서 자료 가져오기
		
		List<ScoreItem> scoreItems = new ArrayList<ScoreItem>();
		
		String sql = "select * from examtable limit " + (countPerPage * (cPage - 1)) + ", " + countPerPage + ";";
		ResultSet rset = stmt.executeQuery(sql);
		while (rset.next()) {
			ScoreItem scoreItem = new ScoreItem();
			scoreItem.setName(rset.getString("name")); 
			scoreItem.setStudentId(rset.getInt("studentid"));
			scoreItem.setKor(rset.getInt("kor"));
			scoreItem.setEng(rset.getInt("eng"));
			scoreItem.setMat(rset.getInt("mat"));
			
			scoreItems.add(scoreItem);
		}
		rset.close(); // 파일 내용 닫기
		stmt.close(); // 파일 닫기
		conn.close(); // 연결 닫기
		return scoreItems;
	}

	@Override
	public ScoreItem selectOne(int id) {
		String sql = "select * from examtable where studentid=?;";
		ScoreItem scoreItem = new ScoreItem();

		try (
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kopoctc", "root", "kopo32");
				PreparedStatement pstmt = conn.prepareStatement(sql);
			) {
			pstmt.setInt(1, id);
			try (ResultSet rset = pstmt.executeQuery();) {
				rset.next();
					scoreItem = new ScoreItem();
					scoreItem.setName(rset.getString("name"));
					scoreItem.setStudentId(rset.getInt("studentid"));
					scoreItem.setKor(rset.getInt("kor"));
					scoreItem.setEng(rset.getInt("eng"));
					scoreItem.setMat(rset.getInt("mat"));
				}
		} catch (Exception e) {
			throw new IllegalStateException("db 연결 실패" + e.getMessage());
		}
		
		return scoreItem;
	}

	
	

	
	@Override
	public int selectTotalCount() {
		String sql = "select count(*) from examtable;";
		int result = 0;
		try (
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kopoctc", "root", "kopo32");
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
			) {
			while (rs.next()) {
				result = rs.getInt(1);
			}
		} catch (Exception e) {
			throw new IllegalStateException("db 연결 실패" + e.getMessage());
		}
		
		return result;
	}

	

	
	@Override
	public ScoreItem insertOne(ScoreItem scoreItem) {
		String sql = "insert into examtable values(?, ?, ?, ?, ?);";
//		int result = 0;

		try (
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/kopoctc","root","kopo32");
				PreparedStatement pstmt = conn.prepareStatement(sql);
			) {
			pstmt.setString(1, scoreItem.getName());
			pstmt.setInt(2, scoreItem.getStudentId());
			pstmt.setInt(3, scoreItem.getKor());
			pstmt.setInt(4, scoreItem.getEng());
			pstmt.setInt(5, scoreItem.getMat());
			pstmt.executeUpdate();

		} catch (Exception e) {
			throw new IllegalStateException("db 연결 실패" + e.getMessage());
		}
		return scoreItem;
		
		
//		return result;
	}

	@Override
	public ScoreItem updateOne(ScoreItem scoreItem) {
		String sql = "update examtable set name=?, kor=?, eng=?, mat=? where studentid=?;";
//		int result = 0;

		try (
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kopoctc", "root", "kopo32");
				PreparedStatement pstmt = conn.prepareStatement(sql);
			) {
			pstmt.setString(1, scoreItem.getName());
			pstmt.setInt(2, scoreItem.getKor());
			pstmt.setInt(3, scoreItem.getEng());
			pstmt.setInt(4, scoreItem.getMat());
			pstmt.setInt(5, scoreItem.getStudentId());
			pstmt.executeUpdate();

		} catch (Exception e) {
			throw new IllegalStateException("db 연결 실패" + e.getMessage());
		}
		return scoreItem;
		
		
//		return result;
	}

	@Override
	public void deleteOne(int id) {
		String sql = "delete from examtable where studentid=?;";
//		int result = 0;

		try (
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kopoctc", "root", "kopo32");
				PreparedStatement pstmt = conn.prepareStatement(sql);
			) {
			pstmt.setInt(1, id);
			pstmt.executeUpdate();

		} catch (Exception e) {
			throw new IllegalStateException("db 연결 실패" + e.getMessage());
		}
//		return null ;
		

	}
	
	@Override
	public List<ScoreItem> selectName(String name) {
		String sql = "select * from examtable where name=?;";
		List<ScoreItem> ScoreItems = new ArrayList<ScoreItem>();

		try (
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kopoctc", "root", "kopo32");
				PreparedStatement pstmt = conn.prepareStatement(sql);
			) {
			pstmt.setString(1, name);
			try (ResultSet rset = pstmt.executeQuery();) {
				while(rset.next()) {
					ScoreItem scoreItem = new ScoreItem();
					scoreItem.setName(rset.getString("name"));
					scoreItem.setStudentId(rset.getInt("studentid"));
					scoreItem.setKor(rset.getInt("kor"));
					scoreItem.setEng(rset.getInt("eng"));
					scoreItem.setMat(rset.getInt("mat"));
					
					ScoreItems.add(scoreItem);
				}
			}
		} catch (Exception e) {
			throw new IllegalStateException("db 연결 실패" + e.getMessage());
		}
		
		return ScoreItems;
	}
	
	
	@Override
	public int selectNewId() {
		//not in : 조건에 포함되지 않는 데이터만 추출
//		String sql = "select studentid+1 from examtable where (studentid+1) not in (select studentid from examtable)";
		//변수 선언
		int NewStdId = 209901;
        int minStdId = 209901;
        int maxStdId = 209901;
		try {
			 Class.forName("com.mysql.jdbc.Driver");
		        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/kopoctc","root","kopo32");
		        Statement stmt = conn.createStatement();
//				Statement stmt2 = conn.createStatement();
				
		        //examtable이 존재하지 않으면 만들기
//				stmt2.execute("CREATE TABLE IF NOT EXISTS examtable(name varchar(20), studentid int not null primary key, kor int, eng int, mat int);");
					
		        ResultSet rset = stmt.executeQuery("select max(studentid) from examtable;"); // 가장 높은 학번 찾기
				while (rset.next()) {
				  maxStdId = rset.getInt(1); 
				}
				
				ResultSet rset2 = stmt.executeQuery("select studentid from examtable;"); // 모든 학번 조회 > 빈 자리 찾기
				while (rset2.next()) {
				  NewStdId = rset2.getInt(1);
				  if (minStdId != NewStdId ) {
					NewStdId = minStdId;
					break;
				  }
				  if(minStdId == maxStdId){
					NewStdId = maxStdId +1;
					break;
				  }
				  minStdId++;
				}
		} catch (Exception e) {
			throw new IllegalStateException("db 연결 실패" + e.getMessage());
		}
		
		return NewStdId;
	}


}