package com.dmi.action;

import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;

import com.dmi.tommy.Employee;
import com.dmi.tommy.EmployeeService;

public class AddEmployeeAction {
	Logger logger = Logger.getLogger(AddEmployeeAction.class.getName());

	private Integer bossId;
	private Employee boss;
	
	@Autowired
	private EmployeeService employeeService;
	
	public String execute() throws Exception {
		logger.info("Adding an employee... getting boss for boss Id: " + bossId);

		if (bossId != null && bossId.intValue() > 0) {
			// get Boss
			setBoss(employeeService.getEmployeeById(bossId));
		}
		else {
			setBoss(null);
		}
		
		return "success";
	}

	public Integer getBossId() {
		return bossId;
	}

	public void setBossId(Integer bossId) {
		this.bossId = bossId;
	}

	public Employee getBoss() {
		return boss;
	}

	public void setBoss(Employee boss) {
		this.boss = boss;
	}

}
