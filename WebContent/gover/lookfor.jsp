<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.sql.rowset.CachedRowSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<th>书名：
<th>作者：
<th>作品简介：
<%String look=request.getParameter("look");
String sql="select * from bookstore where book like '%"+look+"%'";
CachedRowSet rs = lib.DBtools.doChange(sql);
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
while (rs.next()) {
	out.print("<tr >");
	out.print("<td align=center>" + rs.getString(1) + "</td>");
	out.print("<td align=center>" + rs.getString(2) + "</td>");
	out.print("<td align=center>" + rs.getString(3) + "</td>");
	out.print("</tr>");
}
%>
</table>
</body>
</html>