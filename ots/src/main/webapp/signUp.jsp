<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="static/css/signUp.css" />
		<link rel="preconnect" href="https://fonts.googleapis.com" />
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
		  <script src="https://www.google.com/recaptcha/api.js" async defer></script>
		<link
			href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
			rel="stylesheet"
		/>
		<title>signup</title>
	</head>
	<body>
		<div class="main-page">
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
		<script src="static/Js/signUp.js
		"></script>
	</body>
</html>
