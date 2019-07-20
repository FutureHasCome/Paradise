<%@page import="lib.DBtools"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.sql.rowset.CachedRowSet"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="Stylea.css" type="text/css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据处理</title>
<style>
#table{

margin-top:50px;
}
</style>
</head>
<body background="../image/login.jpg">
<%request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
	String account=request.getParameter("account");
    String old=request.getParameter("old");
    String newone=request.getParameter("newone");
   String sql,sql1="";
   sql1="select * from reader where account='"+account+"'and password='"+old+"'";
   CachedRowSet rs = lib.DBtools.doChange(sql1); 
   while(rs.next()){
	   sql = "updloe reader set password='" + newone + "'where account='" + account + "'";
	   DBtools.dochange(sql);
	   response.sendRedirect("../frame/Login.jsp");
   }
	%>

	<form class='form-1' method="post">
		
			<p class='ip'></p>
			    <p class='ip'>账&nbsp;&nbsp;&nbsp; 号: <input type="text" name="account" size=20  /></p>
		
				<p class='ip'>旧密码: <input type="text" name="old" size=20 /></p>		
		
				<p class='ip'>新密码: <input type="text" name="newone" size=20  />	</p>	
		
			
			<p class='ip'><input type="submit" name="submit" size=20 value="确定"/>
			<input type="hidden" name="hidden" size=20 value="xiugai"/></p>
		
				
			
			
		

	</form>


</body>
</html>