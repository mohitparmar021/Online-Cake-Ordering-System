<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="cos.dbconnection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Advance Booking</title>
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
          /*   height: 500px; */
	 	}
    .main-card-content
    {
    padding-bottom: 40px;
    }

	   .dropbtn ,.dropbtn1,.dropbtn2
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
          #ad-order
          {
          border:none;
          }
       #totalprice ,#due-price
       {
        width: 100%;
        height: 38px;
        background-color: white;
        padding-left: 12px;
        padding-top: 8px;
       }
     
        .btn-save
        {
          border-radius: 0px;
          
        }
    
	 </style>
</head>
<body>

<div class="container">
	 <div class="main-card ">
             <%@ include file="views/admin-navbar.jsp" %>	 	  
	   	       <div class=" main-card-content">	   	       	  
                    <div class="container">
                     <form action="updateorder" method="post">
                         <h3 class="mt-3 mb-4">Advance Order Detail</h3>
                                   <div class="row">
                           <%
                                      int id=Integer.parseInt(request.getParameter("id")); 
                                  try
                                  {
                                      Connection con=null;
                                      Statement stmt=null;
                                      ResultSet rs=null;
                                      con=MyConnection.getMyConnection();
                                      stmt=con.createStatement();
                                      
                               	     String query="select * from advance_order_info where ad_id='"+id+"';";
                               	     
                               	     rs=stmt.executeQuery(query);
                               	   while(rs.next())
                               	   {
                               		 %>                                                                                
                                               <div class="col-sm-2">
                                                     <label class="mt-2">Order Id</label>
                                               </div>
                                               <div class="col-sm-4">
                                                      <div class="form-group">
                                                        <input type="number" value="<%=id %>"  name="adorderid" id="ad-order" class="form-control">
                                                      </div>  
                                               </div>
                                  
                                 </div>
                                     <div class="row">
                                               <div class="col-sm-2">
                                                     <label class="c-name mt-2">Customer Name</label>
                                               </div>
                                               <div class="col-sm-4">
                                                      <div class="form-group">
                                                          <input type="text" value="<%=rs.getString("c_name") %>"  name="c-name" id="c-name" class="form-control"> 
                                                      </div>  
                                               </div>
                                                <div class="col-sm-2">
                                                     <label class="mt-2 c-mobile">Mobile Number</label>
                                               </div>
                                               <div class="col-sm-4"> 
                                                       <div class="form-group">
                                                           <input type="number" value="<%=rs.getLong("mobile") %>" name="mobile" id="c-mobile" class="form-control"> 
                                                        </div>
                                               </div>
                                       </div>
                                        <div class="row">
                                               <div class="col-sm-2">
                                                     <label class="select-item mt-2">Select Item</label>
                                               </div>
                                               <div class="col-sm-4">
                                                      <div class="form-group">
                                                           <select class="form-control" name="item" id="item">   
                                                                  <option value="<%=rs.getString("cake_name") %>"><%=rs.getString("cake_name") %></option>
                                                           </select>
                                                      </div>  
                                               </div>
                                               <div class="col-sm-2">
                                                     <label class="mt-2 ">Category </label>
                                               </div>
                                               <div class="col-sm-4"> 
                                                       <div class="form-group">
                                                            <select class="form-control" name="category" id="category">
                                                                  <option value="<%=rs.getString("category") %>"><%=rs.getString("category") %></option>  
                                                                 
                                                           </select>
                                                        </div>
                                               </div>
                                          </div>
                                          <div class="row">
                                               <div class="col-sm-2">
                                                     <label class=" mt-2">Date</label>
                                               </div>
                                               <div class="col-sm-4">
                                                      <div class="form-group">
                                                          <input type="date" value="<%=rs.getString("order_date") %>" name="c-date" id="c-date" class="form-control"> 
                                                      </div>  
                                               </div>
                                                <div class="col-sm-2">
                                                     <label class="mt-2">Delivery Date </label>
                                               </div>
                                               <div class="col-sm-4"> 
                                                       <div class="form-group">
                                                           <input type="date" value="<%=rs.getString("delivery_date") %>" name="d-date" id="d-date" class="form-control"> 
                                                        </div>
                                               </div>
                                       </div>
                                       <div class="row">
                                               <div class="col-sm-2"> 
                                                    <label class="mt-2">Unit Price</label>
                                               </div>
                                               <div class="col-sm-4">
                                                    <input type="number" value="<%=rs.getFloat("unit_price") %>" name="unit-price" id="unit-price" class="form-control">
                                               </div>
                                               <div class="col-sm-2"> 
                                                    <label class="mt-2">Quantity</label>
                                               </div>
                                               <div class="col-sm-4">
                                                    <input type="number" value="<%=rs.getInt("quantity") %>" name="quantity" id="quantity" class="form-control">
                                               </div>
                                         
                                       </div>    
                                        <div class="row mt-3">
                                               <div class="col-sm-2"> 
                                                   <label class="totalprice">Total Price </label>
                                               </div>
                                               <div class="col-sm-4">
                                                    <input type="number" value="<%=rs.getFloat("total_price") %>" name="totalprice" id="totalprice" class="form-control">  
                                               </div>
                                               <div class="col-sm-2"> 
                                                     <label>Advance Rs.</label>
                                               </div>
                                               <div class="col-sm-4">
                                                    <input type="number" value="<%=rs.getFloat("advance_price") %>" name="advance-price" id="advance-price" class="form-control">
                                               </div>
                                         
                                       </div>                                                          
                                      <div class="form-group">
                                          <label>Due Rs.</label>
                                        <input type="number" name="due-price" value="<%=rs.getFloat("due_price") %>" id="due-price" class="form-control">
                                     </div>
                                          <div class="row">
                                               <div class="col-sm-2"> 
                                                  <label for="order-status" class="">Order Status</label>
                                               </div>
                                               <div class="col-sm-4">
                                                   <select class="form-control" name="order_status" id="order-status">    
                                                                   <option value="">-Please-Select</option>
                                                                   <option value="delivered">Delivered</option>
                                                                   <option value="pending">Pending</option>        
                                                           </select>
                                               </div>
                                               <div class="col-sm-2"> 
                                                    <label for="paymentmode" class="">Payment Mode</label>
                                               </div>
                                               <div class="col-sm-4">
                                                  <select class="form-control" name="paymentmode" id="paymentmode">
                                                                   <option value="null">-Please-Select</option>
                                                                   <option value="cash">Cash</option>
                                                                   <option value="credit">Credit Card</option>
                                                                   <option value="debit">Debit Card</option>
                                                                   
                                                           </select>
                                               </div>
                                         
                                       </div>      
                                          <%
                               	   }
                                }               
                                 catch(Exception e)
                                 {
                            	     System.out.print(e);
                                 }
                           
                            
                              %>         
                                       <input type="submit" class="btn btn-info btn-save mt-3 " value="Update Order">              
                             </form>                
               </div>	   	       	 
	   	       </div>	 	
	 </div>
</div>    
 



<script type="text/javascript">
	
/* 	$('document').ready(function(){
          $('#totalprice').click(function() {
        	  var q=document.getElementById('quantity').value;
        	     var u=document.getElementById('unit-price').value;
        	     var total=q*u;

        	     document.getElementById('totalprice').value=total;
		});
          $('#due-price').click(function() {
        	    var q=document.getElementById('quantity').value;
        	     var u=document.getElementById('unit-price').value;
        	     var total=q*u;
        	     var ad=document.getElementById('advance-price').value;
        	     var due=total-ad;

        	     document.getElementById('due-price').value=due;
		});
          
       

	}); */


</script>

</body>
</html>