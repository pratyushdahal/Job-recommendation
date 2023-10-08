<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Recommendation system</title>
<link rel="stylesheet" type="text/css" href="index.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body> 


	<div class="navigation">
        <div class="logo">
            <a href="#">JOBI<span>fy</span></a>
        </div>
        <ul class="navbar">
            <li><a href="#jobs">Jobs</a></li>
            <li><a href="#companies">Companies</a></li>
            <li><a href="#testimonial">Testimonial</a></li>
          <% 
			String username = (String) session.getAttribute("username");
			if (username != null) {
			%>
			    <li class="signin"><a href="login.jsp"><%= username %></a></li>
			    <li class="signin"><a href="logout">Logout</a></li>
			<% 
			} else {
			%>
			    <li class="signin"><a href="login.jsp">Login</a></li>
			<%
			}
			%>

           
        </ul>
    </div>
    <header>
        <h1 class="title">
            Discover<br><span>Your Next</span><br>Career Move
        </h1>
        <a href="#"><button class="button" type="submit">Join Now</button></a>
    </header>
    <!-- Companies page -->
    <section class="section_second" id="companies">
        <div class="companies">
            <div class="companies_title">
                <h2 class="title">Featured Companies</h2>
            </div>
            <div class="logo_icons">
                <div class="logo-images">
                    <img src="https://static.vecteezy.com/system/resources/previews/018/930/587/original/linkedin-logo-linkedin-icon-transparent-free-png.png"/>
                </div>
                <div class="logo-images">
                    <img src="https://cdn-1.webcatalog.io/catalog/indeed/indeed-icon-filled-256.webp?v=1675590064018"/>
                </div>
                <div class="logo-images">
                    <img src="https://static.merojob.com/images/logo/logo-og-image.jpg"/>
                </div>
                <div class="logo-images">
                    <img src="https://yt3.googleusercontent.com/ytc/AOPolaRZEnr7kc4t4GrAHsyJncc48CqEy76QqfSYhjQs=s900-c-k-c0x00ffffff-no-rj"/>
                </div>
                <div class="logo-images">
                    <img src="https://vtlogo.com/wp-content/uploads/2020/10/jooble-vector-logo.png"/>
                </div>
                <div class="logo-images">
                    <img src="https://downloadr2.apkmirror.com/wp-content/uploads/2023/07/19/64b2dedf6e12c_naukriApp.appModules.login.png"/>
                </div>

            </div>
        </div>
    </section>

    <!-- jobs form page -->
    <section class="section_third" id="jobs">
        <div class="sub-section-left">
            <div class="container1">
                <img src="image/vimage-job.jpg" >      
            </div>
        </div>
        <div class="sub-section-right">
            <h3>Get Recommended with the Job <br>that fits your career!</h3>
            <p>Discover your dream job today with our state-of-the-art job recommendation system and unlock a world of endless possibilities. Trust us to guide you towards the career path that truly fulfills your potential.</p>
            <p class="search">Searching for?</p>
            <div class="buttons">
                <a href="jobform.jsp"><button type="submit"class="btn-1">Intern</button></a>
                <a href="jobform.jsp"><button type="submit" class="btn-2">Job</button></a>
            </div>
        </div>
    </section>
    <!-- Testimonial section -->
    <section class="section_fourth" id="testimonial">
        <div class="testimonials">
            <div class="testimonial_title">
                <h2>Testimonial</h2>
                <p>See what our clients say about us!</p>
            </div>
            <div class="wrapper">
                <div class="box">
                  <i class="fas fa-quote-left quote"></i>
                  <p>Lorem aliasry ipsum dolor sits ametans, consectetur adipisicing elitits. Expedita reiciendis itaque placeat thuratu, quasi yiuos repellendus repudiandae deleniti ideas fuga molestiae, alias.</p>
                  <div class="content">
                    <div class="info">
                      <div class="name">Alex Smith</div>
                      <div class="job">Designer | Developer</div>
                      <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                        <i class="far fa-star"></i>
                        <i class="far fa-star"></i>
                      </div>
                    </div>
                    <div class="image">
                      <img src="image/user.png" alt="">
                    </div>
                  </div>
                </div>
                <div class="box">
                  <i class="fas fa-quote-left quote"></i>
                  <p>Lorem aliasry ipsum dolor sits ametans, consectetur adipisicing elitits. Expedita reiciendis itaque placeat thuratu, quasi yiuos repellendus repudiandae deleniti ideas fuga molestiae, alias.</p>
                  <div class="content">
                    <div class="info">
                      <div class="name">Steven Chris</div>
                      <div class="job">YouTuber | Blogger</div>
                      <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                        <i class="far fa-star"></i>
                      </div>
                    </div>
                    <div class="image">
                      <img src="image/user.png" alt="">
                    </div>
                  </div>
                </div>
                <div class="box">
                  <i class="fas fa-quote-left  quote"></i>
                  <p>Lorem aliasry ipsum dolor sits ametans, consectetur adipisicing elitits. Expedita reiciendis itaque placeat thuratu, quasi yiuos repellendus repudiandae deleniti ideas fuga molestiae, alias.</p>
                  <div class="content">
                    <div class="info">
                      <div class="name">Kristina Bellis</div>
                      <div class="job">Freelancer | Advertiser</div>
                      <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                      </div>
                    </div>
                    <div class="image">
                      <img src="image/user.png" alt="">
                    </div>
                  </div>
                </div>
              </div>
        </div>
    </section>
    <!-- footer section -->
    <footer>
        <div class="footer-content">
            <h3>Jobify</h3>
            <p>Get recommended with the relevant job that fits your career! </p>
            <ul class="socials">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-google"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
            </ul>
        </div>
        <div class="footer-bottom">
            <p>copyright &copy;2023 Jobify</p>
            <p>designed by <span>Pratyush</span></p>
        </div>
    </footer>
</body>
</html>