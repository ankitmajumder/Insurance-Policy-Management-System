<%-- 
    Document   : Admin
    Created on : 20 Mar, 2021, 1:04:23 PM
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
       <form action="Admins" method="post">
                <table>
                    <tr>
                        <td>Enter UserName:</td>
                        <td> <input type="text" name="name">  </td>
                    </tr>
                      <tr>
                        <td>Enter Password:</td>
                        <td> <input type="text" name="password">  </td>
                    </tr>
                    
                    <tr> <td> <input type="submit" value="Lgino" ></td> </tr>
                </table>
            </form>
    </body>
</html>
