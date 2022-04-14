<%@ page import="models.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="models.Teacher" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        *{
            margin:0px;
            padding:0px;
            box-sizing: border-box;
        }
        a{
            font-size: 1.5rem;
        }
        
        .navy{
            background-color: #14152e;
        }
        .lightblue{
            background-color: #d1feff;
        }
        .darkgreen{
            background-color: #082618;
        }
        .orange{
            background-color: #eb6b26;
        }
    </style>

    
    <title>Document</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row " style="margin-left: -15px; margin-right: -60px">
			<div class="col-md-2 bg-info text-white pt-3 gx-0 ">
				<h2 class="my-3">
					<i class="fas fa-id-badge"></i> My Profile
				</h2>
				<a
					class="active d-block text-decoration-none pt-5 text-white font-weight-bold px-1"
					href="#"><i class="fas fa-tachometer-alt px-2"></i>Dashboard</a> <a
					class="d-block text-decoration-none pt-5 text-white font-weight-bold px-1"
					href="#"><i class="fas fa-bullhorn px-2"></i>Announcement</a> <a
					class="d-block text-decoration-none pt-5 text-white font-weight-bold px-1"
					href="#"><i class="fas fa-globe px-2"></i>Resources</a> <a
					class="d-block text-decoration-none pt-5 text-white font-weight-bold px-1"
					href="#"><i class="fas fa-cog px-2"></i>Setting</a> <a
					class="d-block text-decoration-none pt-5 text-white font-weight-bold px-1"
					href="#"><i class="fas fa-blog px-2"></i>How it works</a> <a
					class="d-block text-decoration-none pt-5 text-white font-weight-bold px-1"
					href="#"><i class="fas fa-question-circle px-2"></i>Help</a> <a
					class="d-block text-decoration-none py-5 text-white font-weight-bold px-1"
					href="#"><i class="fas fa-sign-out-alt px-2"></i>LogOut</a>
			</div>
			<div class="col-md-10  gx-0" style="margin-left: -15px;">
				<h2 class="navy text-white text-center py-2">All Student</h2>
				<div class="row">
					<div class="col-md-6 offset-2">
						<div class="dash pt-2 m-5"
							style="margin-top: -10px; height: 100%;">
							<div class="card rounded-2 bg-light">
								<div class="card-body"
									style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
									<form action="addStudent.do" method="post" class="mx-5">
										<div class="form-group">
											<label for="name">Name</label> <input type="text"
												class="form-control" name="name"
												placeholder="Enter student name">
										</div>
										<div class="form-group">
											<label for="email">Email </label> <input type="email"
												class="form-control" name="email"
												placeholder="Enter student email">
										</div>
										<div class=" text-center">
											<button type="submit" class="btn btn-primary">Add
											Student</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 offset-2" style="overflow-y:auto; height:13rem;">
						
				<table class="table" >
					<thead class="thead-dark mr-5">
						<tr>
							<th scope="col">#</th>
							<th scope="col">Name</th>
							<th scope="col">Email</th>
						</tr>
					</thead>
					<tbody>
					<% 
						HttpSession session1 = request.getSession();
						Teacher teacher = (Teacher)session1.getAttribute("teacher");
						ArrayList<Student> students = new Student().getAllStudent(teacher);
					
						for(Student student : students){
					%>
						<tr>
							<td><%=student.getStudentId() %></td>
							<td><%=student.getName() %></td>
							<td><%=student.getEmail() %></td>
						</tr>
						<%} %>
					</tbody>
				</table>
					</div>
					
				</div>
				<div class="text-center my-3">
					<a href="send_mail.do" class="btn btn-primary">Send Mail</a>
				</div>
			</div>
				
		</div>
		
	</div>



</body>
</html>