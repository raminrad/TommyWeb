package com.dmi.action;

import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;

import com.dmi.tommy.Employee;
import com.dmi.tommy.EmployeeService;

public class ShowAllAction {
	Logger logger = Logger.getLogger(ShowAllAction.class.getName());
	
	private Employee employee;
	
	@Autowired
	private EmployeeService employeeService;
	
	public String execute() throws Exception {
		logger.info("Showing all employees");
		setEmployee(employeeService.getEmployeeRoot());
		return "success";
	}

	public Employee getEmployee() {
		return employee;
	}
	
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
}
