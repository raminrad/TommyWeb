<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<ul class="tree">
<t:tree emp="${employee}"/>
</ul>


<div id="dialog-form" title="Add new employee">
</div>

<div id="dialog-delete" align="center" title="Delete Employee">
	<div id="dialog-deleteMsg"></div>
	<p>
	<button id="confirmDeleteButton">Yes, Delete!</button> <button id="cancelDeleteButton">No, Keep it!</button>
</div>

<script type="text/javascript" src="js/employeeTree.js"></script>
