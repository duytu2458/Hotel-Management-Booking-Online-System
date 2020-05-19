package com.mockProject.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.type.AdaptedImmutableType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.mockProject.model.Classes;
import com.mockProject.model.Participant;
import com.mockProject.model.School;
import com.mockProject.repositories.ParticipantRepository;

@Service
public class ParticipantService {
	
	@Autowired
	ParticipantRepository participantRepository;
	
	@Autowired
	Participant participant;

	public List<School> getDataTableSchool() {

		return participantRepository.getDataTableSchool();
	}

	public List<Classes> getDataTableClass(String id) {

		return participantRepository.getDataTableClass(id);
	}

	public void getCreateObjectParticipant(String objJSON) {
		System.out.println("=============");
		Gson gson = new Gson();
		String[] strParticipant = objJSON.split(";");
		for (String string : strParticipant) {
			string = string.replaceAll("\"\\{", "{");
			string = string.replaceAll("\\}\"", "}");
			Participant participant = gson.fromJson(string, Participant.class);
			
		}
		
	}

	public String getAdd(String objJSON) {
		System.out.println("=============");
		
		String message = "";
		
		if ("".equals(objJSON)) {
			return "Vui lòng nhập dữ liệu các trường bắt buộc (*) !!!";
		}
		
		List<Participant> listParticipants = new ArrayList<Participant>();
		Gson gson = new Gson();
		String[] strParticipant = objJSON.split(";");
		try {
			for (String string : strParticipant) {
				string = string.replaceAll("\"\\{", "{").replaceAll("\\}\"", "}");
				participant = gson.fromJson(string, Participant.class);
				listParticipants.add(participant);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
//		for (Participant participant : listParticipants) {
//			System.out.println(participant.getFullName());
//			System.out.println(participant.getSchools().getSchoolCode());
//			System.out.println(participant.getHaveLearned());
//			System.out.println(participant.getContent());
//			System.out.println(participant.getObject());
//			System.out.println(participant.getClasses().getClassCode());
//			System.out.println(participant.getYear());
//			System.out.println(participant.getMark());
//			break;
//		}
		//message = participantRepository.getAdd(listParticipants);
		return message;
	}

	public List<Participant> getDataTableParticipants() {

		return participantRepository.getDataTableParticipants();
	}

	
	
	
	

}
