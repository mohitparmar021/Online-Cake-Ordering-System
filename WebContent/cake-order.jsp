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
<title>Search order</title>
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
         
            padding-bottom: 50px;    
	 	}
        .main-card-content
    {
      padding-bottom: 35px;
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
       .main-card-content
       {

	     }
       .btn-search
       {
        border-radius: 0px;
        width: 20%;
        font-size: 20px;
        padding: 8px;
        margin-left: 10px;

       }
      
        .btn-search2 
       {
        border-radius: 0px;
        width: 30%;
        font-size: 20px;
        padding: 8px;
        margin-left: 15px;
       }
        .btn-search-submit
       {
        border-radius: 0px;
        width: 15%;
        padding: 8px;
        margin-bottom: 20px;
       }

       #cust_name,#date,#order_id {
        display: none;
       }
      
     
	 </style>
</head>
<body>

<div class="container">
	
	 <div class="main-card ">
           <%@ include file="views/admin-navbar.jsp" %>	
	   	       <div class="main-card-content container">
	   	       	   <h2 class="mt-4">Search Order </h2>
                 
                 <div class="row mt-5">
 
                       <div class="col-sm-12">
                             <button class="btn btn-info btn-search" id="btn-search-id" >Order Id</button>
                              <button class="btn btn-info btn-search" id="btn-search-name">Cust. Name</button>
                              <button class="btn btn-info btn-search" id="btn-search-date">Date</button>
                            <!--   <button class="btn btn-info btn-search" id="btn-search-total">Total (Amount)</button> -->
                       </div>
                 </div> 
                 
                        <div class="card mt-4"id="view_order">
                       <div class="container">
                        <h2 class="mt-4">Details Of Order</h2>
                         
                         <table border="2px" class="table  mt-3 table-responsive-sm table-responsive-lg">
                                      <thead>
                                    <tr class="bg-info text-white">
                                            <th>Order Id</th>
                                            <th>Customer Name</th>
                                            <th>Item</th>
                                            <th>Quantity</th>
                                            <th>Total</th>
                                            <th>Action</th>
                                         </tr>
                                      </thead>
                                      <tbody>
                                         <%
                                Connection con=MyConnection.getMyConnection();
                                 try
                                { 
                                	   Statement stmt=con.createStatement();
                                       String query="select * from order_info;";
                                       ResultSet rs=stmt.executeQuery(query);
                                     
                               	   while(rs.next())
                               	   {
                               		  %>
                                         
                                          <tr>
                                                   <td><%=rs.getInt("order_id") %></td>
                                                   <td ><%=rs.getString("customer_name") %></td>
                                                   <td ><%=rs.getString("cake_name") %></td>                                               
                                                   <td><%=rs.getInt("quantity") %></td>
                                                   <td >Rs. <%=rs.getFloat("total_price") %></td>
                                                   <td><a href="vieworderdetail.jsp?id=<%=rs.getInt(1) %>" >View Detail</a></td>
                                             </tr>
                                                
                               		 <%
                               	   }
                               	 }
                                catch(Exception e)
                                {
                                	
                                }
                                 
                                %>
                                      </tbody>
                           </table>
                       </div>
                   
               </div>  
                 
                 
                   <div class="card mt-5"id="order_id">
                       <div class="container">
                        <h2 class="mt-4">Search By Order Id</h2>
                         <form action="searchbyorderid" method="post">
                          <div class="row mt-5">
                                               <div class="col-sm-2">
                                                     <label for="order-id" class="mt-2">Order Id : </label>
                                               </div>
                                               <div class="col-sm-4">
                                                      <div class="form-group">
                                                          <input type="number" required name="order-id" id="order-id" class="form-control"> 
                                                      </div>  
                                               </div>
                                              
                                       </div>
                                 <input type="submit" name="" class="btn btn-info btn-search-submit mt-4" value="Search">      
                         </form>
                        
                       </div>
                   
                  </div>  
                    <div class="card mt-5"id="cust_name">
                       <div class="container">
                        <h2 class="mt-4">Search By Customer Name</h2>
                         <form action="searchbyname" method="post">
                          <div class="row mt-5">
                                               <div class="col-sm-2">
                                                     <label for="c-name" class="mt-2">Customer Name : </label>
                                               </div>
                                               <div class="col-sm-4">
                                                      <div class="form-group">
                                                          <input type="text" required name="c-name" id="c-name" class="form-control"> 
                                                      </div>  
                                               </div>
                                              
                                       </div>
                                 <input type="submit" name="" class="btn btn-info btn-search-submit mt-4" value="Search">      
                         </form>
                        
                       </div>
                   
                  </div>  
                  <div class="card mt-5"id="date">
                       <div class="container">
                        <h2 class="mt-4">Search By Date</h2>
                         <form action="searchbydate" method="post">
                          <div class="row mt-5">
                                               <div class="col-sm-2">
                                                     <label for="search-date-from" class="mt-2">From</label>
                                               </div>
                                               <div class="col-sm-4">
                                                      <div class="form-group">
                                                          <input type="date" required name="search-date-from" id="search-date-from" class="form-control"> 
                                                      </div>  
                                               </div>
                                                <div class="col-sm-2">
                                                     <label for="search-date-to" class="mt-2 ">To </label>
                                               </div>
                                               <div class="col-sm-4"> 
                                                       <div class="form-group">
                                                        <input type="date" required name="search-date-to" id="search-date-to" class="form-control"> 
                                                </div>
                                       </div>
                                <input type="submit" name="" class="btn btn-info btn-search-submit mt-4 ml-3" value="Search">     
                         </form>
                        
                       </div>
                   
                  </div>
          
            <!--       <div class="card mt-5" id="total">
                       <div class="container">
                        <h2 class="mt-4">Search For Total(Amount) in one Day</h2>
                          <form>
                                <div class="row  mt-5">
                                               <div class="col-sm-2">
                                                     <label form="total-from" class="mt-2">From</label>
                                               </div>
                                               <div class="col-sm-4">
                                                      <div class="form-group">
                                                          <input type="date" name="total-from" id="total-from" class="form-control"> 
                                                      </div>  
                                               </div>
                                                <div class="col-sm-2">
                                                     <label for="total-to" class="mt-2 ">To </label>
                                               </div>
                                               <div class="col-sm-4"> 
                                                       <div class="form-group">
                                                           <input type="date" name="total-to" id="total-to" class="form-control"> 
                                                        </div>
                                               </div>
                                       </div>
                                 <input type="submit" name="" class="btn btn-info btn-search-submit mt-4" value="Search">  
                         </form>
                       </div>
                   
                  </div> -->
	   </div>	 	
	 </div>
</div>    




<script type="text/javascript">
          
$('document').ready(function(){
           $('#btn-search-id').click(function(){
        	   $('#order_id').show();
               $('#cust_name').hide();
               $('#date').hide();
               $('#view_order').hide();
  
           });
           $('#btn-search-name').click(function(){
        	   $('#cust_name').show();
        	   $('#order_id').hide();
               $('#date').hide();
               $('#view_order').hide();
           });
           $('#btn-search-date').click(function(){
        	   $('#date').show();
        	   $('#order_id').hide();
               $('#cust_name').hide();
               $('#view_order').hide();
       });
         /*   $('#btn-search-total').click(function(){
        	   $('#order_id').hide();
               $('#cust_name').hide();
               $('#date').hide();
               $('#total').show();
                
              
           }); */
 
 
 
	});

</script>

</body>
</html>
