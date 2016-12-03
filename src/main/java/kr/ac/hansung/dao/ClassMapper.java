package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import kr.ac.hansung.model.Classes;

public class ClassMapper implements RowMapper<Classes>{
	
	public Classes mapRow(ResultSet rs, int rowNum) throws SQLException{
		Classes classes=new Classes();
		
		classes.setClassId(rs.getString("class_id"));
		classes.setYear(rs.getInt("year"));
		classes.setSemester(rs.getInt("semester"));
		classes.setClassName(rs.getString("class_name"));
		classes.setDivision(rs.getString("division"));
		classes.setCredit(rs.getInt("credit"));
		return classes;
	}

}
