<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Other 申请单</title>
<link rel="stylesheet" type="text/css" href="../css/table.css" />
</head>
<body>
	<div align="center">
		<p id="title">Other Request</p>
		<form id="form1" name="form1" method="post" action="">
			<table width="650">
				<tr>
					<td width="125"><div align="center">申请人</div></td>
					<td width="200">
						<label for="username"></label> 
						<input type="text" name="username" id="username" />
					</td>
					<td width="125"><div align="center">申请部门</div></td>
					<td width="200">
						<label for="dept"></label> 
						<input type="text" name="dept" id="dept" />
					</td>
				</tr>
				<tr>
					<td width="125"><div align="center">申请时间</div></td>
					<td width="200">
						<label for="date"></label> 
						<input type="text" name="date" id="date" />
					</td>
					<td width="125"><div align="center">联系电话</div></td>
					<td width="200">
						<label for="phone"></label> 
						<input type="text" name="phone" id="phone" />
					</td>
				</tr>
				<tr>
					<td><div align="center">问<br />题<br />描<br />述</div></td>
					<td colspan="3">
						<label for="reason"></label> 
						<textarea name="reason" id="reason" cols="65" rows="10"></textarea>
					</td>
				</tr>
			</table>
			<p>
				<input type="submit" name="button" id="button" value="提交" /> 
				<input type="reset" name="button" id="button" value="重置" />
			</p>
		</form>
		<p></p>
		<p></p>
	</div>
</body>
</html>