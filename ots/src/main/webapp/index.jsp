<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/font-awesome.css">
    <title>Document</title>
    <style>
        body{
          
        }
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

    <div class="footer py-4">
        <div class="container-fluid">
            <div class="row">
                <div class="col-3">
                    <h4 class=" text-white">Online Test System</h4>
                    <ul class="list">
                        <li> <h5 class=" text-warning pt-2">Teacher SignIn</h5></li>
                        <li> <h5 class=" text-warning pt-2">Student Exam Key</h5></li>
                       
                   </ul>
                </div>
                <div class="col-3">
                    <h4 class="text-white ml-4">Menu</h4>
                    <ul class="list">
                        <li> <h5 class=" text-warning">Home</h5></li>
                       <li><h5 class="text-warning">How it works</h5></li>
                        <li> <h5 class="text-warning">Video training</h5></li>
                        <li> <h5 class=" text-warning">About</h5></li>
                   </ul>
                </div>
                <div class="col-6">
                    <h4 class=" text-center text-white">Technical Support</h4>
                    <div class="menu-3 text-center">
                        <h5 class="text-warning pt-2">support_ots@gmail.com</h5>
                        <h5 class="text-warning pt-2">support_exam@gmail.com</h5>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>