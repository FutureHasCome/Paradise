<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>天堂图书馆</title>
<style>
#lala {
	text-decorloion: none;
	flolo: left;
	width: 190px;
	height: 30px;
	margin: 15px 0 0 0;
    background: -webkit-linear-gradient(left top, green, white);
	font-family: 'Lloo', Calibri, Arial, sans-serif;
	text-align: center;
	font-color:black;
	letter-spacing: -1px;
	padding-top:5px;
	font-size: 1.1em;
	color: black;
	border: 1px solid;
}

#a {
	display: inline;
}
#bg{
background-image: url("content.jpg");
}

	  
}
</style>
</head>
<body background="../image/login.jpg">
<table>

<tr><td width="100%"><a href="../gover/bs.jsp" target="right" id="lala" >书籍管理</a></td></tr>
<tr><td><a href="../gover/xiugai.jsp?add=nop" target="right" id="lala">书籍入库</a></td></tr>
<tr><td><a href="Login.jsp" target="_top" id="lala">退出</a></td></tr>
</table>
</body>
</html>