<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="head.jsp" %>
</head>
<body>
    
    <div class="header" >
        <div class="container-fluid">
            <div class="row">
                <div class="col-6 mt-1">
                    <img src="static/images/logo.png" alt="error" width="60px" height="60px " style="border-radius: 50%;">
                    <h2 class="pl-3 text-white d-inline">Online Test System</h2>
                   <div class="contain">
                        <a href="index.jsp" class="pl-5 text-decoration-none text-white">HOME</a>
                        <a href="#" class="pl-3 text-decoration-none text-white">ABOUT</a>
                        <a href="#" class="pl-3 text-decoration-none text-white">HOW IT WORKS</a>
                        <a href="#" class="pl-3 text-decoration-none text-white">FEATURES</a>
                        <a href="#" class="pl-3 text-decoration-none text-white">MORE</a>
                   </div>
                </div>
                <div class="col-6 mt-1">
                   <div class="contain-1 px-5">
                    <a href="signUp.jsp" class="btn btn-primary m-3">SignUp</a>
                    <a href="login.jsp" class="btn btn-secondary">SignIn</a>
                    <input type="text" class="ml-5 px-4 py-1" placeholder="Enter Student Key" style="border-radius: 50px;">
                    <a href="Exam.jsp" class="btn btn-primary ml-3">Next</a>
                    
                    <h4 class="ml-5  d-inline text-white">Teacher</h4>
                    <h4 class="d-inline  text-white" style="margin-left: 10rem;">Student</h4>

                   </div>
                </div>
            </div>
        </div>
    </div>

    <img src="static/images/green-chameleon-s9CC2SKySJM-unsplash.jpg" alt="" width="100%" height="500px">

   <%@ include file="footer.jsp" %>
</body>
</html>