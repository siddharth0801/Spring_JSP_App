package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.EmployeeRepo;
import com.example.demo.model.Employee;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeRepo repo;

	@RequestMapping(path = "/employees")
	public ModelAndView employee() {

		List<Employee> emp = repo.findAll();

		ModelAndView mv = new ModelAndView();

		mv.addObject("employees", emp);
		mv.setViewName("employee.jsp");

//		return "employee.jsp";
		return mv;
	}

	@RequestMapping(path = "/addEmployee")
	public ModelAndView addEmployee(Employee e) {
		
		repo.save(e);
		List<Employee> emp = repo.findAll();

		ModelAndView mv = new ModelAndView();

		mv.addObject("employees", emp);
		mv.setViewName("employee.jsp");
		return mv;
	}

	@RequestMapping(path = "/deleteEmployee")
	public ModelAndView DeleteEmployee(Integer Id) {
		
		if(repo.existsById(Id)) {
			repo.deleteById(Id);
		}
		List<Employee> emp = repo.findAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("employees", emp);
		mv.setViewName("employee.jsp");
		return mv;
	}
}
