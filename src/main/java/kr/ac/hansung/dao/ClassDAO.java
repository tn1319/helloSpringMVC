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

	// �̼� ���к� ��������
	public int getCreditSum(String semester) {
		String sqlStatement = "select sum(credit) from taked_class where semester=?";
		return jdbcTemplateObject.queryForObject(sqlStatement, new Object[]{semester}, Integer.class);
	}

	// �г�/�б⺰ ��������
	public int getCreditSum(int year, int semester) {
		String sqlStatement = "select sum(credit) from taked_class where year=? and semester=? ";
		return jdbcTemplateObject.queryForObject(sqlStatement, new Object[] { year, semester }, Integer.class);
	}

	// ������
	public int getCreditSum() {
		String sqlStatement = "select sum(credit) from taked_class";
		return jdbcTemplateObject.queryForObject(sqlStatement, Integer.class);
	}

	// ������û ��ȸ
	public List<Classes> getClasses() {
		String sqlStatement = "select * from sign_up_class";

		return jdbcTemplateObject.query(sqlStatement, new ClassMapper());
	}

	// �г�/�б⺰ �̼� �� ������ �󼼺���
	public List<Classes> getClasses(int year, int semester) {
		String sqlStatement = "select * from taked_class where year=? and semester=?";

		return jdbcTemplateObject.query(sqlStatement, new Object[] { year, semester }, new ClassMapper());
	}

	// ������û
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
