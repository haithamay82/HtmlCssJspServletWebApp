<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- 	<script type="text/javascript" src="/todo_app/js/jsRegister.js"></script> -->	
	<script type="text/javascript">
    function formValidation()
    {
        var firstName = document.registration.firstName;
        var lastName = document.registration.lastName;
        var username = document.registration.username;
        var gender="";
        if(document.getElementById('male').checked)
        	gender="M";
        if(document.getElementById('female').checked)
        	gender="F";
        var email = document.registration.email;
        var password = document.registration.password;

        if(allLetter(firstName))
        {
            if(allLetter(lastName))
            {
                if(alphanumeric(username))
                {
                    if(validsex(gender))
                    {
                        if(ValidateEmail(email))
                        {
                            if(passid_validation(password,5,12))
                            {
                            	return confirm('are you sure, all data is ok?');
                            	//return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    } 
    
    function userid_validation(uid,mx,my)
    {
        var uid_len = uid.value.length;
        if (uid_len == 0 || uid_len >= my || uid_len < mx)
        {
            alert("User Id should not be empty / length be between "+mx+" to "+my);
            uid.focus();
            return false;
        }
        return true;
    }

    function passid_validation(passid,mx,my)
    {
        var passid_len = passid.value.length;
        if (passid_len == 0 ||passid_len >= my || passid_len < mx)
        {
            alert("Password should not be empty / length be between "+mx+" to "+my);
            passid.focus();
            return false;
        }
        return true;
    }

    function allLetter(uname)
    {
        var letters = /^[A-Za-z]+$/;
        if(uname.value.match(letters))
        {
            return true;
        }
        else
        {
            alert('FirstName/LastName must have alphabet characters only');
            uname.focus();
            return false;
        }
    }

    function alphanumeric(uadd)
    {
        var letters = /^[0-9a-zA-Z]+$/;
        if(uadd.value.match(letters))
        {
            return true;
        }
        else
        {
            alert('UserName must have alphanumeric characters only');
            uadd.focus();
            return false;
        }
    }
    function countryselect(ucountry)
    {
        if(ucountry.value == "Default")
        {
            alert('Select your country from the list');
            ucountry.focus();
            return false;
        }
        else
        {
            return true;
        }
    }
    function allnumeric(uzip)
    {
        var numbers = /^[0-9]+$/;
        if(uzip.value.match(numbers))
        {
            return true;
        }
        else
        {
            alert('ZIP code must have numeric characters only');
            uzip.focus();
            return false;
        }
    }
    function ValidateEmail(uemail)
    {
        var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if(uemail.value.match(mailformat))
        {
            return true;
        }
        else
        {
            alert("You have entered an invalid email address!");
            uemail.focus();
            return false;
        }
    } 
    function validsex(umsexs)
    {
	    if(umsexs=="M" || umsex=="F")
	    {
	       return true;
	    } 
	    else
	    {
            alert('Select Male/Female');
            umsexs.focus();
            return false;
        }
    }
	
	function myFunction() {
		  let text = "Are you sure!\nAll data is ok?";
		  if (confirm(text) == true) {
		    text = "You pressed OK!";
		  } else {
			text = "You canceled!";
	  	  }		 
	}
	</script>
	
</head>

</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="container">

	<h2>User Register Form</h2>
	<div class="col-md-8 col-md-offset-3" style="overflow: auto">
			<div class="alert alert-success center" role="alert">
				<p>${NOTIFICATION}</p>
			</div>
				<form name="registration" action="<%=request.getContextPath()%>/register" method="post" >

					<div class="form-group">
						<label for="uname">First Name:</label> <input type="text"
							class="form-control" id="fname" placeholder="First Name"
							name="firstName" required>
					</div>

					<div class="form-group">
						<label for="uname">Last Name:</label> <input type="text"
							class="form-control" id="lname" placeholder="last Name"
							name="lastName" required>
					</div>

					<div class="form-group">
						<label for="uname">User Name:</label> <input type="text"
							class="form-control" id="username" placeholder="User Name"
							name="username" required>
					</div>

					<div class="form-group">					 
					 <label for="uname">Gender:</label>
					 <ul>
					 <li><input type="radio" id="male" name="gender" value="M" required>
					 	<label for="uname">Male:</label>
					 </li>
					 <li><input type="radio" id="female" name="gender" value="F" required>
					 	<label for="uname">Female:</label>
					 </li>
					</ul>
					</div>
					
					<div class="form-group">
						<label for="uname">Email:</label> <input type="text"
							class="form-control" id="email" placeholder="Email"
							name="email" required>
					</div>
					
					<div class="form-group">
						<label for="uname">Password:</label> <input type="password"
							class="form-control" id="password" placeholder="Password"
							name="password" required>
					</div>
<!-- onclick="return confirm('Are you sure?')"  -->
				    <button style="float: right;" type="reset" class="btn btn-warning" value="Reset">Reset</button>
					<button type="submit" onclick="return formValidation();" class="btn btn-primary">Submit</button>

				</form>
			</div>
		</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>