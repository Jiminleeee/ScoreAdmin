package kr.ac.kopo.ctc.kopo32.domain;

import java.util.Objects;

public class ScoreItem {
//	private int id;
	private String name;
	private int studentId;
	private int kor;
	private int eng;
	private int mat;
	
	//getter, setter 만들기 
/*	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}		*/
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMat() {
		return mat;
	}
	public void setMat(int mat) {
		this.mat = mat;
	}
	
	// to String()
	@Override
	public String toString() {
		return "ScoreItem [ name=" + name + ", studentId=" + studentId + ", kor=" + kor + ", eng=" + eng
				+ ", mat=" + mat + "]";
	}
	
	
	
	
	}
