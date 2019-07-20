<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>天堂图书馆</title>
</head>
<body>
<form action="" method="post">
问题反馈<br>
<input type="text" name="account" placeholder="反馈人"/><br><br>
<textarea name="return" cols="20" rows="10"></textarea><br>
<input type="submit" value="提交"/>
</form>
<%String m;
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
 m=request.getParameter("return");
 if(m!=null){
	 out.print("感谢您的支持和反馈，我们会及时改进！");
 }
 %>
</body>
</html>