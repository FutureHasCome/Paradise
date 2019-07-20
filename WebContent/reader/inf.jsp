<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.sql.rowset.CachedRowSet"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>天堂图书馆</title>
<link href="Stylea.css" type="text/css" rel="stylesheet" />
<style>
#h2{

margin:20px;0,0,10px;
}
</style>
</head>
<body background="../image/login.jpg" >
	<div>
		<%request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
			String account = "";
			account = (String) session.getAttribute("account");
			String angel = request.getParameter("angel");
			String readonly = "readonly";
			if (angel != null) {
				account = "";
				readonly = null;
			}
			String sql = "select * from reader where account='" + account + "'";
			String word = "", mail = "", phone = "";
			CachedRowSet rs = lib.DBtools.doChange(sql);
			while (rs.next()) {
				word = rs.getString(3);
				mail = rs.getString(4);
				phone = rs.getString(5);
			}
			String m = request.getParameter("m");
		%>
		<form action='../Infor' method="post" class="form-1">
		<hr>
		<h2>&nbsp;&nbsp;个人信息</h2>
			<p>&nbsp;&nbsp;
				会员账号: <input type="text" name="account" value="<%=account%>"
					class="in" <%=readonly%> />*
			</p>
			<%
				if (angel != null) {
					out.print("&nbsp;&nbsp; 密&nbsp;&nbsp;码: <input type='password' name='password' class='in' />");
				}
			%>
			<p>&nbsp;&nbsp;
				个性签名: <input type="text" name="word" value="<%=word%>" class="in" />
			</p>
			<p>&nbsp;&nbsp;
				电子邮箱: <input type="text" name="mail" value="<%=mail%>" class="in" />
			</p>
			<p>&nbsp;&nbsp;
				联系电话: <input type="text" name="phone" value="<%=phone%>" class="in" />
			</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="确认" class="submit"/></p>

		</form>
	</div>
	<%
		if (m != null) {
			out.print("修改资料成功！");
		}
	%>
</body>
</html>