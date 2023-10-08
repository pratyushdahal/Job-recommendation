<%@page import="java.text.DecimalFormat"%>
<%@page import="com.pratyush.jobreco.Job"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="index.css">
    <title>Recommended Job Listings</title>
    <style>
    .viewjobcontainer {
    display: grid;
    grid-template-columns: auto auto auto;
}
h1 {
    text-align: center;
    font-family: cursive;
    margin: 48px 0px;
    color: blue;
}
h1::after {
    content: '';
    width: 89px;
    height: 4px;
    border-radius: 3px;
    background: blue;
    position: absolute;
    left: 50%;
    bottom: 87%;
}
    
    .displaying-card {
  display: grid;
  grid-template-columns: auto auto auto;
}
.card-container {
    border-radius: 9px;
    background-color: #f7f7f7;
    max-width: 400px;
    margin-bottom: 30px;
    margin-left: 41px;
    overflow: hidden;
    box-shadow: 2px 4px 5px 0px grey;

}

.card-article figure {
  margin: 0;
  padding: 0;
  aspect-ratio: 16 / 9;
  overflow: hidden;
}

.card-article img {
  max-width: 100%;
  transform-origin: center;
  transition: transform 0.4s ease-in-out;
}

.card-article img:hover,
.card-article img:focus {
  transform: scale(1.1);
}

.card-body {
  padding: 24px;
}
.card-body h2 {
  margin: 0 0 18px 0;
  letter-spacing: 0.006em;
  font-size: 1.9rem;
  transition: color 0.3s ease-out;
  font-family: "Bebas Neue", cursive;
}

.card-container h2,
.card-container .card-read-more {
  transition: transform 0.4s ease-in-out;
}

.card-container:hover h2,
.card-container:focus h2,
.card-container:hover .card-read-more,
.card-container:focus .card-read-more {
  color: blue;
}
    </style>
</head>
<body>
    <h1>Recommended Job Listings</h1>
    <section class="viewjob">
    <div class="viewjobcontainer">
            
         
       
        <% List<Job> jobList = (List<Job>) request.getAttribute("jobList");
        
        %>
        <% if (jobList != null && !jobList.isEmpty()) {
        	java.util.Collections.sort(jobList, new java.util.Comparator<Job>() {
	            @Override
	            public int compare(Job o1, Job o2) {
	                return Double.compare(o2.getSimilarityScore(), o1.getSimilarityScore());
	            }
	        });%>
        
            <% for (Job job : jobList) {
            	if(job.getSimilarityScore()==0.0f)continue;%>
            
            <div class="card-container">
      <div class="card-article">
        <div class="card-body">
          <h2><%= job.getTitle() %></h2>
          <p>
            <%= job.getDesc() %>
          </p>
          <p class="desc"><%= job.getPost() %></p>
                    <p class="desc"><%= job.getLocation() %></p>
                    <p class="desc"><%= job.getCompany() %></p>
                    <p class="desc"><%= job.getSalary() %></p>
                    
                    <%
                    
                    DecimalFormat decimalFormat = new DecimalFormat("0.00");
                    
                    // Format the number to display only three decimal places
                    String formattedNumber = decimalFormat.format(job.getSimilarityScore());
                    %>
                    <p class="desc">Similarity Score:<%= formattedNumber %></p>
                    
          
          <div class="card-read-more">
          	<a href="applyjob.jsp?jobId=<%= job.getId() %>"><button class="buttonsignup">Apply</button></a>
          </div>
        </div>
      </div>
    </div>
            <% } %>
        <% } else { %>
           <h3>No matching job available(try other keyword)</h3>
        <% } %>
        
        </div>
	</section>




	
	
	
</body>
</html>

