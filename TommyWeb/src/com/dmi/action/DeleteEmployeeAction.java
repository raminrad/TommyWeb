package com.dmi.action;

import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;

import com.dmi.tommy.Employee;
import com.dmi.tommy.EmployeeService;

public class DeleteEmployeeAction {
	Logger logger = Logger.getLogger(DeleteEmployeeAction.class.getName());
	
	private int employeeId;
	
	@Autowired
	private EmployeeService employeeService;
	
	public String execute() throws Exception {
		logger.info("Deleting employeeId " + employeeId);
		Employee employee = employeeService.getEmployeeById(employeeId);
		if (employee == null) {
			logger.severe("no employee matched employee ID " + employeeId);
		}
		else {
			employeeService.deleteEmployee(employeeService.getEmployeeById(employeeId));			
		}
		return "success";
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

}
