<header>
<script>
function displayDate() {
  document.getElementById("date").innerHTML = Date();
  document.getElementById("btnDate").style.visibility = "hidden";
}
</script>
	<nav class="navbar navbar-expand-md navbar-dark"
		style="background-color: #851e3e ">
		<div>
			<a href="http://localhost:8080/todo_app/index/index.jsp" class="navbar-brand"> Todo App</a>
		</div>

		<ul class="navbar-nav navbar-collapse justify-content-end">
			<li><button id="btnDate" onclick="displayDate()">what time now?</button></li>
			<li><p id="date" style="color:white;"></p></li>
		</ul>
		<ul class="navbar-nav navbar-collapse justify-content-end">
			<li><a href="<%= request.getContextPath() %>/login" class="nav-link">Login</a></li>
			<li><a href="<%= request.getContextPath() %>/register" class="nav-link">Signup</a></li>
		</ul>
		
	</nav>
</header>