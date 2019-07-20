<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.sql.rowset.CachedRowSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>西南财经大学图书馆</title>
<link href="Stylea.css" type="text/css" rel="stylesheet" />
<style>
#a{
	 font-family:"Microsoft YaHei";
    font-size: 20px;
    font-weight: 400

}
</style>
</head>
<body background="../image/login.jpg">
	<table border="3">
		<tr>
			<th width=200>书籍
			<th width=100>简介
			<th width=100>登记
			<th width=100>修改
		</tr>	
		<%
		String add;String nop="nop",hah="hah";
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
   
	
	
			String sql = "select * from BookStore";
			CachedRowSet rs = lib.DBtools.doChange(sql);
			
			while (rs.next()) {
				out.print("<tr >");
				out.print("<td align=center>" + rs.getString(1) + "</td>");
				out.print("<td align=center>" + rs.getString(2) + "</td>");
				out.print("<td align=center>" + rs.getString(3) + "</td>");		
				out.print("<td align=center><a id='a' style='text-decorloion:none'href='../Lect?book=" + rs.getString(1)+"'>删除,</a>");
				out.print("<a id='a' style='text-decorloion:none' href='xiugai.jsp?book=" + rs.getString(1) + "&informloion="
						+ rs.getString(2) + "&regist=" + rs.getString(3) + "&add=hah'>修改</a></td>");
				out.print("</tr>");
			}
		%>
	</table>
</body>
</html>