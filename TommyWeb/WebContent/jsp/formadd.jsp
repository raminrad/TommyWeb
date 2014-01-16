<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<s:actionerror/>

Supervisor: ${boss.firstname} ${boss.lastname}
<p>

<s:form id="newEmployeeForm">
	<input type="hidden" name="bossId" id="bossId" value="${boss.employeeId}" />
	<s:textfield label="First Name" name="firstname" id="firstname" class="text ui-widget-content ui-corner-all"/></td>
	<s:textfield label="Last Name" name="lastname" id="lastname" class="text ui-widget-content ui-corner-all"/></td>
	<s:textfield label="Title" name="title" id="title" class="text ui-widget-content ui-corner-all"/></td>
</s:form>
<p>
<button id="addEmployeeButton">Add Employee</button>

<script type="text/javascript" src="js/addEmployee.js"></script>
