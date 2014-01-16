<%@ attribute name="emp" required="true" type="com.dmi.tommy.Employee"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>

<c:choose>
  <c:when test="${!empty emp}">
	<li>
	<div class="employeeBox">
		<div id="name">${emp.firstname} ${emp.lastname}</div>
		<div id="position">${emp.title}</div>
		<div id="add" class="addElement">
			<span id="empId" class="hidden">${emp.employeeId}</span>
			<a href="#">Add</a>
		</div>
		<div id="delete" class="deleteElement">
			<span id="empId" class="hidden">${emp.employeeId}</span><span
				id="empName" class="hidden">${emp.firstname}
				${emp.lastname}</span><a href="#">Del</a>
		</div>
	</div>
	<c:if test="${!empty emp.staff}">
		<ul class="tree">
			<c:forEach items="${emp.staff}" var="child">
				<t:tree emp="${child}"/>
			</c:forEach>
		</ul>
	</c:if>
	</li>
  </c:when>
  <c:otherwise>
  	<div id="add" class="addElement">
  		Nothing to show.
		<span id="empId" class="hidden"></span>
		<a href="#">Add Root Employee</a>
	</div>
  </c:otherwise>
</c:choose>

