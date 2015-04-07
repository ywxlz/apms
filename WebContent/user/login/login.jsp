<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登陆</title>
	<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
	<div id="container">
		<br /><br /><br /><br /><br /><br />
			<s:if test="#session.status != null">
				<font style="font-size: x-large;color: black;">
					已经登陆，前往
					<a href="../logout.jsp" style="color: blue;text-decoration: underline;">注销</a>.
				</font>
			</s:if>
			<s:else>
				<form action="loginAction" method="post">
					<div class="login">欢迎登陆</div>
					<div class="username-text">用户名:</div>
					<div class="password-text">密&nbsp;&nbsp;码:</div>
					<div class="username-field">
						<input type="text" name="username" value="" />
					</div>
					<div class="password-field">
						<input type="password" name="password" value="" />
					</div>
					<input type="checkbox" name="remember-me" id="remember-me" /><label for="remember-me">记住我</label>
					<div class="forgot-usr-pwd">没有账号? <a href="../register/register.jsp">注册一个</a> . </div>
					<input type="submit" name="submit" value="登陆" />
				</form>
			</s:else>
		<br /><br /><br /><br /><br /><br />
	</div>
	<div id="footer">
		欢迎登陆!
	</div>
</body>
</html>