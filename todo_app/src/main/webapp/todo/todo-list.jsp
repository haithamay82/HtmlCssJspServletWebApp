<%@ page language="java" contentType="text/html; charset=UTF-8" session="true"
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
th{
background-color: coral;
}
tr:hover {
background-color: #ffc425;
}
</style>
</head>

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

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Todos</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new"
					class="btn btn-success">Add Todo</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Title</th>
						<th>Description</th>					
						<th>Target Date</th>
						<th>Todo Status</th>
						<th>Todo By User</th>					
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="todo" items="${listTodo}">

						<tr>
							<td><c:out value="${todo.title}" /></td>
							<td><c:out value="${todo.description}" /></td>						
							<td><c:out value="${todo.targetDate}" /></td>
							<td><c:out value="${todo.status}" /></td>
							<td><c:out value="${todo.username}" /></td>

							<td><a href="edit?id=<c:out value='${todo.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="delete?id=<c:out value='${todo.id}' />">Delete</a>
							</td>

							<!--  <td><button (click)="updateTodo(todo.id)" class="btn btn-success">Update</button>
          							<button (click)="deleteTodo(todo.id)" class="btn btn-warning">Delete</button></td> -->
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
			<iframe style="margin-left:25%; margin-top:10%;" width="560" height="315" src="https://www.youtube.com/embed/m9-kM-guQtk?start=0&end=47" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
		</div>		
	</div>

	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>
