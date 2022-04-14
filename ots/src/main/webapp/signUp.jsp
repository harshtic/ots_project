<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="static/css/signUp.css" />
		<link rel="preconnect" href="https://fonts.googleapis.com" />
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
		<link rel="stylesheet" href="static/css/bootstrap.css" />
		<link rel="stylesheet" href="static/css/fontawesome.css" />
		 <style>
        .header{
            background-color: #000f2e;
        }
        .footer{
            background-color: #000f2e;
            padding-left: 100px;
          
            
        }
        .list{
            list-style: none;
        }

        .white-1{
            color: #f2f5f3;
        }
      </style>
		
		  <script src="https://www.google.com/recaptcha/api.js" async defer></script>
		<link
			href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
			rel="stylesheet"
		/>
		<title>signup</title>
	</head>
	<body>
	 <div class="header mb-5" >
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

	
		<div class="main-page my-5">
			<div class="signup-box">
				<div class="welcome-heading">WELCOME TO ONLINE TEST SYSTEM</div>
				<h2 class="signup-line">Signup to create a free account</h2>
				<div class="signup-form-container">
					<form action="teacherSignUp.do" id="" method="post">
						<div class="form-field-container">
							<div class="form-field-input-container">
								<input
									class="form-field-input"
									type="text"
									id="name"
									name="name"
									placeholder="&nbsp"
								/>
								<label class="form-field-label" for="name"
									>Name
								</label>
								<small class="error-message"
									>Error message</small
								>
							</div>
						</div>
						<div class="form-field-container">
							<div class="form-field-input-container">
								<input
									class="form-field-input"
									type="text"
									id="email"
									name="email"
									placeholder="&nbsp"
								/>
								<label class="form-field-label" for="email"
									>Email
								</label>
								<small class="error-message"
									>Error message</small
								>
							</div>
						</div>
						<div class="form-field-container">
							<div class="form-field-input-container">
								<input
									class="form-field-input"
									type="password"
									id="password"
									name="password"
									placeholder="&nbsp"
								/>
								<label class="form-field-label" for="password"
									>Password
								</label>
								<small class="error-message"
									>Error message</small
								>
							</div>
						</div>
						<div class="form-field-container">
							<div class="form-field-input-container">
								<input
									class="form-field-input"
									type="text"
									id="contact"
									name="contact"
									placeholder="&nbsp"
								/>
								<label class="form-field-label" for="contact"
									>Contact No
								</label>
								<small class="error-message"
									>Error message</small
								>
							</div>
						</div>
						<div class="form-field-container">
							<div class="form-field-input-container">
								<input
									class="form-field-input"
									type="text"
									id="institute"
									name="institute"
									placeholder="&nbsp"
								/>
								<label class="form-field-label" for="institute"
									>Institute
								</label>
								<small class="error-message"
									>Error message</small
								>
							</div>
						</div>
						<div class="g-recaptcha" data-sitekey="6LcYwpUeAAAAAGblGSMFt0SMjoQz_B7daqgVqhVP"></div>
						<div class="form-submit-button-container">
							<input class="form-submit-button" type="submit" />
						</div>
						<p class="signup-page-login-link">
							Already have an account?
							<span><a href="login.jsp">Login</a></span>
						</p>
					</form>
				</div>
			</div>
		</div>
		
		<%@ include file="footer.jsp" %>
		<script src="static/Js/signUp.js
		"></script>
	</body>
</html>
