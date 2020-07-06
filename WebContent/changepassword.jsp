<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Password</title>
<link rel="stylesheet" type="text/css" href="assets/libraryfile/bootstrap.min.css">
<script src="assets/libraryfile/jquery-3.4.1.min.js"></script> 
<style type="text/css">
      body
        {
        	
		   background-color: #e4b118;
        }

	   .dropbtn,.dropbtn1,.dropbtn2   
         {
         cursor: pointer;
         font-size: 16px;  
         border: none;
         outline: none;
         color: white;
         padding: 8px 12px;
         background-color: inherit;
         font-family: inherit;
         margin: 0;

        }	
	 		.main-card
	 	{
            margin-top: 30px;
            background-color: #e9ecef;
             height:627px;
           
	 	}
        .login-form
        {
        	width: 450px;
        	height: 500px;
        	background-color: #f1f1f1;
        	border-radius: 10px;
        	padding: 80px,40px;
        	position: absolute;
    	    left:50%;
    	    top:55%;
    	    transform: translate(-50%,-50%);
        }
        h1
        {
        	margin-left: 36px;
            margin-top: 40px;
            
        }
        #user
        {
        	width: 80%;
        	margin-left: 36px;
        }
         #Password ,#conf-password
        {
        	width: 80%;
        	margin-left: 36px;
        }
        .label-text
        {
        	margin-left: 38px;
        	font-size: 18px;
          
        }
       .btn-change
        {
           
     	    border-radius:0px;
        }

</style>
</head>
<body>


<div class="container">
	 <div class=" main-card ">
   <%@ include file="views/admin-navbar.jsp" %>	
             <div class="container">

	   <form class="login-form" action="changepassword" method="post" onsubmit="return validate()">
	   	     <div>
	   	     	   <h1>Change Password</h1><br>
	   	     </div>
	   	       <div class="form-group">
	   	       	 <label for="user" class="label-text"> UserName</label>
	   	       	 <input type="text" name="username" required id="user" placeholder="Enter UserName" class="form-control"> 
	   	       </div>
	   	        <div class="form-group">
	   	       	 <label for="Password" class="label-text">New Password</label>
	   	       	 <input type="Password" name="new-password" required id="Password" placeholder="Enter New Password" class="form-control"> 
	   	       </div>
	   	        <div class="form-group">
	   	       	 <label for="Password" class="label-text">Confirm Password</label>
	   	       	 <input type="Password" name="confirm-password" required id="conf-password" placeholder="Enter Confirm Password" class="form-control"> 
	   	       </div>
                  <div class="form-group">
               	 <input type="submit" value="Change Password" name="" class="btn-info btn btn-change mt-3 ml-5">   
              
               </div>

	   </form>
	
</div>
	   	      
</div>    
 </div>
<script type="text/javascript">
    
   function validate()
   {
	   var newp=document.getElementById('Password').value;
	   var confirmp=document.getElementById('conf-password').value;
	   
	   if(newp==conformp)
		   {	  
		   return true;
		   }
	   else
		   {
		      alert("Enter Correct Confirm Password");
		    return false;
		   }
	    
   }
  
   

</script>


</body>
</html>