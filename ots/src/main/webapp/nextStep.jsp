<%@ page import ="models.Exam" %>
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
        <div class="row " style="margin-left:-15px; margin-right:-60px" >
            <div class="col-md-2 bg-info text-white pt-3 gx-0 " >
                <h2 class="my-3"><i class="fas fa-id-badge"></i>  My Profile</h2>
                <a class="active d-block text-decoration-none pt-5 text-white font-weight-bold px-1" href="#"><i class="fas fa-tachometer-alt px-2"></i>Dashboard</a>
                <a class="d-block text-decoration-none pt-5 text-white font-weight-bold px-1" href="#"><i class="fas fa-bullhorn px-2"></i>Announcement</a>
                <a class="d-block text-decoration-none pt-5 text-white font-weight-bold px-1" href="#"><i class="fas fa-globe px-2"></i>Resources</a>
                <a class="d-block text-decoration-none pt-5 text-white font-weight-bold px-1" href="#"><i class="fas fa-cog px-2"></i>Setting</a>
                <a class="d-block text-decoration-none pt-5 text-white font-weight-bold px-1" href="#"><i class="fas fa-blog px-2"></i>How it works</a>
                <a class="d-block text-decoration-none pt-5 text-white font-weight-bold px-1" href="#"><i class="fas fa-question-circle px-2"></i>Help</a>
                <a class="d-block text-decoration-none py-5 text-white font-weight-bold px-1" href="#"><i class="fas fa-sign-out-alt px-2"></i>LogOut</a>
            </div>
            <div class="col-md-10  gx-0" style="margin-left:-15px;">
                <h2 class="navy text-white text-center py-2">Create Exam</h2>
               <div class="row">
                   <div class="col-md-6 offset-2">
                    <div class="dash pt-2 m-5" style="margin-top: -10px; height: 100%;">
                       <div class="card rounded-2 bg-light">
                          
                           <div class="card-body" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                          
                          	
                            <form action="addque.do" method="post" class="mx-5">
                            	<% 
                            	HttpSession session1 = request.getSession();
                            	Exam exam = (Exam)session1.getAttribute("exam");
                            	
                     
                          		
                          	%>
                                <div class="form-group">
                                  <label for="question">Question</label>
                                 <textarea name="question" id="" cols="50" rows="2" class="form-control" placeholder="Enter question"></textarea>
                                </div>
                              		    <div class="form-group">
									 <input type="number"
												class="form-control" name="examId" value="<%=exam.getExamId() %>" style="display:none;">
										</div>
            
										<div class="form-group">
											<label for="option1">option1</label> <input type="text"
												class="form-control" name="option" placeholder="Enter option1">
										</div>
										<div class="form-group">
											<label for="option2">option2</label> <input type="text"
												class="form-control" name="option" placeholder="Enter option2">
										</div>
										<div class="form-group">
											<label for="option3">option3</label> <input type="text"
												class="form-control" name="option" placeholder="Enter option3">
										</div>
										<div class="form-group">
											<label for="option4">option4</label> <input type="text"
												class="form-control" name="option" placeholder="Enter option4">
										</div>
									<div class="form-group">
                                    <label for="answer">Answer</label>
                                    <input type="text" name="answer" class="form-control" placeholder="Enter Answer">
                                  </div>
                                  <div class="form-group">
                                    <label for="time">Time(in sec)</label>
                                    <input type="text" name="time" class="form-control" placeholder="Enter time">
                                  </div>
                                  <div class="form-group">
                                    <label for="mark">Marks</label>
                                    <input type="text" name="marks" class="form-control" placeholder="Enter marks">
                                  </div>
                                <button type="submit" class="btn btn-primary">Add</button>
                              </form>
                           </div>
                       </div>
                      </div>
                    </div>
                   </div>
               </div>
                
            </div>
        </div>
            
            
        </div>
    </div>
    
</body>
</html>