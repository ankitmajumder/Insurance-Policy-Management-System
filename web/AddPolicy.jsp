<%-- 
    Document   : AddPolicy
    Created on : 13 Mar, 2021, 9:46:47 PM
    Author     : Thomas
--%>

<%@page import="exavalueBeans.CompanyLogin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
        
       

        
        
    </head>
    <body>
        Customer id:
       <form action="AddPolicy" method="post">
            <table>
                <tr>
                       <td>Enter Policy Id=</td>
                    <td> <input type="text" name="pid"  > </td>
                        
                </tr>
                <tr>
                    <td>Enter Policy Name=</td>
                    <td> <input type="text" name="pname"  >  </td>
                </tr>
                 <tr>
                    <td>Enter Policy ExpiaryDate=</td>
                    <td> <input type="text" name="ExpiaryDate" >  </td>
                </tr>
                 <tr>
                    <td>Enter Policy LaunchDate=</td>
                    <td> <input type="text" name="LaunchDate" >  </td>
                </tr>
                 <tr>
                    <td>Enter Policy premimumAmmount=</td>
                    <td> <input type="text" name="premimumAmmount" >  </td>
                </tr>
                 <tr>
                    <td>Enter Policy coverageAmmount=</td>
                    <td> <input type="text" name="coverageAmmount" >  </td>
                </tr>
                 <tr>
                    <td>Enter Policy minimumCoverage=</td>
                    <td> <input type="text" name="minimumCoverage"  >  </td>
                </tr>
                 <tr>
                    <td>Enter Policy Maxage=</td>
                    <td> <input type="text" name="Maxage" >  </td>
                </tr>
                <tr> <td> <input type="submit" value="Add"> </td> </tr>
            </table>
            
        </form>
    </body>
</html>
