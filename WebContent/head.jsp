<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap-3.3.7-dist/css/bootstrapValidator.css">
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<img alt="" src="images/title.bmp" onclick="window.location.href='index.do'"/> 
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
					    <c:if test="${loginUser==null }">
						<li>
							 <a href="login.jsp">登录注册</a>
						</li>
						</c:if>
						<c:if test="${loginUser!=null }">
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">欢迎您：${loginUser.username }<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="info.do">个人中心</a>
								</li>
								<li>
									 <a href="mytest.do">我的测评</a>
								</li>
								
								<li class="divider">
								</li>
								<li>
									 <a href="logout.do">退出登录</a>
								</li>
							</ul>
						</li>
						</c:if>
					</ul>
				</div>
				
			</nav>
		</div>
	</div>
</body>
</html>