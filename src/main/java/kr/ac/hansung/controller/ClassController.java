package kr.ac.hansung.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.hansung.model.Classes;
import kr.ac.hansung.service.ClassesService;

@Controller
public class ClassController {
	
	private ClassesService classesService;
	
	@Autowired
	public void setClassesService(ClassesService classesService) {
		this.classesService = classesService;
	}

	@RequestMapping("/referSemesterCredit")
	public String semesterCredit(Model model){
		
		int credit=classesService.getCreditSum(2014,1);
		
		model.addAttribute("referclasses20141",credit);
		
		credit=classesService.getCreditSum(2014,2);
		model.addAttribute("referclasses20142",credit);
		
		credit=classesService.getCreditSum(2015,1);
		model.addAttribute("referclasses20151",credit);
		
		credit=classesService.getCreditSum(2015,2);
		model.addAttribute("referclasses20152",credit);
		
		credit=classesService.getCreditSum(2016,1);
		model.addAttribute("referclasses20161",credit);
		
		return "referSemesterCredit";
	}
	
	@RequestMapping("/referDivisionCredit")
	public String divisionCredit(Model model){
		int credit=classesService.getCreditSum("교필");
		
		model.addAttribute("gp",credit);
		
		credit=classesService.getCreditSum("핵교A");
		model.addAttribute("hA",credit);
		
		credit=classesService.getCreditSum("핵교B");
		model.addAttribute("hB",credit);

		credit=classesService.getCreditSum("일교");
		model.addAttribute("ig",credit);
		
		credit=classesService.getCreditSum("전지");
		model.addAttribute("jj",credit);
		
		credit=classesService.getCreditSum("전기");
		model.addAttribute("jg",credit);
		
		credit=classesService.getCreditSum("전선");
		model.addAttribute("js",credit);

		credit=classesService.getCreditSum();
		model.addAttribute("all",credit);
		return "referDivisionCredit";
	}
	
	@RequestMapping("/signUp")
	public String signUp(Model model){
		
		return "signUp";
	}
	
	@RequestMapping("/inquiryClass")
	public String inquiryClass(Model model){
		List<Classes> classes=classesService.getClasses();
		model.addAttribute("inquiryClass",classes);
		
		
		return "inquiryClass";
	}
	
	@RequestMapping("/detail20141")
	public String detail20141(Model model){
		List<Classes> classes=classesService.getClasses(2014, 1);
		model.addAttribute("detail20141",classes);
		
		return "detail20141";
	}
	
	@RequestMapping("/detail20142")
	public String detail20142(Model model){
		List<Classes> classes=classesService.getClasses(2014, 2);
		model.addAttribute("detail20142",classes);
		
		return "detail20142";
	}
	
	@RequestMapping("/detail20151")
	public String detail20151(Model model){
		List<Classes> classes=classesService.getClasses(2015, 1);
		model.addAttribute("detail20151",classes);
		
		return "detail20151";
	}
	
	@RequestMapping("/detail20152")
	public String detail20152(Model model){
		List<Classes> classes=classesService.getClasses(2015, 2);
		model.addAttribute("detail20152",classes);
		
		return "detail20152";
	}
	
	@RequestMapping("/detail20161")
	public String detail20161(Model model){
		List<Classes> classes=classesService.getClasses(2016, 1);
		model.addAttribute("detail20161",classes);
		
		return "detail20161";
	}
	
	@RequestMapping("/signedup")
	public String doCreate(Model model, Classes classes){
		
		classesService.insert(classes);
		return "signedup";
	}
}
