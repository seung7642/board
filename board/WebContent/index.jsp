<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<%@ page import = "java.net.URLEncoder" %>
<%@ page import = "java.net.URLDecoder" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	Cookie cookie = new Cookie("flag_cookie", URLEncoder.encode("써트", "utf-8"));
	response.addCookie(cookie);
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>CTF</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath }/CSS/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/CSS/cover.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- cookieMap.put(flag_cookie, "i-Keeper");  -->
  </head>

  <body>

<%
Cookie[] cookies = request.getCookies();
Cookie flagCookie = null;
if(cookies!=null) {
	for(int i=0; i<cookies.length; i++) {
		if(cookies[i].getName().equals("flag_cookie")){
			flagCookie = cookies[i];
		}
	}
}

String flag = URLDecoder.decode(flagCookie.getValue(), "utf-8");
if(flag.equals("i-Keeper")){
%>
	<script>alert('flag = aS1LZWVwZXI=' )</script>
<%
}
%>
    <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <div class="masthead clearfix">
				<div id="loginForm">
	                <u:isLogin>
						${authUser.name}님, 안녕하세요.
						<a href="logout.do">[로그아웃]</a>
						<a href="changePwd.do">[암호변경]</a>
					</u:isLogin>
					<u:notLogin>
						<a href="join.do">[회원가입]</a>
						<a href="login.do">[로그인]</a>
					</u:notLogin>
					<br/>
				</div>
            <div class="inner">
              <h3 class="masthead-brand">WebPage</h3>
              <nav>
                <ul class="nav masthead-nav">
                  <li class="active"><a href="#">Home</a></li>
                  <li><a href="article/list.do">board</a></li>
                  <li><a href="#">Contact</a></li>
                </ul>
              </nav>
            </div>
          </div>

          <div class="inner cover">
            <h1 class="cover-heading">Content Head</h1>
            <p class="lead">Hello, World</p>
            <p class="lead">
              <a href="#" class="btn btn-lg btn-default">Function</a>
            </p>
          </div>

          <div class="mastfoot">
            <div class="inner">
              <p>i-Keeper</p>
            </div>
          </div>

        </div>

      </div>

    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>