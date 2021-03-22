<%@page import="exavalueBeans.CompanyLogin"%>
<%@page import="exavaluModel.PolicyModel"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="exavalueBeans.policy"%>
<%@page import="exavalueBeans.User"%>
<%@page language="java" import="java.util.*" %>
<html>
    <head>
        <title>Data Page</title>

        <!--        <link rel="stylesheet" href="css/table.css">-->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

        <link rel="stylesheet" href="css/home1.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <style> 
            #panel, #flip {
                padding: 5px;
                text-align: center;
                background-color: #e5eecc;
                border: solid 1px #c3c3c3;
            }

            #panel {
                padding: 50px;
                display: none;
            }
        </style>

        <script>
            $(document).ready(function () {
                $("#flip").click(function () {
                    $("#panel").slideToggle("slow");
                });
            });
        </script>

    </head>
    <body> 
        <%
            User user = (User) request.getSession().getAttribute("user");
            int ids= (int) request.getSession().getAttribute("companyId");
        %>
            
        
        
        

        <jsp:include page="header.jsp" />
        <br>

<div class="container">
    <form class="form-inline" method="post" action="PolicySearch">
    <input type="text" name="serachInput"  class="form-control" placeholder="">
    <input type="hidden" value="<%=ids %>" name="compId">
    <button type="submit" name="save" class="btn btn-primary">Search</button>
    </form>
    </div>

      



        <div class="table-responsive" id="sailorTableArea" id="myDIV" > 

            <table e id="sailorTable" class="table table-striped table-bordered" width="100%">
              
                <thead>
                    <tr>
                        <th>InFo</th>
                        <th>policyId</th>
                        <th>policy Name</th>
                        <th>expiry Date</th>
                        <th>Launch Date</th>
                        <th>Preimum Ammount</th>
                        <th>Coverage Ammount</th>
                        <th>Minimumage Coverage</th>
                        <th>MaxAge For Policy</th>
                        <th>Action</th>

                    </tr>

                </thead>

                <%            List<policy> list = PolicyModel.getAllPolicys(request);
                    for (policy p
                            : list) {

                %>

                <tr>    
                    <td><div id="flip" >i</div></td>

                    <td><%=p.getPid()%></td>
                    <td><%=p.getName()%></td>
                    <td><%=p.getExpiryDate()%></td>
                    <td><%=p.getLaunchDate()%></td>
                    <td><%=p.getPremimumAmmount()%></td>
                    <td><%=p.getCoverageammount()%></td>
                    <td><%=p.getMinumumage()%></td>
                    <td> <%=p.getMaxage()%>  </td>
                    <td colspan="3"><div id="panel"><%=p.getName()%></div></td>

                    <td><a href="EditPolicy.jsp?pid=<%=p.getPid()%>">Edit</a>|<a href="Delete?pid=<%=p.getPid()%>">Delete</a>
                    </td>


                </tr>
                <%}%>


            </table>
                <button > <a href="AddPolicy.jsp">AddPolicy</a> </button>
                
        </div>

        <script>
            function myFunction() {
                document.getElementById("myDiv").setAttribute("hidden", "");

            }


        </script> 


    </body>
</html>