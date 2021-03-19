<%-- 
    Document   : EditCustomer
    Created on : 16 Mar, 2021, 8:40:39 PM
    Author     : Thomas
--%>
  <%@page import="exavalueBeans.Customer"%>
<%@page import="exavaluModel.CustomerModel"%>
<%
         String sid=request.getParameter("cid");  
         int cid=Integer.parseInt(sid);
       Customer  e=CustomerModel.getCustomerId(cid);  
        %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:include page="header.jsp" />
           
        <form action="EditCustomer" method="post">
            <table>
                <tr>
                    <td> <input type="hidden" name="customerId" value="<%=e.getCustomerId()%>" > </td>
                        
                </tr>
                <tr>
                    <td>Enter Customer Name=</td>
                    <td> <input type="text" name="customerName" value="<%= e.getCustomerName()%>" >  </td>
                </tr>
                 <tr>
                    <td>Enter Occupation=</td>
                    <td> <input type="text" name="occupation" value="<%= e.getOccupation()%>" >  </td>
                </tr>
                 <tr>
                    <td>Enter Age=</td>
                    <td> <input type="text" name="age" value="<%= e.getAge()%>" >  </td>
                </tr>
                 <tr>
                    <td>Enter gender=</td>
                    <td> <input type="text" name="gender" value="<%= e.getGender()%>" >  </td>
                </tr>
                 <tr>
                    <td>Enter anuual income=</td>
                    <td> <input type="text" name="annualIncome" value="<%= e.getAnnualIncome()%>" >  </td>
                </tr>
                 <tr>
                    <td>Enter Email=</td>
                    <td> <input type="text" name="email" value="<%= e.getContactAddress().getEmail()%>" >  </td>
                </tr>
                 <tr>
                    <td>Enter  Phone Number=</td>
                    <td> <input type="text" name="phoneNumber" value="<%= e.getContactAddress().getPhoneNumber()%>" >  </td>
                </tr>
                <tr>
                    <td>Enter  Address one =</td>
                    <td> <input type="text" name="addressOne" value="<%= e.getAddress().getAddressOne()%>" >  </td>
                </tr>
                <tr>
                    <td>Enter  Address Two=</td>
                    <td> <input type="text" name="addressTwo" value="<%= e.getAddress().getAddressTwo()%>" >  </td>
                </tr>
                <tr>
                    <td>Enter  City=</td>
                    <td> <input type="text" name="city" value="<%= e.getAddress().getCity()%>" >  </td>
                </tr>
                <tr>
                    <td>Enter  State=</td>
                    <td> <input type="text" name="state" value="<%= e.getAddress().getState()%>" >  </td>
                </tr>
                <tr>
                    <td>Enter  country=</td>
                    <td> <input type="text" name="country" value="<%= e.getAddress().getCountry()%>" >  </td>
                </tr>
                <tr>
                    <td>Enter  PinCode=</td>
                    <td> <input type="text" name="pinCode" value="<%= e.getAddress().getPincode()%>" >  </td>
                </tr>
                <tr> <td> <input type="submit" value="Update"> </td> </tr>
            </table>
    </body>
</html>
