<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
</head>
<body>
	<%@include file="head.jsp"%>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-8 column">
				<div class="container">
					<div class="row clearfix">
							<div class="tabbable" id="tabs-692796">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#panel-623669"
										data-toggle="tab">修改密码</a></li>
									<li><a href="#panel-984445" data-toggle="tab">错题中心</a></li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane active" id="panel-623669">
										<form role="form" id="login1" action="changepassword.do"
											method="post">
											<input type="hidden" name="id" value="${loginUser.id }">
											<div class="form-group">
												<label for="oldpassword">原密码</label><input type="password"
													class="form-control" id="oldpassword" />
											</div>
											<div class="form-group">
												<label for="exampleInputPassword">新密码</label><input
													type="password" name="password" class="form-control"
													id="exampleInputPassword" />
											</div>
											<div class="form-group">
												<label for="exampleInputPassword1">确认密码</label><input
													type="password" class="form-control"
													id="exampleInputPassword1" />
											</div>

											<div class="form-group">
												<span id="loginInfo"></span>${msg}</div>
										</form>
										<button onclick="validatePassword()" class="btn btn-default">确认修改</button>
									</div>
									<div class="tab-pane" id="panel-984445">
										<table class="table">
											<thead>
												<tr>
													<th>错题题目</th>
													<th>我的答案</th>
													<th>正确答案</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${answerList }" var="answer">
													<tr class="success">
														<td>${answer.examid }</td>
														<td>${answer.context }</td>
														<td>${answer.score }</td>
														<td>
															<button onclick="deletea(id='${answer.id}')">删除</button>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						
					</div>
				</div>
			</div>
			<div class="col-md-4 column">
				
			</div>
		</div>
	</div>

	<footer style="text-align: center">
	<hr>
	<p class="am-padding-left">
		© 2018 <a href="#">山西农业大学北京海淀基地</a>. 作者:于斌
	</p>
	</br>
	</br>
	</br>
	</footer>
	<script type="text/javascript">
	function deletea(id){
		var r=confirm("确认要删除此错题?");
		if (r==true){
			$.ajax({
				type : "post",
				url : "removeanswer.do",
				data : {
					"answerid" : id
				},
				async : true,
				dataType : 'text',
				success : function(data) {
					alert(data);
					location.reload(true);
				},
				error : function(data) {
					alert("出错！请联系管理员" + data);
					isok = false;
				}
			});
		}
	}
	<!--实现动态改变页面进行改密操作 -->
		function validatePassword() {
			var username = $("#username").html();
			var password = $("#exampleInputPassword").val();
			var opassword = $("#oldpassword").val();
			var cpassword = $("#exampleInputPassword1").val();
			var isok = true;
			/* 判断密码是否为空 */
			if (opassword == "") {
				$("#loginInfo").html(
						"<b style='color:red;font-size:15px;'>原密码不能为空！</b>");
				$("#oldpassword").focus();
				isok = false;
				return;
			}
			if (password == "") {
				$("#loginInfo").html(
						"<b style='color:red;font-size:15px;'>密码不能为空！</b>");
				$("#exampleInputPassword").focus();
				isok = false;
				return;
			}
			if (cpassword == "") {
				$("#loginInfo").html(
						"<b style='color:red;font-size:15px;'>确认密码不能为空！</b>");
				$("#exampleInputPassword1").focus();
				isok = false;
				return;
			}
			if (cpassword != password) {
				$("#loginInfo").html(
						"<b style='color:red;font-size:15px;'>两次密码不一致！</b>");
				$("#exampleInputPassword1").focus();
				isok = false;
				return;
			}
			$
					.ajax({
						type : "post",
						url : "passwordcheck.do",
						data : {
							"username" : username,
							"password" : opassword
						},
						async : false,
						dataType : 'text',
						success : function(data) {
							if (data == 0) {
								$("#loginInfo")
										.html(
												"<b style='color:red;font-size:15px;'>原密码错误!</b>");
								isok = false;
								return 0;
							}
						},
						error : function(data) {
							alert("登录出错！请联系管理员" + data);
							isok = false;
							return;
						}
					});

			if (isok) {
				$("#login1").submit();
			}
		}
	</script>

</body>
</html>