<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
</head>
<body>
	 <div class="container">
       <div class="loginpanel">
            <h2>Sign in</h2>
            <form method="POST" action="login-user">
                <div class="input">
                    <i class="fa-solid fa-user"></i>
                    <input type="username" name="txtUsername" placeholder="Username">
                </div>
                <div class="input">
                    <i class="fa-solid fa-lock"></i>
                    <input type="Password" name="txtPassword" placeholder="Password">
                </div>
                <p>forget password?<a href="">Click here!</a></p>
                <div class="submitbtn">
                    <a href="#"><button class=".btn" type="submit">Signin</button></a>
                </div>
            </form>
       </div>
       
    </div>
    <div class="containerbox">
        <div class="registerpanel">
            <h4>New to Jobify?</h4>
            <div class="pointtext">
                <p>- Get relevant job Recommendation</p>
            </div>
            <div class="pointtext">
                <p>- Reduce your job search time</p>
            </div>
            <div class="pointtext">
                <p>- Best search experience</p>
            </div>
            <div class="registerbtn">
                <a href="Register.jsp"><button class=".buttonregister" type="submit">Register</button></a>
            </div>
        </div>
    </div>
</body>
</html>