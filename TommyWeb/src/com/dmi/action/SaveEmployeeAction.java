package com.dmi.action;

import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;

import com.dmi.tommy.Employee;
import com.dmi.tommy.EmployeeService;
import com.opensymphony.xwork2.ActionSupport;

public class SaveEmployeeAction extends ActionSupport {
	Logger logger = Logger.getLogger(SaveEmployeeAction.class.getName());
	
	private Integer bossId;
	private String firstname;
	private String lastname;
	private String title;
		
	@Autowired
	private EmployeeService employeeService;
	
	
	public String execute() throws Exception {
		Employee employee = new Employee();
		employee.setFirstname(firstname);
		employee.setLastname(lastname);
		employee.setTitle(title);
		if (bossId != null && bossId.intValue() > 0) {
			employee.setBoss(employeeService.getEmployeeById(bossId));			
		}
		logger.info("Saving employee: " + employee);		
		employeeService.addEmployee(employee);
		return "success";
	}

	public void validate() {
		clearFieldErrors();
		if (firstname == null || firstname.isEmpty()) {
			addFieldError("firstname", "Firstname is required.");
		}
		if (lastname == null || lastname.isEmpty()) {
			addFieldError("lastname", "Lastname is required.");
		}
		if (title == null || title.isEmpty()) {
			addFieldError("title", "Title is required.");
		}
	}


	public Integer getBossId() {
		return bossId;
	}

	public void setBossId(Integer bossId) {
		this.bossId = bossId;
	}


	public String getFirstname() {
		return firstname;
	}


	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}


	public String getLastname() {
		return lastname;
	}


	public void setLastname(String lastname) {
		this.lastname = lastname;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}

}
