<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<title>REGISTRATION</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Official Signup Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- fonts -->
<link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- /fonts -->
<!-- css -->
<link href="css_R/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css_R/style.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css -->
<script type="text/javascript">
function checkPass()
{
    //Store the password field objects into variables ...
    var password = document.getElementById('pas1');
    var confirm  = document.getElementById('pas2');
    //Store the Confirmation Message Object ...
    var message = document.getElementById('confirm-message2');
    //Set the colors we will be using ...
    var good_color = "#006400";
    var bad_color  = "#ff6666";
    //Compare the values in the password field 
    //and the confirmation field
    if((password.value.length>7)&&(confirm.value.length>7))
    {
   		 if(password.value == confirm.value)
    	{
        //The passwords match. 
        //Set the color to the good color and inform
        //the user that they have entered the correct password 
        //confirm.style.backgroundColor = good_color;
        message.style.color           = good_color;
        message.innerHTML             = 'Passwords Match!';
        return true;
    	}
    	else
    	{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        //confirm.style.backgroundColor = bad_color;
        message.style.color           = bad_color;
        message.innerHTML             = 'Passwords Does Not Match!';
    	return false;
    	}
}  
}
//Throw Alert
function Validate() {
    var password = document.getElementById("pas1").value;
    var confirmPassword = document.getElementById("pas2").value;
    if (password != confirmPassword) {
        alert("Passwords does not match.");
        return false;
    }
    return true;
}

//Return Integer Only
function validate(evt) {
	  var theEvent = evt || window.event;

	  // Handle paste
	  if (theEvent.type === 'paste') {
	      key = event.clipboardData.getData('text/plain');
	  } else {
	  // Handle key press
	      var key = theEvent.keyCode || theEvent.which;
	      key = String.fromCharCode(key);
	  }
	  var regex = /[0-9]|\./;
	  if( !regex.test(key) ) {
	    theEvent.returnValue = false;
	    if(theEvent.preventDefault) theEvent.preventDefault();
	  }
	};
	
	
</script>
</head>
<body>
<h1 class="w3ls">Enter Required Details</h1>
<div class="content-w3ls">
	<div class="content-agile1">
		<h2 class="agileits1">REGISTRATION FORM</h2>
	</div>
	<div class="content-agile2">
		<form action="Register" method="post" autocomplete="off">
		
			<div class="form-control w3layouts">	
				<select name="role" id="role">
				  <option value="" style="color: black;">Register As : </option>
				  <option value="EMP" style="color: black;font-weight: bold;">EMPLOYEE</option>
				  <option value="QC" style="color: black;font-weight: bold;">QUALITY CHECKER</option>
				  <option value="OP" style="color: black;font-weight: bold;">OPERATOR</option>
				</select>
			</div>
		
			<div class="form-control w3layouts"> 
				<input type="text" id="firstname" name="un" placeholder="Name" title="Please enter your First Name" required="">
			</div>
			
			<div class="form-control w3layouts"> 
				<input type="text" id="firstname" name="ph" placeholder="Mobile Number" title="Please enter your First Name" MAXLENGTH="10" required="" onkeypress='validate(event)'>
			</div>
			
			<div class="form-control w3layouts"> 
				<input type="text" id="firstname" name="ad" placeholder="Address" title="Please enter your First Name" required="">
			</div>

			<div class="form-control w3layouts">	
				<input type="email" id="email" name="em" placeholder="mail@example.com" title="Please enter a valid email" required="">
			</div>

			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="pw" placeholder="Password" required="" id="password1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
			</div>	

			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="confirm-password" placeholder="Confirm Password" id="password2" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="">
			</div>			
			
			<input type="submit" class="register" value="Register">
		</form>
		<script type="text/javascript">
			window.onload = function () {
				document.getElementById("password1").onchange = validatePassword;
				document.getElementById("password2").onchange = validatePassword;
			}
			function validatePassword(){
				var pass2=document.getElementById("password2").value;
				var pass1=document.getElementById("password1").value;
				if(pass1!=pass2)
					document.getElementById("password2").setCustomValidity("Passwords Don't Match");
				else
					document.getElementById("password2").setCustomValidity('');	 
					//empty string means no validation error
			}
		</script>
	</div>
	<div class="clear"></div>
</div>
<p class="copyright w3l">© REGISTRATION FORM</p>
</body>
</html>