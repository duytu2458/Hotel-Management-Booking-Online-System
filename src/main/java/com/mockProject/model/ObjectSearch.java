package com.mockProject.model;

import org.springframework.stereotype.Component;

@Component
public class ObjectSearch {
	
	private String fullName;
	private String schoolCode;
	private String classesCode;
	private String year;
	
	public ObjectSearch(String fullName, String schoolCode, String classesCode, String year) {
		super();
		this.fullName = fullName;
		this.schoolCode = schoolCode;
		this.classesCode = classesCode;
		this.year = year;
	}
	public ObjectSearch() {
		super();
	}
	
	@Override
	public String toString() {
		String queryStr = "Select * from Participant where ";
		return super.toString();
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getSchoolCode() {
		return schoolCode;
	}
	public void setSchoolCode(String schoolCode) {
		this.schoolCode = schoolCode;
	}
	public String getClassesCode() {
		return classesCode;
	}
	public void setClassesCode(String classesCode) {
		this.classesCode = classesCode;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	
	
	
	

}
