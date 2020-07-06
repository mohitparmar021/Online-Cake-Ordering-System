<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
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
             
	 	}
	   .dropbtn ,.dropbtn1 ,.dropbtn2
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
       .main-card-content
       {
            background-image: url(assets/images/cake1.jpeg);
	 		background-repeat: no-repeat;
	 	    background-size: 100% 100%; 
	 		padding-bottom: 294px;
	 		padding-top: 1px;
	 }
        .main-heading
        {
        	margin-top: 100px;
           margin-left: 40px;
           padding-bottom: 20px;
        }
        .btn-order
        {
        	 margin-left: 40px;
        	 width: 18%;
        	 padding: 10px 10px 10px 10px;
        	 font-size: 20px;
        	 border-radius: 25px;
        	 margin-right: 20px;
        }
        .btn-booking
        {
        	 width: 18%;
        	 padding: 10px 20px 10px 20px;
        	 font-size: 20px;
        	 border-radius: 25px;
        }
	 
	 </style>
</head>
<body>
<div class="container">
	 <div class="main-card ">
         <%@ include file="views/admin-navbar.jsp" %>	 	
	   	       <div class=" main-card-content">
	   	       	   <div class="main-content-header ">
		               <H1 class="main-heading text-white"> WELCOME TO <SPAN>ADMIN PANEL</SPAN> .<br>HOUSE OF CAKE LOVER . . . </H1>                         
                         <a href="click-order.jsp" class="btn  bg-white btn-order ">Click to Order</a>
                         <a href="advance-booking.jsp" class="btn  bg-white btn-booking "> Advance Booking</a>                 
	               </div>
	   	       </div>
	 </div>
</div>    
</body>
</html>