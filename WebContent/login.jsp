<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="assets/libraryfile/bootstrap.min.css">
<script src="assets/libraryfile/jquery-3.4.1.min.js"></script> 
<style type="text/css">	
	 	body
	 	{	
	 		background-color: #e4b118;
	 	}
	    .main-card
	 	{
            margin-top: 30px;
             background-image: url(assets/images/loginbg.jpeg);
             background-repeat: no-repeat;
            background-size: 100% 100%; 
              height:600px;
	 	}
.login-form
    {
    
      width: 410px;
      height: 380px; 
      border:1px solid;    
    }
     .login-text
    {
      margin-top: 30px;
      margin-left: 20px;
      padding-bottom: 20px;
    }
    label
    {
      margin-left: 20px;

    }
        #username
        {
          width: 90%;
          margin-left: 20px;
        }
        #password
        {
          width: 90%;
          margin-left: 20px;
        }
       .bt-login
        {
          margin-top: 5px;
          margin-left: 20px;
          width: 25%;
          font-size: 20px;
          border-radius:0px;
        }
        #check,#check1
        {
           color: red;
           font-size: 14px;
           margin-left: 20px;
      
         
        }

            footer{
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  position:relative;
  left: 0%;
  right:0%;
  bottom: 0;
  width:100%;
  height: 80px;
  background-color:#212529; #e9ecef;
}
footer .copyright {

  line-height: 1;
  font-size: 20px;
}
.copyright-text
{
  margin-top: 5px;
}

	 </style>
</head>
<body>

<div class="container">
	 <div class=" main-card">
	 	    <%@ include file="views/navbar.jsp" %> 	
	   	       <div class="container">     
                 <div class="login-form mt-5">
                     <form action="adminlogin" method="post" onsubmit="return validation()">
                       <h1 class="login-text">Login </h1>
                       <div class="form-group">
                             <label for="username"><i class="fas fa-user fa-fw"></i> Username</label>
                             <input type="text" name="username" id="username"  placeholder="Enter UserName" autocomplete="off" class="form-control">
                             <p id="check"></p>
                       </div>
                      <div class="form-group">
                            <label for="password"><i class="fas fa-lock fa-fw"></i> Password</label>
                            <input type="password" name="password" placeholder="Enter Password" id="password" class="form-control">
                            <p id="check1"></p>
                      </div>
                       <input type="submit" name="" value="Login" class="btn  btn-info bt-login">             
                       </form> 
               </div>    
 	   	    </div>
	   </div>
  <footer class="footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span class="text-white copyright-text" > Cake Shop Management System 2020</span>
          </div>
        </div>
      </footer>
</div>   
<script type="text/javascript">
  function validation() 
  {
        var username=document.getElementById('username').value;
        var password=document.getElementById('password').value;
      
        if(username=="") 
        {
          /* alert("Please Enter UserName");*/
          document.getElementById('check').innerHTML="** Please Enter UserName **";

           return false;
        }
        else if(password=="") 
        {
             document.getElementById('check1').innerHTML="** Please Enter Password **";
           return false;
        }
        else
        {
          return true;
        }
  }


</script>
 
</body>
</html>