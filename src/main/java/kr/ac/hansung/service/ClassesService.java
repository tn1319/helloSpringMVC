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

	// �̼� ���к� ��������
	public int getCreditSum(String division) {
		return classDao.getCreditSum(division);
	}

	// �г�/�б⺰ ��������
	public int getCreditSum(int year, int semester) {
		return classDao.getCreditSum(year, semester);
	}

	// ������
	public int getCreditSum() {
		return classDao.getCreditSum();
	}

	// ������û ��ȸ
	public List<Classes> getClasses() {
		return classDao.getClasses();
	}

	// �г�/�б⺰ �̼� �� ������ �󼼺���
	public List<Classes> getClasses(int year, int semester) {
		return classDao.getClasses(year, semester);
	}

	// ������û
	public void insert(Classes classes) {
		classDao.insert(classes);
	}

}
