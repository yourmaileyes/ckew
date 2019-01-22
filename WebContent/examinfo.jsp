<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>在线测评</title>
<%@include file="head.jsp"%>
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column"
				style="background-image: url(images/exam-background.jpg); height: 152px;">
				<div class="page-header">
					<h1>ckew在线测评</h1>
				</div>

				<div class="progress">
					<div class="progress-bar progress-success"></div>
				</div>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column"
				style="background-color: ffffef; border: 1px solid #cccccc;">
				<form name="form" id="uuform" method="post" action="subanswer.do">
					<ol>
						<c:forEach items="${examList}" var="exam">
								<li>
									<div class="exam-title-info">
										${exam.title.split("\\*\\*")[0]} &nbsp;
										<input type="hidden" name="examid" value="${exam.id }">
									</div>
									<div class="exam-content-selectinfo">
									  <c:if test="${exam.type eq '选择题' }">
										<input type="radio" name="${exam.id }" value="A">&nbsp;${exam.title.split("\\*\\*")[1]}<br>
										<input type="radio" name="${exam.id }" value="B">&nbsp;${exam.title.split("\\*\\*")[2]}<br>
										<input type="radio" name="${exam.id }" value="C">&nbsp;${exam.title.split("\\*\\*")[3]}<br>
										<input type="radio" name="${exam.id }" value="D">&nbsp;${exam.title.split("\\*\\*")[4]}<br>
									  </c:if>
									  <c:if test="${exam.type eq '多选题' }">
										<input type="checkbox" name="${exam.id }" value="A">&nbsp;${exam.title.split("\\*\\*")[1]}<br>
										<input type="checkbox" name="${exam.id }" value="B">&nbsp;${exam.title.split("\\*\\*")[2]}<br>
										<input type="checkbox" name="${exam.id }" value="C">&nbsp;${exam.title.split("\\*\\*")[3]}<br>
										<input type="checkbox" name="${exam.id }" value="D">&nbsp;${exam.title.split("\\*\\*")[4]}<br>
									  </c:if>
									</div>
								</li>
						</c:forEach>
					</ol>
					<input  type="submit" value="提交" >
					
				</form>
			</div>
		</div>
	</div>
</body>
</html>