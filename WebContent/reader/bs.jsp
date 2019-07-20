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


	<%
	
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String sql = "select * from BookStore";
		CachedRowSet rs = lib.DBtools.doChange(sql);
		String account = (String) session.getAttribute("account");	
		String pf=request.getParameter("pf");
		while (rs.next()) {	
			 String number="",book="";
				number = request.getParameter("m");
				book=request.getParameter("book");		
				System.out.println(number);
				System.out.println(book);
			String book1=rs.getString(1);
			System.out.println(book1);
			
			out.print("<div class='bs'>");
			out.print("<p class='ip1'>  </p>");
			out.print("<p class='ip'>书名：" + rs.getString(1) + "</p>");
			out.print("<p class='ip'>故事简介：" + rs.getString(2) + "</p>");
			out.print("<p class='ip'>作者：" + rs.getString(3) + "</p>");			
			out.print("<p class='ip'>");
			out.print("<form class='form' action='../Bookservlet'method='post'><input type='hidden' name='account' value="
					+ account + " /><input type='hidden' name='book' value=" + rs.getString(1)
					+ " /><input type='submit' value='借阅' class='submit1'/>");
			out.print("</form>");
		boolean n=book1.equals(book);
		System.out.println(n);
			if (number!= null&&n) {
				out.print("<form action='../Bookservlet' method='post'><input type='hidden' name='reaccount' value="
						+ account + " /><input type='hidden' name='rebook' value="
						+ rs.getString(1) + " /><input type='submit' value='取消借阅' class='submit1'/>");
				out.print("</form>");
			}
			out.print("</p>");
			out.print("</div>");
			if(pf!=null){
				out.println("您已经借阅此书，不能重复借阅！");
			}
			
		}
	%>
</body>
</html>