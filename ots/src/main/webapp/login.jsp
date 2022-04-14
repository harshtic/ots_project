<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="static/css/login.css" />
		<link rel="stylesheet" href="static/css/bootstrap.css" />
		<link rel="stylesheet" href="static/css/fontawesome.css" />
		<link rel="preconnect" href="https://fonts.googleapis.com" />
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
		<link
			href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
			rel="stylesheet"
		/>
		
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
		<title>login</title>
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
		<div class="main-page ">
			<div class="login-box">
				<div class="welcome-heading">WELCOME TO ONLINE TEST SYSTEM</div>
				<h2 class="login-line">Login</h2>
				<div class="login-form-container">
					<form action="teacherLogin.do" id="" method="post">
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
						<div class="form-field-container mb-1">
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

						<a href="forgot_password.jsp" class="login-page-forgot-password">
							Forgot password?
							
						</a>
						<div class="form-submit-button-container">
							<input class="form-submit-button" type="submit" />
						</div>
						<p class="login-page-no-account">
							Need an account
							<span
								><a href="signUp.jsp"
									>Signup</a
								></span
							>
						</p>
					</form>
				</div>
			</div>
		</div>
		
		<%@ include file="footer.jsp" %>
		<script src="static/Js/login.js
		"></script>
	</body>
</html>
