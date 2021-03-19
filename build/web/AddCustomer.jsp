<%-- 
    Document   : AddCompany
    Created on : 15 Mar, 2021, 10:13:18 AM
    Author     : Thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="AddCustomer" method="post">
            <table>
                <tr>
                       <td>Enter  Customer Id=</td>
                    <td> <input type="text" name="customerId"  > </td>
                        
                </tr>
                <tr>
                    <td>Enter Customer Name=</td>
                    <td> <input type="text" name="customerName"  >  </td>
                </tr>
                 <tr>
                    <td>Enter Occupation=</td>
                    <td> <input type="text" name="occupation" >  </td>
                </tr>
                 <tr>
                    <td>Enter  Age=</td>
                    <td> <input type="text" name="age" >  </td>
                </tr>
                 <tr>
                    <td>Enter Gender=</td>
                    <td> <input type="text" name="gender" >  </td>
                </tr>
                 <tr>
                    <td>Enter AnnualIncome=</td>
                    <td> <input type="text" name="annualIncome" >  </td>
                </tr>
                 <tr>
                    <td>Enter Email=</td>
                    <td> <input type="text" name="email"  >  </td>
                </tr>
                 <tr>
                    <td>Enter phone Number=</td>
                    <td> <input type="text" name="phoneNumber" >  </td>
                </tr>
                 <tr>
                    <td>Enter  AddressOne=</td>
                    <td> <input type="text" name="addressOne" >  </td>
                </tr>
                 <tr>
                    <td>Enter Addresstwo =</td>
                    <td> <input type="text" name="addresstwo" >  </td>
                </tr>
                 <tr>
                    <td>Enter City=</td>
                    <td> <input type="text" name="city" >  </td>
                </tr>
                 <tr>
                    <td>Enter State=</td>
                    <td> <input type="text" name="state" >  </td>
                </tr>
                 <tr>
                    <td>Enter Country=</td>
                    <td> <input type="text" name="country" >  </td>
                </tr>
                 <tr>
                    <td>Enter pincode=</td>
                    <td> <input type="text" name="pincode" >  </td>
                </tr>
                
                <tr> <td> <input type="submit" value="Add"> </td> </tr>
            </table>
            
        </form>
        
    </body>
</html>
