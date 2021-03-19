
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login V3</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="icon" type="image/png" href="images/icons/favicon.ico" />

        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">

        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">

        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">

        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">

        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">

        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">

        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <script>
            function validateform() {
                var password = document.myform.password.value;
                var x = document.myform.email_address.value;
                var atposition = x.indexOf("@");
                var dotposition = x.lastIndexOf(".");

                if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= x.length) {
                    alert("Please enter a valid e-mail address");
                    return false;
                } else if (password.length < 6) {
                    alert("Password must be at least 6 characters long.");
                    return false;
                }
            }
        </script>




    </head>
    <body>
        <div class="limiter">
            <div class="container-login100" style="background-image: url('image/p1.jpg');">
                <div class="wrap-login100">

                    <form class="login100-form validate-form"   name="myform"     method="post" action="login" onsubmit="return validateform()" >

                        <span class="login100-form-logo">
                            <img src="https://www.exavalu.com/wp-content/uploads/2019/05/exavaluLogo.png" height="50" width="120">
                        </span>
                        <span class="login100-form-title p-b-34 p-t-27">
                            Log in
                        </span>
                        <div class="wrap-input100 validate-input" data-validate="Enter username">
                            <input class="input100" type="text" name="email_address" placeholder="abc@gmail.com">
                            <span class="focus-input100" data-placeholder="&#xf207;"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="Enter password">
                            <input class="input100" type="password" name="password" placeholder="Password">
                            <span class="focus-input100" data-placeholder="&#xf191;"></span>
                        </div>
                        <div class="contact100-form-checkbox">
                            <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                            <label class="label-checkbox100" for="ckb1">
                                Remember me
                            </label>
                        </div>
                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn">
                                Login
                            </button>
                        </div>
                        <div class="text-center p-t-90">
                            <a class="txt1" href="forget.jsp">
                                Forgot Password?
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div id="dropDownSelect1"></div>

        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>

        <script src="vendor/animsition/js/animsition.min.js"></script>

        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

        <script src="vendor/select2/select2.min.js"></script>

        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>

        <script src="vendor/countdowntime/countdowntime.js"></script>

        <script src="js/main.js"></script>

        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
                        window.dataLayer = window.dataLayer || [];
                        function gtag() {
                            dataLayer.push(arguments);
                        }
                        gtag('js', new Date());

                        gtag('config', 'UA-23581568-13');
        </script>
    </body>
</html>
