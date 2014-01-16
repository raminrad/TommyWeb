<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee DB</title>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<link href="css/employee.css" rel="stylesheet" type="text/css">
<link href="css/smoothness/jquery-ui.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="title_box" id="index">
    <div id="title">Employee Database</div>
    <div id="content">
    	Welcome to employee DB browser/editor.
    	
    	<span id="linkShowAll" class="treeLink"><a href="#">Show all</a></span>
    	<span id="linkHideAll" class="treeLink"><a href="#">Hide all</a></span>
    	
    	<div id="employeeTree"></div>
    </div>
</div>


<div id="dialog-error" title="Request Error!"></div>

<script type="text/javascript" src="js/tommy.js"></script>

</body>
</html>

