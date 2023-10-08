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
                <!-- <div class="input">
                    <i class="fa-solid fa-user"></i>
                    <input type="name" name="name" placeholder="Enter your full name">
                </div>
                <div class="input">
                    <i class="fa-solid fa-envelope"></i>
                    <input type="email" name="email" placeholder="Enter Email">
                </div> -->
                <div class="categories">
                    <div class="input">
                        <i class="fa-solid fa-lock"></i>
                        <input type="text" name="desc"  placeholder="Enter Description of job">
                    </div>
                    <!-- <div class="input">
                        <i class="fa-solid fa-arrow-up"></i>
                        <input type="submit" value="Submit">
                        <select name="posts" id="posts">
                            <option value="select">Select post</option>
                          <option value="junior">Junior</option>
                          <option value="mid">Mid</option>
                          <option value="senior">Senior</option>
                        </select>
                    </div> -->
                </div>
                <!-- <div class="input">
                    <i class="fa-solid fa-phone"></i>
                    <input type="number" name="number" placeholder="Enter Phone Number">
                </div> -->
                <div class="signupbtn">
                    <a href="#"><button class=".buttonsignup" type="submit">Search</button></a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>