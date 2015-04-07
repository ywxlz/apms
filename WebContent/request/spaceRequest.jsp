<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>存储空间申请单</title>
<link rel="stylesheet" type="text/css" href="../css/table.css" />
</head>
<body>
	<div align="center">
		<form id="form1" name="form1" method="post" action="">
			<p align="center" id="title">Space Request</p>
			<table width="650">
				<tr>
					<td width="125"><div align="center">申请人</div></td>
					<td width="200">
						<div align="center">
							<label for="user"></label> 
							<input type="text" name="user" id="user" />
						</div>
					</td>
					<td width="125"><div align="center">申请部门</div></td>
					<td width="200">
						<div align="center">
							<label for="dept"></label> 
							<input type="text" name="dept" id="dept" />
						</div>
					</td>
				</tr>
				<tr>
					<td><div align="center">联系电话</div></td>
					<td>
						<div align="center">
							<label for="phone"></label> 
							<input type="text" name="phone" id="phone" />
						</div>
					</td>
					<td><div align="center"></div></td>
					<td><div align="center"></div></td>
				</tr>
				<tr>
					<td><div align="center">所需空间</div></td>
					<td>
						<div align="center">
							<label for="space"></label> 
							<input type="text" name="space" id="space" />
						</div>
					</td>
					<td><div align="center">使用期限</div></td>
					<td>
						<div align="center">
							<label for="time"></label> 
							<input type="text" name="time" id="time" />
						</div>
					</td>
				</tr>
				<tr>
					<td><div align="center">部门接口人</div></td>
					<td>
						<div align="center">
							<label for="people"></label> 
							<input type="text" name="people" id="people" />
						</div>
					</td>
					<td><div align="center"></div></td>
					<td><div align="center"></div></td>
				</tr>
				<tr>
					<td><div align="center">申请理由</div></td>
					<td colspan="3">
						<div align="center">
							<label for="reason">
								<textarea name="reason" id="reason" cols="65" rows="5"></textarea>
							</label>
						</div>
					</td>
				</tr>
				<tr>
					<td><div align="center">目录访问权限</div></td>
					<td colspan="3">
						<div align="center">
							<label for="permissions">
								<textarea name="permissions" id="permissions" cols="65" rows="5"></textarea>
							</label>
						</div>
					</td>
				</tr>
				<tr>
					<td><div align="center">特殊要求</div></td>
					<td colspan="3"><div align="center">
							<label for="remark"></label>
							<textarea name="remark" id="remark" cols="65" rows="5"></textarea>
						</div>
					</td>
				</tr>
			</table>
			<p align="center">
				<input type="submit" name="submit" id="submit" value="提交" /> 
				<input type="reset" name="reset" id="reset" value="重置" />
			</p>
		</form>
	</div>
</body>
</html>