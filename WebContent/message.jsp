<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布留言</title>
</head>
<body>
<%@include file="head.jsp"%>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-2 column">
		</div>
		<div class="col-md-6 column">
			<form class="form-horizontal" role="form" action="message.do" method="post">
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">留言正文</label>
					<div class="col-sm-10">
						<textarea  class="form-control" id="inputEmail3" name="text" cols="40" rows="20">
                        </textarea>
					</div>
				</div>
				
				
				<div class="form-group">${mmsg }
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default">提交</button>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-4 column">
		</div>
	</div>
</div>
</body>
</html>