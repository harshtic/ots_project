<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="static/css/login.css" />
		<link rel="preconnect" href="https://fonts.googleapis.com" />
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
		<link
			href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
			rel="stylesheet"
		/>
		<title>login</title>
	</head>
	<body>
		<div class="main-page">
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
		<script src="static/Js/login.js
		"></script>
	</body>
</html>
