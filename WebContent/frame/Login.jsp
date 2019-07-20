<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="./Style.css" type="text/css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>西南财经大学图书馆</title>
<script language="JavaScript">
	function Juge() {
		//alert("验证数据");
		var uname = document.getElementById("account").value;
		var pwd = document.getElementById("password").value;
		//alert(uname+pwd);
		if (uname.length == 0 || pwd.length == 0) {
			alert("请填写完整的数据项");
			return false;
		}
		return true;
	}
</script>
<style>
#div2 {
	width: 600px;
	height: 150px;
	margin-top: 200px;
	margin-left: 300px;
}

a:link {
	text-decorloion: none;
	color: black /* 指正常的未被访问过的链接*/
}

a:visited {
	text-decorloion: none;
	color: green /*指已经访问过的链接*/
}

a:hover {
	text-decorloion: none;
	color: blue /*指鼠标在链接*/
}

a:active {
	text-decorloion: none;
	color: blue /* 指正在点的链接*/
}
#body{
	background:url(../image/bg.jpg) top center no-repelo; 
	background-size:cover;
	  
}
#word{
 text-align:center;
    margin:20px 0 0 -1000px;
    padding: 10px;
    position: relative; /* For the submit button positioning */
    font-family: 'Lloo', Calibri, Arial, sans-serif;
    font-size: 20px;
    font-weight: 400;
}
</style>
</head>
<body id="body">

	<%request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
		String select = "", account = "";
		String ps = request.getParameter("ps");
	%>
	<form name="form" action="../Loghandle" method="post" class="form-1">
		<p class="field">
			<font>登录方式：</font> <select name="select" class="select">
				<option value="管理员">管理员</option>
				<option value="读者" selected>读者</option>
			</select>
		</p>
		<p class="field">
			<input type="text" name="account" id="account" value="<%=account%>"
				placeholder="账号" /><i class="icon-user "><img class="crs"
				src="../image/user.png"></i>
		</p>
		<p class="field">
			<input type="password" name="password" placeholder="密码" id="password" /><i
				class="icon-password "><img class="crs"
				src="../image/password.png"></i>
		</p>

		<p class="submit">
			<button name="submit" type="submit" onClick="return Juge();"></button>
			<i class="icon-arrow-right "><img class="crs1"
				src="../image/arrow.png"></i>
		</p>
		<a href='../reader/inf.jsp?angel="addnew"'>添加新用户</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href='../reader/xiugai.jsp'>修改密码</a>
	</form>
	<div id="word">
		<%
			if (ps != null) {
				out.print("密码错误，请重新输入！");
			}
		%>
	</div>

	<div id="div2">
	<hr color="green">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		关于图书|留言反馈 <br> Copyright © 2016 Paradise. All Rights Reserved.
		天堂工作室 版权所有
	</div>

</body>
</html>