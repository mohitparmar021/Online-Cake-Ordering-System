<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
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
             background-color: #e9ecef;
             padding-bottom: 61px;
	 	}
	 	.img-gallery
	 	{
	 		width: 100%;
	 		height: 200px;
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
#fname
{
  width: 55%;
  padding: 15px 21px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  font-size: 18px;  
}
#mail
{
  width: 55%;
  padding: 15px 21px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  font-size: 18px;
}
#message
{
  width: 55%;
  padding: 15px 21px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
 font-size: 18px;
}
.feedback
{
   text-align: center;
}
.btn
{
   border-radius:0px;

}
	 </style>
</head>
<body>
<div class="container">
	 <div class=" main-card ">
          <%@ include file="views/navbar.jsp" %> 	
	   	       <div class="container">
                      <div class="jumbotron bg-info mt-3">
                      	      <h1 class="text-center">Welcome To</h1>
                              <h4 class="text-center">Cake Cafe</h4>
                             
                      </div>
                      <div>
                            <h2 class="text-center mb-3" >Contact Us...</h2>
                                 <%-- <%
                                  String mssg=(String)request.getAttribute("mssg");
                                   	 
                                 %>
                                    <p class="text-center text-danger"><%=mssg %></p> --%>
                               <form method="post" action="feedback" class="feedback">
                                   <div class="form-group">
                                       <input type="text" name="fname" id="fname" placeholder="Name" required autocomplete="off" class="form-control">
                                   </div>
                                   <div class="form-group">
                                       <input type="email" name="mail" id="mail" placeholder="Email" required autocomplete="off" class="form-control">
                                   </div>
                                   <div class="form-group">
                                       <textarea cols="20" rows="5" name="mssg" placeholder="Message" id="message" required autocomplete="off" class="form-control"></textarea>
                                   </div>
                                  <input type="submit" name="" value="Submit" class="btn btn-lg text-white bg-info ">
                               </form>
                       
  
                      </div>
 	   	            </div>
	   </div>


  <footer class="footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span class="text-white copyright-text" >Copyright © Cake Cafe 2020</span>
          </div>
        </div>
      </footer>
</div>    
 
</body>
</html>