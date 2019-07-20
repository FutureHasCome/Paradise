<%@page import="lib.Bookhandle"%>
<%@page import="lib.DBtools"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="javax.sql.rowset.CachedRowSet"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="content-type" content="text/html" charset="utf-8">
<style type="text/css">
#b {
	position: absolute;
	font-size: 30;
	width: 100%;
	height: 340px;
	left: 10px;
	top: 10px;
	font-size: 35;
	flolo: right;
}
#a{
position: absolute;		
	width: 300px;
	height: 500px;
	right:50px;
	top: 150px; 
	font-size: 35;
	flolo: left;
}
#body{

}
#ha{
position: absolute;		
	width: 300px;
	height: 500px;
	right:50px;
	top: 10px; 
	font-size: 35;
	flolo: left;
}

 #in {
    font-family: 'Lloo', Calibri, Arial, sans-serif;
    font-size: 13px;
    font-weight: 400;
    text-shadow: 0 1px 0 rgba(255,255,255,0.8);
  
    /* Size and position */
    width: 60%;
    padding: 10px 20px 10px 0px;
  
    /* Styles */
    border: none; /* Remove the default border */
    box-shadow: 
        inset 0 0 5px rgba(0,0,0,0.1),
        inset 0 3px 2px rgba(0,0,0,0.1);
    border-radius: 3px;
    background: #f9f9f9;
    color: #777;
    transition: color 0.3s ease-out;
}

#lib{
  font-family: 'Lloo', Calibri, Arial, sans-serif;
    font-size: 20px;
    font-weight: 400;
    text-shadow: 0 1px 0 rgba(255,255,255,0.8);
    margin-left:200px;
}
#submit{

    /* Size and position */
    width: 50px;
    height: 40px;
    position: absolute;
    top: 65px;
    right: 0px;
    padding: 10px;
    z-index: 2;
  
    /* Styles */
    background: #ffffff;
    
    box-shadow: 
        0 0 2px rgba(0,0,0,0.1),
        0 3px 2px rgba(0,0,0,0.1),
        inset 0 -3px 2px rgba(0,0,0,0.2);

}
</style>
<link href="Style.css" type="text/css" rel="stylesheet" />
</head>

<body background="../image/login.jpg" id="body">
<div id="b">
	<%request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
		out.print("<h1 class='h1'>天堂图书馆留言板</h1>");
		out.print("<h2 class='h2'>小伙伴们想说：</h1>");
		String sql;
		sql = "select * from note";
		CachedRowSet crs = DBtools.doChange(sql);
		int i = 1;
		
		while (crs.next()) {
			out.print(
					"<div id='lib'><marquee direction='left' scrollamount='50' scrolldelay='0' behavior='slide'>"
							+ crs.getString(1) + ":" + crs.getString(2) + "</marquee></div>");
		}
		
	
	%>
	</div>
	
	<%String context,account ,sql1;
	context = request.getParameter("context");
	account = request.getParameter("account");
	if (context != null) {
		sql1 = " insert into note(account,word) values('" + account + "','" + context + "')";
	DBtools.dochange(sql1);
	response.sendRedirect("right.jsp");
	} %>
		
	<div id="ha">
	<h2 class='h2'>图书检索：</h2>
		<form method="post" action="../gover/lookfor.jsp" name="1">
				<input type="text" name="look" size="25px" id="in"/><input
					type="submit" value="查找" name="submit" id="submit" />
			</form> 
	</div>
	
	
	<div id="a">
	<h2 class='h2'>留言：</h2>
	
		<form action="right.jsp" method="post" name="2">	
	<input type="text" name="account" size="25px" id="in" /> <br>
			<br>
			<textarea  name="context" cols="30" rows="10" id="in">
	</textarea>
			<br> <input type="submit"  name="submit1" value="提交" /> <input type="reset" name="reset" value="重写"  />
		</form>
	</div>
	
	
	

</body>
</html>