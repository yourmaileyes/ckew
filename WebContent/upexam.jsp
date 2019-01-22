<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<div class="container" style="width:800px;margin:80px auto">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<form id="shijuanform" action="ok.do" method="post">
	<div id="div">
	
	</div>
	</form>
				 
				 
	
	<select id="test">
		<option value="选择题">选择题</option>
		<option value="多选题">多选题</option>
	</select>
	<button class="btn btn-success" value="添加" onclick="checkValue()">添加</button>
				<div style="width:50px;margin:20px auto"> <button type="button" onclick="tijiao()" class="btn btn-success">上传</button></div>
			${emsg }
		</div>
	</div>
</div>
<script>
function tijiao(){
	$("#shijuanform").submit();
}
function checkValue(){

	var text=document.getElementById("test").value;	
	var inp = document.createElement("input");
	inp.type ="text";
	inp.value=text;	
	inp.size="70";
	if(text=="选择题"){
	var table = document.createElement("table");
	var tr = document.createElement("tr");
	var td = document.createElement("td");
	var br = document.createElement("br");
	var hr = document.createElement("hr");
	var tetle = document.createTextNode("选择题题目(每个选项前使用   ** 分隔)"); 
	var td1 = document.createElement("td");
	var textarea=document.createElement("textarea");
	textarea.cols="50";
	textarea.rows="5";
	textarea.name="title";
	
	var tr1 = document.createElement("tr");
	var tetle1 = document.createTextNode("答案"); 
	var td2 = document.createElement("td");
	var td3 = document.createElement("td");
	var inp1=document.createElement("input");
	inp1.type="text";
	inp1.size="70";
	inp1.name="answer";
	var inp0=document.createElement("input");
	inp0.type="hidden";
	inp0.name="type";
	inp0.value="单选题";
	table.appendChild(inp0);
	
	var tr2 = document.createElement("tr");
	var tetle2 = document.createTextNode("分值"); 
	var td5 = document.createElement("td");
	var td4 = document.createElement("td");
	var inp2=document.createElement("input");
	inp2.type="text";
	inp2.size="70";
	inp2.name="score";
	/* 第一行 */
	table.appendChild(tr);
	tr.appendChild(td);
	td.appendChild(tetle);
	tr.appendChild(td1);
	td1.appendChild(textarea);

	/* 第二行 */
	table.appendChild(tr1);
	tr1.appendChild(td2);
	td2.appendChild(tetle1);
	tr1.appendChild(td3);
	td3.appendChild(inp1);
	
	document.getElementById("div").appendChild(table);
	document.getElementById("div").appendChild(br);
	document.getElementById("div").appendChild(hr);
	}else{
		var table = document.createElement("table");
		var tr = document.createElement("tr");
		var td = document.createElement("td");
		var br = document.createElement("br");
		var hr = document.createElement("hr");
		var tetle = document.createTextNode("选择题题目(每个选项前使用   ** 分隔)"); 
		var td1 = document.createElement("td");
		var textarea=document.createElement("textarea");
		textarea.cols="50";
		textarea.rows="5";
		textarea.name="title";
		
		var tr1 = document.createElement("tr");
		var tetle1 = document.createTextNode("答案(答案按**分隔)"); 
		var td2 = document.createElement("td");
		var td3 = document.createElement("td");
		var inp1=document.createElement("input");
		inp1.type="text";
		inp1.size="70";
		inp1.name="answer";
		var inp0=document.createElement("input");
		inp0.type="hidden";
		inp0.name="type";
		inp0.value="多选题";
		table.appendChild(inp0);
		
		var tr2 = document.createElement("tr");
		var tetle2 = document.createTextNode("分值"); 
		var td5 = document.createElement("td");
		var td4 = document.createElement("td");
		var inp2=document.createElement("input");
		inp2.type="text";
		inp2.size="70";
		inp2.name="score";
		/* 第一行 */
		table.appendChild(tr);
		tr.appendChild(td);
		td.appendChild(tetle);
		tr.appendChild(td1);
		td1.appendChild(textarea);

		/* 第二行 */
		table.appendChild(tr1);
		tr1.appendChild(td2);
		td2.appendChild(tetle1);
		tr1.appendChild(td3);
		td3.appendChild(inp1);
		
		document.getElementById("div").appendChild(table);
		document.getElementById("div").appendChild(br);
		document.getElementById("div").appendChild(hr);
	}
}


</script>
</body>
</html>