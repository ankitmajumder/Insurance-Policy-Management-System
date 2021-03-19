
<%@page import="exavalueBeans.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ExaValu_Insurance</title>

        <link rel="stylesheet" href="css/home1.css">
        <link rel="stylesheet" href="css/w3.css">
        <script type="text/javascript">
            window.history.forward();
            function noBack()
            {
                window.onbeforeunload = function () {
                    return "Your work will be lost.";
                };
            }
        </script>
    </head>

    <body onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload="">
        <%
            User user = (User) request.getSession().getAttribute("user");

        %>
              <jsp:include page="header.jsp" />
        

           <div class="circle" id="circle" align="center"><h1>Welcome to ExaValu</h1></div> 
        <script type="text/javascript">
            document.getElementById("circle").onclick = function () {

                document.getElementById("circle").style.display = "none";

            }
        </script>  
        Enter Policy name:     <input type="text">   <a href="javascript:void(0);" onclick="addElement();">+</a>
        
              <div id="content"> </div>
        <script>
            var intTextBox = 0;
            function addElement() {
    intTextBox++;
    var objNewDiv = document.createElement('div');
    objNewDiv.setAttribute('id', 'div_' + intTextBox);
    objNewDiv.innerHTML = 'Enter Policy name' + ': <input type="text" id="tb_' + intTextBox + '" name="tb_' + intTextBox + '"/>';
    document.getElementById('content').appendChild(objNewDiv);
}

        </script>
        <br>
        <div class="w3-content w3-display-container">
            <img class="mySlides" src="image/p2.jpg" style="width:100%">

            <img class="mySlides" src="image/p1.jpg" style="width:80%; height: 80%;">
            <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
                <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
                <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
                <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>

            </div>
        </div>




        <script>
            var slideIndex = 1;
            showDivs(slideIndex);

            function plusDivs(n) {
                showDivs(slideIndex += n);
            }

            function currentDiv(n) {
                showDivs(slideIndex = n);
            }

            function showDivs(n) {
                var i;
                var x = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("demo");
                if (n > x.length) {
                    slideIndex = 1
                }
                if (n < 1) {
                    slideIndex = x.length
                }
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" w3-white", "");
                }
                x[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " w3-white";
            }
        </script>




    </body>

</html>
