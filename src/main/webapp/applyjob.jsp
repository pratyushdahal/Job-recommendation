<%@page import="com.pratyush.jobreco.Job"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job recommendation system</title>
</head>
<body>

    <%
    String jobId = (String) request.getParameter("jobId");
    Job job = Job.getJobById(Integer.parseInt(jobId));
    %>

    <form action="insert" method="post">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="<%= job.getTitle() %>">
        
        <label for="desc">Description:</label>
        <textarea id="desc" name="desc"><%= job.getDesc() %></textarea>
        
        <input type="submit" value="Submit">
    </form>
    
    
</body>
</html>