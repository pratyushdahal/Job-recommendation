<%@page import="com.pratyush.jobreco.Job"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="item.css">
    <title>Recommended Job Listings</title>
</head>
<body>
    <h1>Recommended Job Listings</h1>
    <section class="viewjob">
    <div class="viewjobcontainer">
            <div class="card">
    <!-- <table>
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Post</th>
            <th>Location</th>
            <th>Company</th>
            <th>Salary</th>
        </tr> -->
        <% List<Job> jobList = (List<Job>) request.getAttribute("jobList"); %>
        <% if (jobList != null && !jobList.isEmpty()) { %>
            <% for (Job job : jobList) { %>
                <!-- <tr> -->
                    <h3 class="title"><%= job.getTitle() %></h3>
                    <p class="desc"><%= job.getDesc() %></p>
                    <p class="desc"><%= job.getPost() %></p>
                    <p class="desc"><%= job.getLocation() %></p>
                    <p class="desc"><%= job.getCompany() %></p>
                    <p class="desc"><%= job.getSalary() %></p>
                </tr>
            <% } %>
        <% } else { %>
            <tr>
                <td colspan="6">No job listings available</td>
            </tr>
        <% } %>
        </div>
        </div>
	</section>
</body>
</html>

