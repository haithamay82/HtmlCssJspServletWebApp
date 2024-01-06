<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>

<link rel="stylesheet"
 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"	
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
.p1 {
  color: yellow;
  font-family: courier;
  font-size: 20px;
  font-weight: bold;
}
.p2 {
  color: red;
  font-family: courier;
  font-size: 20px;
  font-weight: bold;
}
marquee{
  border-style: solid;
  behavior: scroll; 
  scrollamount: 20;
  direction: left;
}
</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #0e9aa7 ">
			<div>
				<a onclick="return confirm('back to main screen?')" 
				href="http://localhost:8080/todo_app/index/index.jsp" class="navbar-brand"> Todo App</a>
			</div>
			<div style='width: 20%;'>
			<ul class="navbar-nav navbar-collapse">
				<li style="float: right;"><a href="<%=request.getContextPath()%>/list" class="nav-link">Todos</a></li>
			</ul>
			</div>
			<div>
				<ul class="navbar-nav navbar-collapse">		
				<li><p class="p1">hello:</p></li>
				<li><p class="text-uppercase p2"><%=session.getAttribute("user")%></p></li>
				<li><p class="p1">,have a nice day</p></li>
				</ul>
			</div>
			<ul class="navbar-nav navbar-collapse justify-content-end">
				<li><a href="<%=request.getContextPath()%>/logout"
					class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${todo != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${todo == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${todo != null}">
            			Edit Todo
            		</c:if>
						<c:if test="${todo == null}">
            			Add New Todo
            		</c:if>
					</h2>
				</caption>

				<c:if test="${todo != null}">
					<input type="hidden" name="id" value="<c:out value='${todo.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Todo Title</label> <input type="text"
						value="<c:out value='${todo.title}' />" class="form-control"
						name="title" required="required" minlength="5">
				</fieldset>

				<fieldset class="form-group">
					<label>Todo Decription</label> <input type="text"
						value="<c:out value='${todo.description}' />" class="form-control"
						name="description" required="required" minlength="5">
				</fieldset>

				<fieldset class="form-group">
					<label>Todo Status</label>
					<caption>
					<select class="form-control" name="isDone">
						<c:if test="${todo.status==false}">
            			<option value="false" selected="selected">In Progress</option>
						<option value="true">Complete</option>
            		</c:if>
						<c:if test="${todo.status==true}">
            			<option value="false">In Progress</option>
						<option value="true" selected="selected">Complete</option>
            		</c:if>
						<c:if test="${todo==null}">
            			<option value="false">In Progress</option>
						<option value="true">Complete</option>
            		</c:if>
					</select>
					</caption>				
				</fieldset>

				<fieldset class="form-group">
					<label>Todo Target Date</label> <input type="date"
						value="<c:out value='${todo.targetDate}' />" class="form-control"
						name="targetDate" required="required">
				</fieldset>
				<button style="float: right;" type="reset" class="btn btn-warning" value="Reset">Reset</button>
				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
			<marquee>
			<img src="https://www.shutterstock.com/image-vector/business-woman-check-sheet-260nw-1526857844.jpg" width="125" height="150" alt="todo">
			<img src="https://i.imgur.com/PDNu8vl.gif" width="125" height="125" alt="todo">
			</marquee>
	</div>

	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>
