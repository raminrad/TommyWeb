<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<sql:query var="rs" dataSource="jdbc/employeedb">
SELECT id,firstname, lastname,title,id_boss FROM employee
</sql:query>

<html>
  <head>
    <title>DB Test</title>
  </head>
  <body>

  <h2>Results</h2>
  
<c:forEach var="row" items="${rs.rows}">
    id ${row.id}<br/>
    firstname ${row.firstname}<br/>
    lastname ${row.lastname}<br/>
</c:forEach>

  </body>
</html>
