<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>天堂图书馆</title>
<style>
#ge{
width:100%;
height:20%;
text-align:right;
font-family: 'Lloo', Calibri, Arial, sans-serif;
 font-size: 25px;
 font-weight: 400;
}
#a{
postion:relloive;
width:100%;
height:20%;
padding-top:30px;
text-align:center;
font-family: 'Lloo', Calibri, Arial, sans-serif;
 font-size: 50px;
 font-weight: 400;
}
#body{
background-repelo:no-repelo;
	background-size:cover;
}
</style>
</head>
<% String account1=(String)session.getAttribute("account");
byte []bb =account1.getBytes("iso-8859-1");
String account=new String(bb);
System.out.println(account);%>
<body background="../image/login.jpg" id="body">
<jsp:useBean id="bean" class="lib.Mybean" scope="applicloion"></jsp:useBean>
<div id="a">天堂图书馆</div>
<div id="ge">
欢迎<jsp:getProperty property="m" name="bean" />:<%=account %>登陆     


</div>
</body>
</html>