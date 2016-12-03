package kr.ac.hansung.model;

public class Classes {
	private String classId;
	private int year;
	private int semester ;
	private String className;
	private String division;
	private int credit;
	
	public Classes(){
		
	}
	
	public Classes(String classId, int year, int semester, String className, String division, int credit){
		this.classId=classId;
		this.year=year;
		this.semester=semester;
		this.className=className;
		this.division=division;
		this.credit=credit;
	}
	
	
	
	public String getClassId() {
		return classId;
	}

	public void setClassId(String classId) {
		this.classId = classId;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getSemester() {
		return semester;
	}

	public void setSemester(int semester) {
		this.semester = semester;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public int getCredit() {
		return credit;
	}

	public void setCredit(int credit) {
		this.credit = credit;
	}

	public String toString(){
		return "Taked Class {classId = " + classId + ", year = " + year + ", semester = " + semester + ", className = " + className + ", division = " + division + ", credit = " + credit + "}";
	}
}
