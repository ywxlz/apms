<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>邮箱申请单</title>
<link rel="stylesheet" type="text/css" href="../css/table.css" />
</head>
<body>
	<div align="center">
		<p id="title">Email Request</p>
		<form id="form1" name="form1" method="post" action="">
			<table width="670">
				<tr>
					<td width="145"><div align="center">所属部门(处)</div></td>
					<td width="200">
						<label for="dept"></label>
						<div align="center">
							<input type="text" name="dept" id="dept" />
						</div>
					</td>
					<td width="125"><div align="center">联系电话</div></td>
					<td width="200">
						<label for="phone"></label>
						<div align="center">
							<input type="text" name="phone" id="phone" />
						</div>
					</td>
				</tr>
				<tr>
					<td><div align="center">帐号负责人</div></td>
					<td>
						<label for="principal"></label>
						<div align="center">
							<input type="text" name="principal" id="principal" />
						</div>
					</td>
					<td><div align="center">人员编号</div></td>
					<td>
						<label for="number"></label>
						<div align="center">
							<input type="text" name="number" id="number" />
						</div>
					</td>
				</tr>
				<tr>
					<td><div align="center">空间需求</div></td>
					<td>
						<label for="space"></label>
						<div align="center">
							<input type="text" name="space" id="space" />
						</div>
					</td>
					<td><div align="center">办公地点</div></td>
					<td>
						<label for="address"></label>
						<div align="center">
							<input type="text" name="address" id="address" />
						</div>
					</td>
				</tr>
				<tr>
					<td><div align="center">使用人姓名</div></td>
					<td>
						<label for="username2"></label>
						<div align="center">
							<input type="text" name="username" id="username2" />
						</div>
					</td>
					<td><div align="center">姓名全拼</div></td>
					<td>
						<label for="pinyin"></label>
						<div align="center">
							<input type="text" name="pinyin" id="pinyin" />
						</div>
					</td>
				</tr>
				<tr>
					<td style="height: 29px;" colspan="4">
						<p align="center">
							<label> 
								<input type="radio" name="status" value="新增" id="status_0" /> 
								新增
							</label> 
							<label> 
								<input type="radio" name="status" value="更改" id="status_1" /> 
								更改
							</label>
						</p>
					</td>
				</tr>
				<tr>
					<td><div align="center">使用期限</div></td>
					<td colspan="3"><label for="time"></label>
						<div align="center">
							<input style="width: 530px;" type="text" name="time" id="time" />
						</div>
					</td>
				</tr>
				<tr>
					<td><div align="center">申请(更改)原因</div></td>
					<td colspan="3"><label for="reason"></label>
						<div align="center">
							<textarea name="reason" id="reason" cols="65" rows="5"></textarea>
						</div>
					</td>
				</tr>
			</table>
			<p>
				<input type="submit" name="submit" id="submit" value="提交" /> 
				<input type="reset" name="reset" id="reset" value="重置" />
			</p>
		</form>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
	</div>
</body>
</html>