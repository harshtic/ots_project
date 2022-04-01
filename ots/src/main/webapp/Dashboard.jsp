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
            <div class="col-md-2 bg-info text-white pt-3 gx-0" >
                <h2 class="my-3"><i class="fas fa-id-badge"></i>  My Profile</h2>
                <a class="active d-block text-decoration-none pt-5 text-white font-weight-bold px-1" href="#"><i class="fas fa-tachometer-alt px-2"></i>Dashboard</a>
                <a class="d-block text-decoration-none pt-5 text-white font-weight-bold px-1 " href="#"><i class="fas fa-bullhorn px-2"></i>Announcement</a>
                <a class="d-block text-decoration-none pt-5 text-white font-weight-bold " href="#"><i class="fas fa-globe px-2"></i>Resources</a>
                <a class="d-block text-decoration-none pt-5 text-white font-weight-bold " href="#"><i class="fas fa-cog px-2"></i>Setting</a>
                <a class="d-block text-decoration-none pt-5 text-white font-weight-bold px-1" href="#"><i class="fas fa-blog px-2"></i>How it works</a>
                <a class="d-block text-decoration-none pt-5 text-white font-weight-bold px-1" href="#"><i class="fas fa-question-circle px-2"></i>Help</a>
                <a class="d-block text-decoration-none py-5 text-white font-weight-bold px-1" href="#"><i class="fas fa-sign-out-alt px-2"></i>LogOut</a>
            </div>
            <div class="col-md-10  gx-0" style="margin-left:-15px;">
                <h2 class="navy text-white text-center py-2">Dashboard</h2>
                <div class="dash pt-2" style="margin-top: -10px; height: 100%;">
                   
                   <div class="tab d-flex">
                    <div class="card bg-light m-4" style="width:42rem; height: 25rem;">
                        <div class="card-body " style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                            <h2 class="">Exam Stats</h2>
                            <hr>
                            
                        <a href="#" style="font-size: 1.5rem;" class="m-3 py-3 px-4 btn border-2 border-dark text-decoration-none text-white font-weight-bold bg-primary">Total Exams        <i class="fas fa-calculator  pl-5 pr-1"></i> <br><span class="float-left ml-1" style="font-size: 2rem;">45</span></a>
                        <a href="#" style="font-size: 1.5rem;" class="m-3 py-3 px-4 btn border-2 border-dark text-decoration-none text-white font-weight-bold darkgreen">Exams Completed    <i class="far fa-check pl-2"></i> <br><span class="float-left ml-1" style="font-size: 2rem;">45</span></a>
                        <a href="#" style="font-size: 1.5rem;" class="m-3 py-3 px-4 btn border-2 border-dark text-decoration-none text-white font-weight-bold orange">All Students<i class="fas fa-users pl-5"></i> <br><span class="float-left ml-1" style="font-size: 2rem;">45</span></a>
                        <a href="#" style="font-size: 1.5rem;" class="m-3 py-3 px-4 btn border-2 border-dark text-decoration-none text-white font-weight-bold bg-secondary">Upcoming Exams    <i class="fas fa-calendar-alt pl-3 "></i> <br><span class="float-left ml-1" style="font-size: 2rem;">45</span></a>
                       
                        </div>
                    </div>
                    <div class="card bg-light m-4" style="width:30rem; height: 15rem;">
                        <div class="card-body " style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                            <h2 class="">Quick Links</h2>
                            <hr>
                            <button type="button" class="btn btn-primary bg-light text-primary font-weight-bold m-2">Manage Exams</button>
                            <button type="button" class="btn btn-primary bg-light text-primary font-weight-bold m-2">Manage Students</button>
                            <button type="button" class="btn btn-primary bg-light text-primary font-weight-bold m-2">Manage Results</button>
                            <button type="button" class="btn btn-primary bg-light text-primary font-weight-bold m-2">Global Settings</button>
                        
                        </div>
                    </div>
                   </div>
                  <div class="tab1 d-flex justify-content-between">
                    <div class="create d-block mx-5 float-right " style="width: 22rem; margin-left: 10rem;">
                        <a style="font-size: 2rem; " href="createExam.do" class="d-block btn btn-dark m-5 py-4 ">Create Exam</a>
                        </div>
    
                        <div class="recentExam mr-3" style="margin-top: -10rem; margin-left:-3rem;">
                            <div class="card bg-light m-4" style="width:30rem; height: 20rem;">
                                <div class="card-body " style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                                    <h2 class="">Recent Exams</h2>
                                    <hr>

                                    <div class="card">
                                        <div class="card-body">
                                            <h3 class="text-primary pb-1">Math <span style="font-size: 1rem; " class="text-secondary pt-1 float-right">11/09/2022 10:00 AM</span></h3>
                                            <button class="btn btn-warning">View</button>
                                            <button class="btn btn-primary">Students</button>
                                            <button class="btn btn-danger">Results</button>
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