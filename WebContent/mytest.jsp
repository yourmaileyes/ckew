<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的测评</title>
</head>
<body>
<%@include file="head.jsp"%>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-8 column">
			<table class="table">
				<thead>
					<tr>
						<th>
							测试编号
						</th>
						<th>
							测试时间
						</th>
						<th>
							测试分数
						</th>
					</tr>
				</thead>
				<tbody>
				   <c:forEach items="${testList }" var="test">
					<tr>
						<td>
							${test.id}
						</td>
						<td>
							<fmt:formatDate value="${test.time }" pattern="yyyy-MM-dd HH:mm"/>
						</td>
						<td>
							${test.score}
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-md-4 column">
			<div class="jumbotron">
				<h3>
					分数说明
				</h3>
				<p>
					1-5分为D，6分为C，7-8分为B，9-10分为A
				</p>
				<p>
					<a class="btn btn-primary btn-large" href="message.jsp">给我们留言</a>
				</p>
			</div>
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
</body>
</html>