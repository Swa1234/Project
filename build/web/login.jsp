<%-- 
    Document   : checkout
    Created on : Oct 10, 2017, 11:58:40 AM
    Author     : ngquangdat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Đăng nhập / Đăng ký</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<c:import url='header.html' charEncoding='utf-8' />

	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Đăng nhập vào tài khoản của bạn</h2>
						<form action="DoLogin">
                                                    <input type="text" name="txtUsername" placeholder="Tên đăng nhập" />
							<input type="password" name="txtPassword" placeholder="Mật khẩu" />
<!--							<span>
								<input type="checkbox" class="checkbox"> 
								Lưu mật khẩu
							</span>-->
							<button type="submit" class="btn btn-default">Đăng Nhập</button>
						</form>
                                                
                                                <c:if test="${sessionScope.LoginError != null}" >
                                                    <h2 style="color: red">${sessionScope.LoginError}</h2>
                                                    <%
                                                    if(session.getAttribute("LoginError") != null){
                                                        session.removeAttribute("LoginError");
                                                    }
                                                    %>
                                                </c:if>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">Hoặc</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>Đăng ký người dùng mới!</h2>
						<form action="#">
							<input type="text" placeholder="Tên tài khoản"/>
							<input type="password" placeholder="Mật khẩu"/>
							<input type="text" placeholder="Tên người dùng"/>
							<input type="email" placeholder="Địa chỉ Email"/>
							<input type="text" placeholder="Địa chỉ"/>
							<input type="text" placeholder="Điện thoại liên hệ"/>			
							<button type="submit" class="btn btn-default">Đăng ký</button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->

	

	<c:import url='footer.html' charEncoding='utf-8' />
	


    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
