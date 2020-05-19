package com.mockProject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

import org.springframework.stereotype.Component;
@Component
@Entity
public class Participant {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column (name = "ID",columnDefinition = "int")
	private int Id;
	
	@NotNull
	@Column (name = "FULL_NAME",columnDefinition = "nchar(30)")
	private String fullName;
	
	@NotNull
	@ManyToOne
	private School schools;
	
	@Column (name = "CONTENT",columnDefinition = "nchar(20)")
	private String content;
	
	@Column (name = "HAVELEARNED",columnDefinition = "nchar(10)")
	private String haveLearned;
	
	@Column (name = "OBJECT",columnDefinition = "nchar(10)")
	private String object;
	
	@NotNull
	@ManyToOne
	private Classes classes;
	
	@Column (name = "YEAR",columnDefinition = "nchar(4)")
	private String year;
	
	@Column (name = "MARK",columnDefinition = "float")
	private Float mark;

	public Participant(int id, String fullName, School schools, String content, String haveLearned, String object,
			Classes classes, String year, Float mark) {
		super();
		Id = id;
		this.fullName = fullName;
		this.schools = schools;
		this.content = content;
		this.haveLearned = haveLearned;
		this.object = object;
		this.classes = classes;
		this.year = year;
		this.mark = mark;
	}

	public Participant(String fullName, School schools, String content, String haveLearned, String object,
			Classes classes, String year, Float mark) {
		super();
		this.fullName = fullName;
		this.schools = schools;
		this.content = content;
		this.haveLearned = haveLearned;
		this.object = object;
		this.classes = classes;
		this.year = year;
		this.mark = mark;
	}




	public Participant() {
		super();
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public School getSchools() {
		return schools;
	}

	public void setSchools(School schools) {
		this.schools = schools;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getHaveLearned() {
		return haveLearned;
	}

	public void setHaveLearned(String haveLearned) {
		this.haveLearned = haveLearned;
	}

	public String getObject() {
		return object;
	}

	public void setObject(String object) {
		this.object = object;
	}

	public Classes getClasses() {
		return classes;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public Float getMark() {
		return mark;
	}

	public void setMark(Float mark) {
		this.mark = mark;
	}


	@Override
	public String toString() {
		return "Participant{" + 
				"fullName = '" + fullName + "\'," +
				"schools = '" + schools + "\'," +
				"content = '" + content + "\'," +
				"haveLearned = '" + haveLearned + "\'," +
				"object = '" + object + "\'," +
				"classes = '" + classes + "\'," +
				"year = '" + year + "\'," +
				"mark = " + mark +
				"}";
	}


	
	

	
}
