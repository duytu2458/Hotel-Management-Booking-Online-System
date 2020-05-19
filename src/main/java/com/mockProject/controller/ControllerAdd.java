package com.mockProject.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.mockProject.model.Classes;
import com.mockProject.model.Participant;
import com.mockProject.model.School;
import com.mockProject.service.ParticipantService;


@Controller
public class ControllerAdd {
	
	@Autowired
	ParticipantService participantService;
	
	@RequestMapping(value = "/ScreenAdd")
	public String showScreenAdd(Model model) {		
		List<School> listSchools = participantService.getDataTableSchool();
		model.addAttribute("listSchools",listSchools);
		System.out.println("++++++++++++++++++++++++++++++++");
		return "/jspAdd/AUTB032-Add";
	}
	
	@ResponseBody
	@RequestMapping(value = "getClassNameFormPopup")
	public String getClassNameFromPopup(@RequestParam("id") String id, Model model) {
		
		if (id != null) {
			List<Classes> listClasses = participantService.getDataTableClass(id);
			Gson gson = new Gson();
//			String jsonString = gson.toJson(listClasses);
//			System.out.println(jsonString);
			
			List<Classes> list = new ArrayList<Classes>();
			for (Classes classes : listClasses) {
				//School school = new School(classes.getSchool().getSchoolCode(),classes.getSchool().getSchoolName().trim());
				Classes classes2 = new Classes(classes.getClassCode(),classes.getClassName().trim());
				list.add(classes2);
			}			
			String jsonString = gson.toJson(list);
			System.out.println(jsonString);
			return jsonString;
		}
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value = "getAdd")
	public String getAdd(@RequestParam("objJSON") String objJSON, Model model) {
		String message = participantService.getAdd(objJSON);
		return message;	
	}	
	
//		return "redirect:/ScreenAdd";

	
	@RequestMapping(value = "ScreenSearch")
	public String getScreenSearch(Model model) {
		System.out.println("================CHUYEN MAN HINH SEARCH==================");
		return "/jspSearchList/AUTB032-SearchList";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "getSearch")
	public List<Participant> getSearch(@RequestParam("fullName") String fullName, Model model) {
		System.out.println(">>>>>>>>>>>>>>>]]]]]]]]]]");
		System.out.println(fullName);
		
		List<Participant> listParticipants = participantService.getDataTableParticipants();
		model.addAttribute("listParticipants",listParticipants);
		System.out.println(listParticipants.size());

		System.out.println(">>>>>>>>>>>>><<<<<<<<<<<<<<");
		return listParticipants;
	}
	
	
	
	
	
	
	
	
	

}
