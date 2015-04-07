<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电话会议申请单</title>
</head>
<body>
	<form id="form1" name="form1" method="post" action="">
	  <p align="center">Phone 申请单</p>
	  <div align="center">
	    <table width="878" border="1">
	      <tr>
	        <td height="53" colspan="2">申请部门</td>
	        <td width="168"><label for="dept"></label>
	        <input type="text" name="dept" id="dept" /></td>
	        <td width="94">&nbsp;</td>
	        <td width="188">&nbsp;</td>
	        <td width="107">申请人</td>
	        <td width="169"><label for="user"></label>
	        <input type="text" name="user" id="user" /></td>
	      </tr>
	      <tr>
	        <td height="51" colspan="2">开会日期</td>
	        <td><label for="date"></label>
	        <input type="text" name="date" id="date" /></td>
	        <td>会议室</td>
	        <td><label for="room"></label>
	        <input type="text" name="room" id="room" /></td>
	        <td>联系电话</td>
	        <td><label for="phone"></label>
	        <input type="text" name="phone" id="phone" /></td>
	      </tr>
	      <tr>
	        <td width="70" rowspan="2">开会时间</td>
	        <td width="36" height="62">开始</td>
	        <td><label for="startTime"></label>
	        <input type="text" name="startTime" id="startTime" /></td>
	        <td>参会方数</td>
	        <td><label for="count"></label>
	          <input type="text" name="count" id="count" />
	        方</td>
	        <td>是否提供会议设备</td>
	        <td><p>
	          <label>
	            <input type="radio" name="device" value="是" id="device_0" />
	            yes</label>
	          &nbsp;
	          <label>
	            <input type="radio" name="device" value="否" id="device_1" />
	            no</label>
	          <br />
	        </p></td>
	      </tr>
	      <tr>
	        <td height="65">结束</td>
	        <td><label for="endTime"></label>
	        <input type="text" name="endTime" id="endTime" /></td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
	      </tr>
	      <tr>
	        <td height="160">特殊要求</td>
	        <td colspan="6"><label for="remark"></label>
	        <textarea name="remark" id="remark" cols="80" rows="8"></textarea></td>
	      </tr>
	    </table>
	  </div>
	  <p align="center">
	    <input type="submit" name="submit" id="submit" value="提交" />
	    <input type="reset" name="reset" id="reset" value="重置" />
	  </p>
	</form>
</body>
</html>