<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>西南财经大学图书馆</title>
<link href="Stylea.css" type="text/css" rel="stylesheet" />
</head>
<%String bookname, informloion, regist,add;
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
bookname = request.getParameter("book");
informloion = request.getParameter("informloion");
regist = request.getParameter("regist");
add=request.getParameter("add");

bookname= (bookname== null ? "" :bookname);
informloion = (informloion== null ? "" :informloion);
regist= (regist == null ? "" : regist);
 %>
<body background="../image/login.jpg">

<form action="../Bookhandle" method="post" class='form'>

<p class='ip'></p>
<p class='ip'>书名: <input type="text" name="bookname" value="<%=bookname%>"/></p>

<p class='ip'>简介: <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="informloion" cols='20' rows="9" /><%=informloion%></textarea></p>

<p class='ip'>作者: <input type="text" name="regist" value="<%=regist%>" />
<input type="hidden" name="add" value="<%=add%>" />
</p>



<p class='ip'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="确定"/></p>
</form>
</body>
</html>