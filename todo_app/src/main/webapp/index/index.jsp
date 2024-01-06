<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html dir="rtl" lang="he">
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
body {
  background-image: url("https://coolbackgrounds.io/images/backgrounds/index/compute-ea4c57a4.png");
  height: 100vh;
  display: flex; 
  justify-content: center; 
  align-items: center;             
}

.p1 {
  color: rgb(0, 255, 64);
  font-family: courier;
  font-size: 40px;
  font-weight: bold;
}

.p2 {
  color: white;
  font-family: courier;
  font-size: 30px;
  background-color: #001755;
}

.p3 {
  color: tomato;
  font-family: courier;
  font-size: 40px;
  font-weight: bold;
}

.box {
  border-style: double;
  border-width: 10px;
  border-radius: 20px;
  text-align: center;
}
marquee{
  font-size: 30px;
  font-weight: 800;
  color: #8ebf42;
  font-family: sans-serif;
}

/* this css only for the button in the bottom */
.btntext {
  color: white;
  font-family: courier;
  font-size: 17px;
  font-weight: bold;
}
.glow-on-hover {
    width: 220px;
    height: 50px;
    border: none;
    outline: none;
    color: #fff;
    background: #111;
    cursor: pointer;
    position: relative;
    z-index: 0;
    border-radius: 10px;
}

.glow-on-hover:before {
    content: '';
    background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5, #002bff, #7a00ff, #ff00c8, #ff0000);
    position: absolute;
    top: -2px;
    left:-2px;
    background-size: 400%;
    z-index: -1;
    filter: blur(5px);
    width: calc(100% + 4px);
    height: calc(100% + 4px);
    animation: glowing 20s linear infinite;
    opacity: 0;
    transition: opacity .3s ease-in-out;
    border-radius: 10px;
}

.glow-on-hover:active {
    color: #000
}

.glow-on-hover:active:after {
    background: transparent;
}

.glow-on-hover:hover:before {
    opacity: 1;
}

.glow-on-hover:after {
    z-index: -1;
    content: '';
    position: absolute;
    width: 100%;
    height: 100%;
    background: #111;
    left: 0;
    top: 0;
    border-radius: 10px;
}

@keyframes glowing {
    0% { background-position: 0 0; }
    50% { background-position: 400% 0; }
    100% { background-position: 0 0; }
}
</style>
</head>
<body>
<ul>
<li>
<marquee width="100%" direction="right" height="50px" scrollamount="7">
מערכת מידע לניהול משימות אישיות
אפשר להוסיף, לערוך, למחוק משימות... 
</marquee>
</li>
<li>
<div class="box">
<img src="https://www.careeraddict.com/uploads/article/58763/illustration-man-laptop-screen.png"
	width="400px"></img>

	<p class="p1">Todo Application</p>	
	<p class="p2">מערכת לניהול משימות אישיות</p>
	<p class="p2">פותחה ע"י היתם אבו יוסף</p>
	<p class="p2">מורה מדעי מחשב והנדסת תוכנה</p>
	<p class="p2">ב"ס מקיף אחווה ירכא</p>
	<p class="p2">2023 - 2024</p>
	
	<p class="p3">ברוכים הבאים למערכת המידע שלי</p>

	<form action="http://localhost:8080/todo_app/login/login.jsp">
	<button class="glow-on-hover btntext" type="button" onclick="window.location.href ='http://localhost:8080/todo_app/login/login.jsp';">לחץ לכניסה למערכת</button>
	</form>
	<!-- <div>
   		 <a href="http://localhost:8080/todo_app/login/login.jsp" class="btn btn-white btn-animate">click me</a>
	</div> -->
	<!-- <form action="http://localhost:8080/todo_app/login/login.jsp">
    	<input type="submit" value="לחץ לכניסה למערכת" style="height:50px; width:300px; font-size: 30px; background-color:#00B931;" />
	</form> -->
</div>
</li>
</ul>
</body>
</html>

	
