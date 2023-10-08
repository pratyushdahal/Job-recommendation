<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Recommendation System</title>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
</head>
<body>
    <div class="container">
        <div class="registerpage">
            <h3>Fill your details to get recommended</h3>
            <form method="POST" action="job-form">
                <div class="categories">
                    <div class="input">
                        <i class="fa-solid fa-lock"></i>
                        <input type="text" name="desc"  placeholder="Enter Description of job">
                    </div>


                <div class="signupbtn">
                    <a href="#"><button class=".buttonsignup" type="submit">Search</button></a>
                </div>
            </form>
        </div>
    </div>
    
</body>
</html>