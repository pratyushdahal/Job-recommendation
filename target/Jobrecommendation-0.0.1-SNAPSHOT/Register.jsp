<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
</head>
<body>
	<div class="container">
        <div class="registerpage">
            <h3>Find a job & grow your Career</h3>
            <form method="POST" action="/Jobrecommendation/register-user">
                <div class="input">
                    <i class="fa-solid fa-user"></i>
                    <input type="username" name="username" placeholder="Username">
                </div>
                <div class="input">
                    <i class="fa-solid fa-envelope"></i>
                    <input type="email" name="email" placeholder="Email">
                </div>
                <div class="input">
                    <i class="fa-solid fa-lock"></i>
                    <input type="Password" name="password" placeholder="Password">
                </div>
                <div class="input">
                    <i class="fa-solid fa-phone"></i>
                    <input type="number" name="number" placeholder="Phone Number">
                </div>
                <div class="signupbtn">
                    <a href="#"><button class=".buttonsignup" type="submit">Register</button></a>
                </div>
                <div class="note">
                    <p>Already a member?<a href="login.jsp">Login</a></p>
                </div>
            </form>
        </div>
    </div>
</body>
</html>