<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="<c:url value = "/resources/js/jquery-3.6.0.min.js" />"></script>
    <script src="<c:url value = "/resources/js/jquery-ui.min.js" />"></script>
    <script src="<c:url value = "/resources/js/bootstrap.min.js" />"></script>
    <script src="<c:url value = "/resources/js/bootstrap.bundle.min.js" />"></script>

    <link href="<c:url value = "/resources/css/main.css" />" rel="stylesheet"/>
    <link href="<c:url value = "/resources/css/util.css" />" rel="stylesheet"/>

    <style>




        /*//////////////////////////////////////////////////////////////////
        [ FONT ]*/

        @font-face {
            font-family: Poppins-Regular;
            src: url('../fonts/poppins/Poppins-Regular.ttf');
        }

        @font-face {
            font-family: Poppins-Medium;
            src: url('../fonts/poppins/Poppins-Medium.ttf');
        }

        @font-face {
            font-family: Poppins-Bold;
            src: url('../fonts/poppins/Poppins-Bold.ttf');
        }

        @font-face {
            font-family: Poppins-SemiBold;
            src: url('../fonts/poppins/Poppins-SemiBold.ttf');
        }




        /*//////////////////////////////////////////////////////////////////
        [ RESTYLE TAG ]*/

        * {
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
            font-family: Poppins-Regular, sans-serif;
        }

        /*---------------------------------------------*/
        a {
            font-family: Poppins-Regular;
            font-size: 14px;
            line-height: 1.7;
            color: #666666;
            margin: 0px;
            transition: all 0.4s;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
        }

        a:focus {
            outline: none !important;
        }

        a:hover {
            text-decoration: none;
            color: #6a7dfe;
            color: -webkit-linear-gradient(left, #21d4fd, #b721ff);
            color: -o-linear-gradient(left, #21d4fd, #b721ff);
            color: -moz-linear-gradient(left, #21d4fd, #b721ff);
            color: linear-gradient(left, #21d4fd, #b721ff);
        }

        /*---------------------------------------------*/
        h1,h2,h3,h4,h5,h6 {
            margin: 0px;
        }

        p {
            font-family: Poppins-Regular;
            font-size: 14px;
            line-height: 1.7;
            color: #666666;
            margin: 0px;
        }

        ul, li {
            margin: 0px;
            list-style-type: none;
        }


        /*---------------------------------------------*/
        input {
            outline: none;
            border: none;
        }

        textarea {
            outline: none;
            border: none;
        }

        textarea:focus, input:focus {
            border-color: transparent !important;
        }

        input:focus::-webkit-input-placeholder { color:transparent; }
        input:focus:-moz-placeholder { color:transparent; }
        input:focus::-moz-placeholder { color:transparent; }
        input:focus:-ms-input-placeholder { color:transparent; }

        textarea:focus::-webkit-input-placeholder { color:transparent; }
        textarea:focus:-moz-placeholder { color:transparent; }
        textarea:focus::-moz-placeholder { color:transparent; }
        textarea:focus:-ms-input-placeholder { color:transparent; }

        input::-webkit-input-placeholder { color: #adadad;}
        input:-moz-placeholder { color: #adadad;}
        input::-moz-placeholder { color: #adadad;}
        input:-ms-input-placeholder { color: #adadad;}

        textarea::-webkit-input-placeholder { color: #adadad;}
        textarea:-moz-placeholder { color: #adadad;}
        textarea::-moz-placeholder { color: #adadad;}
        textarea:-ms-input-placeholder { color: #adadad;}

        /*---------------------------------------------*/
        button {
            outline: none !important;
            border: none;
            background: transparent;
        }

        button:hover {
            cursor: pointer;
        }

        iframe {
            border: none !important;
        }


        /*//////////////////////////////////////////////////////////////////
        [ Utility ]*/
        .txt1 {
            font-family: Poppins-Regular;
            font-size: 13px;
            color: #666666;
            line-height: 1.5;
        }

        .txt2 {
            font-family: Poppins-Regular;
            font-size: 13px;
            color: #333333;
            line-height: 1.5;
        }

        /*//////////////////////////////////////////////////////////////////
        [ login ]*/

        .limiter {
            width: 100%;
            margin: 0 auto;
        }

        .container-login100 {
            width: 100%;
            min-height: 100vh;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            padding: 15px;
            background: #f2f2f2;
        }

        .wrap-login100 {
            width: 390px;
            background: #fff;
            border-radius: 10px;
            overflow: hidden;
            padding: 77px 55px 33px 55px;

            box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
            -moz-box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
            -webkit-box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
            -o-box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
            -ms-box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
        }


        /*------------------------------------------------------------------
        [ Form ]*/

        .login100-form {
            width: 100%;
        }

        .login100-form-title {
            display: block;
            font-family: Poppins-Bold;
            font-size: 30px;
            color: #333333;
            line-height: 1.2;
            text-align: center;
        }
        .login100-form-title i {
            font-size: 60px;
        }

        /*------------------------------------------------------------------
        [ Input ]*/

        .wrap-input100 {
            width: 100%;
            position: relative;
            border-bottom: 2px solid #adadad;
            margin-bottom: 37px;
        }

        .input100 {
            font-family: Poppins-Regular;
            font-size: 15px;
            color: #555555;
            line-height: 1.2;

            display: block;
            width: 100%;
            height: 45px;
            background: transparent;
            padding: 0 5px;
        }

        /*---------------------------------------------*/
        .focus-input100 {
            position: absolute;
            display: block;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            pointer-events: none;
        }

        .focus-input100::before {
            content: "";
            display: block;
            position: absolute;
            bottom: -2px;
            left: 0;
            width: 0;
            height: 2px;

            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
            transition: all 0.4s;

            background: #6a7dfe;
            background: -webkit-linear-gradient(left, #21d4fd, #b721ff);
            background: -o-linear-gradient(left, #21d4fd, #b721ff);
            background: -moz-linear-gradient(left, #21d4fd, #b721ff);
            background: linear-gradient(left, #21d4fd, #b721ff);
        }

        .focus-input100::after {
            font-family: Poppins-Regular;
            font-size: 15px;
            color: #999999;
            line-height: 1.2;

            content: attr(data-placeholder);
            display: block;
            width: 100%;
            position: absolute;
            top: 16px;
            left: 0px;
            padding-left: 5px;

            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
            transition: all 0.4s;
        }

        .input100:focus + .focus-input100::after {
            top: -15px;
        }

        .input100:focus + .focus-input100::before {
            width: 100%;
        }

        .has-val.input100 + .focus-input100::after {
            top: -15px;
        }

        .has-val.input100 + .focus-input100::before {
            width: 100%;
        }

        /*---------------------------------------------*/
        .btn-show-pass {
            font-size: 15px;
            color: #999999;

            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            align-items: center;
            position: absolute;
            height: 100%;
            top: 0;
            right: 0;
            padding-right: 5px;
            cursor: pointer;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
            transition: all 0.4s;
        }

        .btn-show-pass:hover {
            color: #6a7dfe;
            color: -webkit-linear-gradient(left, #21d4fd, #b721ff);
            color: -o-linear-gradient(left, #21d4fd, #b721ff);
            color: -moz-linear-gradient(left, #21d4fd, #b721ff);
            color: linear-gradient(left, #21d4fd, #b721ff);
        }

        .btn-show-pass.active {
            color: #6a7dfe;
            color: -webkit-linear-gradient(left, #21d4fd, #b721ff);
            color: -o-linear-gradient(left, #21d4fd, #b721ff);
            color: -moz-linear-gradient(left, #21d4fd, #b721ff);
            color: linear-gradient(left, #21d4fd, #b721ff);
        }



        /*------------------------------------------------------------------
        [ Button ]*/
        .container-login100-form-btn {
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding-top: 13px;
        }

        .wrap-login100-form-btn {
            width: 100%;
            display: block;
            position: relative;
            z-index: 1;
            border-radius: 25px;
            overflow: hidden;
            margin: 0 auto;
        }

        .login100-form-bgbtn {
            position: absolute;
            z-index: -1;
            width: 300%;
            height: 100%;
            background: #a64bf4;
            background: -webkit-linear-gradient(right, #21d4fd, #b721ff, #21d4fd, #b721ff);
            background: -o-linear-gradient(right, #21d4fd, #b721ff, #21d4fd, #b721ff);
            background: -moz-linear-gradient(right, #21d4fd, #b721ff, #21d4fd, #b721ff);
            background: linear-gradient(right, #21d4fd, #b721ff, #21d4fd, #b721ff);
            top: 0;
            left: -100%;

            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
            transition: all 0.4s;
        }

        .login100-form-btn {
            font-family: Poppins-Medium;
            font-size: 15px;
            color: #fff;
            line-height: 1.2;
            text-transform: uppercase;

            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0 20px;
            width: 100%;
            height: 50px;
        }

        .wrap-login100-form-btn:hover .login100-form-bgbtn {
            left: 0;
        }


        /*------------------------------------------------------------------
        [ Responsive ]*/

        @media (max-width: 576px) {
            .wrap-login100 {
                padding: 77px 15px 33px 15px;
            }
        }



        /*------------------------------------------------------------------
        [ Alert validate ]*/

        .validate-input {
            position: relative;
        }

        .alert-validate::before {
            content: attr(data-validate);
            position: absolute;
            max-width: 70%;
            background-color: #fff;
            border: 1px solid #c80000;
            border-radius: 2px;
            padding: 4px 25px 4px 10px;
            top: 50%;
            -webkit-transform: translateY(-50%);
            -moz-transform: translateY(-50%);
            -ms-transform: translateY(-50%);
            -o-transform: translateY(-50%);
            transform: translateY(-50%);
            right: 0px;
            pointer-events: none;

            font-family: Poppins-Regular;
            color: #c80000;
            font-size: 13px;
            line-height: 1.4;
            text-align: left;

            visibility: hidden;
            opacity: 0;

            -webkit-transition: opacity 0.4s;
            -o-transition: opacity 0.4s;
            -moz-transition: opacity 0.4s;
            transition: opacity 0.4s;
        }

        .alert-validate::after {
            content: "\f06a";
            font-family: FontAwesome;
            font-size: 16px;
            color: #c80000;

            display: block;
            position: absolute;
            background-color: #fff;
            top: 50%;
            -webkit-transform: translateY(-50%);
            -moz-transform: translateY(-50%);
            -ms-transform: translateY(-50%);
            -o-transform: translateY(-50%);
            transform: translateY(-50%);
            right: 5px;
        }

        .alert-validate:hover:before {
            visibility: visible;
            opacity: 1;
        }

        @media (max-width: 992px) {
            .alert-validate::before {
                visibility: visible;
                opacity: 1;
            }
        }
    </style>
</head>
<body>
<div>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <form class="login100-form validate-form" action="<c:url value='/login-process' />" method="POST">
					<span class="login100-form-title p-b-26">
						Welcome
					</span>
                    <span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span>

                    <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
                        <input class="input100" type="text" name="username" id="username">
                        <span class="focus-input100" data-placeholder="Email"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
                        <input class="input100" name="password" id="password" type="password">
                        <span class="focus-input100" data-placeholder="Password"></span>
                    </div>

                    <div class="container-login100-form-btn">
                        <div class="wrap-login100-form-btn" style="height: 80px !important;">
                            <input type="submit" lass="login100-form-btn" value="Đăng nhập">
                        </div>
                    </div>

                    <div style="margin-left: 50px; margin-top: 10px;">
                        <%
                            String err = request.getParameter("error");
                            if ("true".equals(err)) {
                                out.print("<h5 style=\"color: red;\">Sai thông tin đăng nhập</h5>");
                            }
                        %>
                    </div>

                    <div class="text-center p-t-115">
						<span class="txt1">
							Don’t have an account?
						</span>

                        <a class="txt2" href="#">
                            Sign Up
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script>

</script>
</html>