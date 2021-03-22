<%-- 
    Document   : Customers
    Created on : 15 Mar, 2021, 12:22:58 PM
    Author     : Thomas
--%>

<%@page import="exavalueBeans.Customer"%>
<%@page import="exavaluModel.CustomerModel"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
          <jsp:include page="header.jsp" />
             <%
            
            int ids= (int) request.getSession().getAttribute("companyId");
        %>
    </head>
    <div class="container">
    <form class="form-inline" method="post" action="CustomerSearch">
    <input type="text" name="serachInput"  class="form-control" placeholder="">
    <input type="hidden" value="<%=ids %>" name="compId">
    <button type="submit" name="save" class="btn btn-primary">Search</button>
    </form>
    </div>
    <body>
      
          <table>
              
                <thead>
                    <tr>
                        <th>CustomerId</th>
                        <th>CustomerName</th>
                        <th> Occupation</th>
                        <th> Age</th>
                        <th> gender</th>
                        <th>Annual Income</th>
                        <th>Customer Email</th>
                        <th>Copmany PhoneNumber</th>
                        <th>AddressOne</th>
                        <th>AddressTwo</th>
                        <th>City</th>
                        <th>state</th>
                        <th>Country</th>
                        <th>pincode</th>
                        <th>Action</th>
                        

                    </tr>

                </thead>

                <%    List<Customer> list = CustomerModel.getAllCustomer(request);
                    for (Customer p
                            : list) {

                %>

                <tr>    
                  

                    <td><%=p.getCustomerId()%></td>
                    <td><%=p.getCustomerName()%></td>
                    <td><%=p.getOccupation()%></td>
                    <td><%=p.getAge()%></td>
                    <td><%=p.getGender()%></td>
                    <td><%=p.getAnnualIncome()%></td>
                    <td><%=p.getContactAddress().getEmail() %></td>
                    <td><%=p.getContactAddress().getPhoneNumber() %></td>
                    <td><%=p.getAddress().getAddressOne()%></td>
                    <td><%=p.getAddress().getAddressTwo()%></td>
                    <td><%=p.getAddress().getCity()%></td>
                    <td><%=p.getAddress().getState()%></td>
                    <td><%=p.getAddress().getCountry()%></td>
                    <td><%=p.getAddress().getPincode()%></td>
                    <td><a href="EditCustomer.jsp?cid=<%=p.getCustomerId()%>">Edit</a>|<a href="CustomerDelete?cid=<%=p.getCustomerId()%>">Delete</a>|<a href="AssignPolicy.jsp?cid=<%=p.getCustomerId()%>">AssignPolicy</a>
                    </td>


                    


                </tr>
                <%}%>
                <button > <a href="AddCustomer.jsp">AddCustomer</a> </button>

            </table>
    </body>
</html>
