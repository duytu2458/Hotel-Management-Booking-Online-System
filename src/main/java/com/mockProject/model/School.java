package com.mockProject.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.stereotype.Component;

@Component
@Entity
public class School {

	@Id
	@Column(name = "SCHOOL_CODE", columnDefinition = "nchar(3)")
	private String schoolCode;

	@Column(name = "SCHOOL_NAME", columnDefinition = "nchar(40)")
	private String schoolName;

	@OneToMany(mappedBy = "school", cascade = CascadeType.ALL)
	List<Classes> listClasses = new ArrayList<Classes>();

	@OneToMany(mappedBy = "schools", cascade = CascadeType.ALL)
	List<Participant> listParticipants = new ArrayList<Participant>();

	public School(String schoolCode, String schoolName) {
		super();
		this.schoolCode = schoolCode;
		this.schoolName = schoolName;
	}

	public School(String schoolCode) {
		super();
		this.schoolCode = schoolCode;
	}

	public School() {
		super();
	}
	
	@Override
	public String toString() {
		return "School{" +
				"schoolCode = '" + schoolCode + "\'," +
				"schoolName = '" + schoolName + "\'" +
				"}";
	}


	public List<Classes> getListClasses() {
		return listClasses;
	}

	public void setListClasses(List<Classes> listClasses) {
		this.listClasses = listClasses;
	}

	public List<Participant> getListParticipants() {
		return listParticipants;
	}

	public void setListParticipants(List<Participant> listParticipants) {
		this.listParticipants = listParticipants;
	}

	public String getSchoolCode() {
		return schoolCode;
	}

	public void setSchoolCode(String schoolCode) {
		this.schoolCode = schoolCode;
	}

	public String getSchoolName() {
		return schoolName;
	}

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}

}
