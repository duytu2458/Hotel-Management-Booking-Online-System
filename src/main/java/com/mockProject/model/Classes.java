package com.mockProject.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Classes {

	@Id
	@Column(name = "CLASS_CODE", nullable = false, columnDefinition = "nchar(3)")
	private String classCode;

	@Column(name = "CLASS_NAME", nullable = false, columnDefinition = "nchar(10)")
	private String className;

	@ManyToOne
	private School school;

	@OneToMany(mappedBy = "classes", cascade = CascadeType.ALL)
	List<Participant> listParticipants = new ArrayList<Participant>();

	public Classes(String classCode, String className, School school) {
		super();
		this.classCode = classCode;
		this.className = className;
		this.school = school;
	}

	public Classes(String classCode, String className) {
		super();
		this.classCode = classCode;
		this.className = className;
	}
	

	public Classes(String classCode) {
		super();
		this.classCode = classCode;
	}
	
	public Classes() {
		super();
	}
	
	@Override
	public String toString() {
		return "Classes {" +
				"classCode = '" + classCode + "\'," +
				"className = '" + className + "\'," +
//				"school = '" + school + "\'" +
				"}";
	}

	public List<Participant> getListParticipants() {
		return listParticipants;
	}

	public void setListParticipants(List<Participant> listParticipants) {
		this.listParticipants = listParticipants;
	}

	public String getClassCode() {
		return classCode;
	}

	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public School getSchool() {
		return school;
	}

	public void setSchool(School school) {
		this.school = school;
	}

}
