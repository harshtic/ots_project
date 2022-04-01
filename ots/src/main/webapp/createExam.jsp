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
                            <form action="createExam.do" method="post" class="mx-5">
                                <div class="form-group">
                                  <label for="examname">Exam Name</label>
                                  <input type="text" class="form-control" name="exam_name" placeholder="Enter exam name">
                                </div>
                                <div class="form-group">
                                  <label for="examdate">Exam Date</label>
                                  <input type="date" class="form-control" name="exam_date" placeholder="Enter exam date">
                                </div>
                               <div class="form-group">
                                   <label for="starttime">Start Time</label>
                                   <input type="time" class="form-control" name="start_time" placeholder="Enter Start Time">
                               </div>
                               <div class="form-group">
                                <label for="endtime">End Time</label>
                                <input type="time" class="form-control"name="end_time" placeholder="Enter end Time">
                                 </div>
                                <button type="submit" class="btn btn-primary">Next</button>
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