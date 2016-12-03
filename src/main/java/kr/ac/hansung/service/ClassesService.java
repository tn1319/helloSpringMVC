package kr.ac.hansung.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hansung.dao.ClassDAO;
import kr.ac.hansung.model.Classes;

@Service
public class ClassesService {

	private ClassDAO classDao;

	@Autowired
	public void setClassDao(ClassDAO classDao) {
		this.classDao = classDao;
	}

	// 이수 구분별 학점내역
	public int getCreditSum(String division) {
		return classDao.getCreditSum(division);
	}

	// 학년/학기별 학점내역
	public int getCreditSum(int year, int semester) {
		return classDao.getCreditSum(year, semester);
	}

	// 총학점
	public int getCreditSum() {
		return classDao.getCreditSum();
	}

	// 수강신청 조회
	public List<Classes> getClasses() {
		return classDao.getClasses();
	}

	// 학년/학기별 이수 총 학점의 상세보기
	public List<Classes> getClasses(int year, int semester) {
		return classDao.getClasses(year, semester);
	}

	// 수강신청
	public void insert(Classes classes) {
		classDao.insert(classes);
	}

}
