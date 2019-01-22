<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap-3.3.7-dist/css/bootstrapValidator.css">
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>ckew后台管理页面</title>
</head>
<body>
<div class="container">
	<div class="row clearfix" style="margin-top: 100px">
		<div class="col-md-2 column">
			<div class="panel-group" id="panel-144583">
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-144583" href="#panel-element-33979">试题管理</a>
					</div>
					<div id="panel-element-33979" class="panel-collapse collapse in">
						<div class="panel-body">
							<a href="allexam.do" target="right">查看所有试题</a>
						</div>
						<div class="panel-body">
							<a href="upexam.jsp" target="right">添加试题</a>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-144583" href="#panel-element-747659">测试管理</a>
					</div>
					<div id="panel-element-747659" class="panel-collapse collapse">
						<div class="panel-body">
							<a href="alltest.do" target="right">查看所有测试</a>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-144583" href="#panel-element-747650">查看留言</a>
					</div>
					<div id="panel-element-747650" class="panel-collapse collapse">
						<div class="panel-body">
							<a href="showmessage.do" target="right">查看留言</a>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						 <a class="panel-title" data-toggle="collapse" data-parent="#panel-144583" href="#panel-element-747655">退出管理系统</a>
					</div>
					<div id="panel-element-747655" class="panel-collapse collapse">
						<div class="panel-body">
							<a href="logout.do">退出</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-10 column">
		     <iframe style="border: 0px;" name="right" width="1000" height="800"></iframe>
		</div>
	</div>
</div>
</body>
</html>