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
<title>Print Receipt</title>
<link rel="stylesheet" type="text/css" href="assets/libraryfile/bootstrap.min.css">
<script src="assets/libraryfile/jquery-3.4.1.min.js"></script> 
	 <style type="text/css">
	 	
	 	body
	 	{
	 		
	 		background-color: #e4b118;
        
	 	}
   table tr td, table tr th {
      padding: 8px;
    }
    
	 	.main-card
	 	{
            margin-top: 30px;
            background-color: #e9ecef;
            padding-bottom: 20px;

           

	 	}
    .main-card-content
    {
     /* padding-bottom: 10px;*/
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
      
     
        .btn-print
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
                        <div id="print-content">
                                <form>
                                      <h2 class="mt-3 text-center">Mohit Cafe</h2>
                                      <h3>Advance Order Receipt</h3> 
                                <%
                                 try
                                {
                                	 
                                
                                      ResultSet rs=(ResultSet)request.getAttribute("data");
                                     
                               	   while(rs.next())
                               	   {
                               		  %>
                               		   <table>
                                             <tr>
                                                  <td class="font-weight-bold">Advance Order Number</td>
                                                  <td class="font-weight-bold">:</td>
                                                  <td><%=rs.getInt(1) %></td> 
                                             </tr>
                                            <tr>
                                                  <td class="font-weight-bold">Customer Name </td>
                                                   <td class="font-weight-bold">:</td>
                                                  <td><%=rs.getString("c_name") %></td>
                                             </tr>
                                             <tr>
                                                  <td class="font-weight-bold">Mobile Number </td>
                                                   <td class="font-weight-bold">:</td>
                                                  <td><%=rs.getLong("mobile") %></td>
                                             </tr>
                                              <tr>
                                                  <td class="font-weight-bold">Category</td>
                                                   <td class="font-weight-bold">:</td>
                                                  <td><%=rs.getString("category") %></td>
                                             </tr>
                                              <tr>
                                                  <td class="font-weight-bold">Order Date </td>
                                                   <td class="font-weight-bold">:</td>
                                                  <td><%=rs.getString("order_date") %></td>
                                             </tr>
                                              <tr>
                                                  <td class="font-weight-bold">Delivery Date</td>
                                                   <td class="font-weight-bold">:</td>
                                                  <td><%=rs.getString("delivery_date") %></td>
                                             </tr>
                                             <tr>
                                                  <td class="font-weight-bold">Order Status</td>
                                                   <td class="font-weight-bold">:</td>
                                                  <td><%=rs.getString("order_status") %></td>
                                             </tr>
                                             
                                      </table>
                                     
                                    <table border="2px" class="table  mt-3 table-responsive-sm table-responsive-lg">
                                      <thead>
                                         <tr class="bg-info text-white">
                                            <th>Item</th>
                                            <th>Quantity</th>
                                            <th>Unit Price</th>
                                            <th>Total</th>
                                            <th>Advance Rs.</th>
                                            <th>Due</th>
                                         </tr>
                                      </thead>
                                      <tbody>
                                             <tr>
                                                   <td ><%=rs.getString("cake_name") %></td>
                                                   <td ><%=rs.getInt("quantity") %></td>
                                                    <td >Rs.<%=rs.getFloat("unit_price") %></td>
                                                     <td >Rs.<%=rs.getFloat("total_price") %></td>
                                                       <td >Rs.<%=rs.getFloat("advance_price") %></td>
                                                         <td >Rs.<%=rs.getFloat("due_price") %></td>
                                             </tr>
                                      </tbody>
                                   </table>
                                    <label class="font-weight-bold">Payment Mode  :</label> <span>&nbsp; <%=rs.getString("payment_mode") %></span><br>     
                              
                               		 <%
                               	   }
                               	 }
                                catch(Exception e)
                                {
                                	
                                }
                                 
                                %>   
                        </form>
               
                        </div>
                        <button onclick="printOrder('print-content')" class="btn btn-info mt-3 btn-print">Print Receipt</button>
               </div>	   	       	 
	   	   </div>	
	 </div>
</div>    
 



<script type="text/javascript">
	
  function printOrder(paravalue) 
  {
     var backup= document.body.innerHTML;
     var divcontent=document.getElementById(paravalue).innerHTML;
     document.body.innerHTML=divcontent;
     window.print();
     document.body.innerHTML=backup;
  }


</script>

</body>
</html>