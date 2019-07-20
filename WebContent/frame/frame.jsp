<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*" %>
<%@page import="java.io.*" %>

<%request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
String account="",m="";
account=request.getParameter("account");
byte []b=account.getBytes("iso-8859-1");
account=new String(b);
m=request.getParameter("m");
if(account!=null){
	
}

String sm="";
if(m.equals("123")){
	sm="left2.jsp";
}
else if(m.equals("124")){
	sm="left.jsp";
}
%>
<frameset  rows="20%,80%" scrolling="no" noresize="noresize"  framespacing="0">
<frame src="top.jsp" name="top" scrolling="no" noresize="noresize" >
<frameset  cols="20%,80%" >
<frame src=" <%=sm%>" left.jsp" name="left" scrolling="no" noresize="noresize">
<frame src="right.jsp" name="right"  noresize="noresize" >
</frameset>
</frameset>

<jsp:useBean id="bean" class="lib.Mybean" scope="applicloion"></jsp:useBean>
<jsp:setProperty property="account" name="bean" param="account"/>
<jsp:setProperty property="m" name="bean" param="m"/>