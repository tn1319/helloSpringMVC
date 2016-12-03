package kr.ac.hansung.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Classes;

@Repository
public class ClassDAO {
	private JdbcTemplate jdbcTemplateObject;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}

	// 이수 구분별 학점내역
	public int getCreditSum(String semester) {
		String sqlStatement = "select sum(credit) from taked_class where semester=?";
		return jdbcTemplateObject.queryForObject(sqlStatement, new Object[]{semester}, Integer.class);
	}

	// 학년/학기별 학점내역
	public int getCreditSum(int year, int semester) {
		String sqlStatement = "select sum(credit) from taked_class where year=? and semester=? ";
		return jdbcTemplateObject.queryForObject(sqlStatement, new Object[] { year, semester }, Integer.class);
	}

	// 총학점
	public int getCreditSum() {
		String sqlStatement = "select sum(credit) from taked_class";
		return jdbcTemplateObject.queryForObject(sqlStatement, Integer.class);
	}

	// 수강신청 조회
	public List<Classes> getClasses() {
		String sqlStatement = "select * from sign_up_class";

		return jdbcTemplateObject.query(sqlStatement, new ClassMapper());
	}

	// 학년/학기별 이수 총 학점의 상세보기
	public List<Classes> getClasses(int year, int semester) {
		String sqlStatement = "select * from taked_class where year=? and semester=?";

		return jdbcTemplateObject.query(sqlStatement, new Object[] { year, semester }, new ClassMapper());
	}

	// 수강신청
	public boolean insert(Classes classes) {
		String class_id = classes.getClassId();
		int year = classes.getYear();
		int semester = classes.getSemester();
		String class_name = classes.getClassName();
		String division = classes.getDivision();
		int credit = classes.getCredit();

		String sqlStatement = "insert into sign_up_class values(?,?,?,?,?,?)";
		return (jdbcTemplateObject.update(sqlStatement,
				new Object[] { class_id, year, semester, class_name, division, credit }) == 1);
	}
}
