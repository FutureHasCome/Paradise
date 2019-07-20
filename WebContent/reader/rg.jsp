<%@page import="lib.Mybean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.sql.rowset.CachedRowSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>西南财经大学图书馆</title>
<link href="Stylea.css" type="text/css" rel="stylesheet" />

</head>
<body background="../image/login.jpg">
<table border='3' width=100%>
<th>编号
<th>书名
<th>是否归还
	<%
	request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");		
		String account = (String) session.getAttribute("account");	
		String sql = "select * from regist where account='"+account+"'";
		CachedRowSet rs = lib.DBtools.doChange(sql);
	   int i=1;
		while (rs.next()) {	
	out.print("<tr>");
	out.print("<td align=center>" + i + "</td>");
	out.print("<td align=center>" + rs.getString(2) + "</td>");
	out.print("<td align=center><form action='../Bookservlet' method='post'><input type='hidden'name='account1' value='"
				+ account + "'/><input name='book2'type='hidden' value='" + rs.getString(2)
				+ "'/><input type='submit' value='是' class='submit2'/></form></td>");
		out.print("</tr>");
    i++;
	}
%>
	</table>
</body>
</html>