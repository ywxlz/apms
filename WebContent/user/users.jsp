<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>用户管理</title>
<link rel="shortcut icon" href="images/favicon.png" />
<!-- Style Sheet-->
<link rel="stylesheet" href="style.css" />
<link rel='stylesheet' id='bootstrap-css-css' href='css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='responsive-css-css' href='css/responsive5152.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='pretty-photo-css-css' href='js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
<link rel='stylesheet' id='main-css-css' href='css/main5152.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='custom-css-css' href='css/custom5152.html?ver=1.0' type='text/css' media='all' />
<!-- script -->
<script type='text/javascript' src='js/jquery-1.8.3.min.js'></script>
<script type='text/javascript' src='js/jquery.easing.1.34e44.js?ver=1.3'></script>
<script type='text/javascript' src='js/prettyphoto/jquery.prettyPhotoaeb9.js?ver=3.1.4'></script>
<script type='text/javascript' src='js/jquery.liveSearchd5f7.js?ver=2.0'></script>
<script type='text/javascript' src='js/jflickrfeed.js'></script>
<script type='text/javascript' src='js/jquery.formd471.js?ver=3.18'></script>
<script type='text/javascript' src='js/jquery.validate.minfc6b.js?ver=1.10.0'></script>
<script type='text/javascript' src='js/custom5152.js?ver=1.0'></script>

</head>

<body>
	<!-- Start of Header -->
	<div class="header-wrapper">
		<header>
			<div class="container">
				<div class="logo-container">
					<!-- Website Logo -->
					<a href="#" title="Knowledge Base Theme"> <img
						src="images/logo.png" alt="Knowledge Base Theme">
					</a> <span class="tag-line">用户管理</span>
				</div>
			</div>
		</header>
	</div>
	<!-- End of Header -->
	<s:if test="#session.status == null">
		
		<br /><br /><br /><br /><br /><br /><br /><br /><br />
		<font style="font-size: x-large;">
			未登录用户，您可以
			<a href="login/login.jsp" style="color: blue;text-decoration: underline;">登陆</a>，
			还没有账号？您可以
			<a href="login/register.jsp" style="color: blue;text-decoration: underline;">注册</a>.
		</font>
		<br /><br /><br /><br /><br /><br /><br /><br /><br />
	</s:if>
	<s:else>
		<s:if test="#session.username != 'admin'">
			<br /><br /><br /><br /><br /><br /><br /><br /><br />
			<font style="font-size: x-large;">
				不好意思，您没有权限访问这里！
			</font>
			<br /><br /><br /><br /><br /><br /><br /><br /><br />
		</s:if>
		<s:else>
				
			<!-- 开始资料修改区 -->
			
			<!--don't close the div here-->
			<br/>
			<ul style="list-style-type: none;display: inline;">
				<li style="display: inline;"><a style="font-size: xx-large;font-weight: bolder;" href="gen.jsp">基本资料</a><font style="font-size: xx-large;font-weight: bolder;"></font></li>
			</ul>
			<br />
			<br />
			<iframe id="frame_profile" name="frame_profile" style="display: none"></iframe>
			<form action="infoAction?fid=${fid }" method="post">
				<input type="hidden" value="0d813747" name="formhash">
				<table cellspacing="0" cellpadding="0" class="tfm" id="profilelist">
					<tbody>
						<tr>
							<td><font style="font-size: x-large;">&nbsp;&nbsp;&nbsp;&nbsp;用户名:</font></td>
							<td><font style="font-size: x-large;">&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="#session.fusername"/></font></td>
							<td>&nbsp;</td>
						</tr>
						<tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
						
						
						<!-- 证件类型 -->
						<tr>
							<td><font style="font-size: x-large;">&nbsp;&nbsp;&nbsp;&nbsp;证件类型</font></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;
								<select name="idcardtype" style="width:80px">
									<option	value="身份证">身份证</option>
									<option value="护照">护照</option>
									<option value="驾驶证">驾驶证</option>
								</select>
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;
								<select name="priIdcardtype" style="width:70px">
									<option value="0">公开</option>
									<option value="1">好友可见</option>
									<option value="3">保密</option>
								</select>
							</td>
						</tr>
						<!-- 证件号 -->
						<tr>
							<td><font style="font-size: x-large;">&nbsp;&nbsp;&nbsp;&nbsp;证件号</font></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" name="idcard">
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;
								<select name="priIdcard" style="width:70px">
									<option value="0">公开</option>
									<option value="1">好友可见</option>
									<option value="3">保密</option>
								</select>
							</td>
						</tr>
						<!-- 邮寄地址 -->
						<tr>
							<td><font style="font-size: x-large;">&nbsp;&nbsp;&nbsp;&nbsp;邮寄地址</font></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" name="address" />
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;
								<select name="priAddress" style="width:70px">
									<option value="0">公开</option>
									<option value="1">好友可见</option>
									<option value="3">保密</option>
								</select>
							</td>
						</tr>
						<!-- 邮编 -->
						<tr>
							<td><font style="font-size: x-large;">&nbsp;&nbsp;&nbsp;&nbsp;邮编</font></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" name="zipcode" />
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;
								<select name="priZipcode" style="width:70px">
									<option value="0">公开</option>
									<option value="1">好友可见</option>
									<option value="3">保密</option>
								</select>
							</td>
						</tr>
						<!-- 个人主页 -->
						<tr>
							<td><font style="font-size: x-large;">&nbsp;&nbsp;&nbsp;&nbsp;个人主页</font></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" name="site" />
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;
								<select name="priSite" style="width:70px">
									<option value="0">公开</option>
									<option value="1">好友可见</option>
									<option value="3">保密</option>
								</select>
							</td>
						</tr>
						<!-- 自我介绍 -->
						<tr>
							<td><font style="font-size: x-large;">&nbsp;&nbsp;&nbsp;&nbsp;自我介绍</font></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;
								<textarea name="bio" cols="10" rows="2" ></textarea>
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;
								<select name="priBio" style="width:70px">
									<option value="0">公开</option>
									<option value="1">好友可见</option>
									<option value="3">保密</option>
								</select>
							</td>
						</tr>
						<!-- 兴趣爱好 -->
						<tr>
							<td><font style="font-size: x-large;">&nbsp;&nbsp;&nbsp;&nbsp;兴趣爱好</font></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;
								<textarea name="interest" cols="10" rows="2"></textarea>
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;
								<select name="priInterest" style="width:70px">
									<option value="0">公开</option>
									<option value="1">好友可见</option>
									<option value="3">保密</option>
								</select>
							</td>
						</tr>
						
						
						
						<tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
						<tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
						<tr style="line-height: 50px;">
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						
							<td colspan="2"><input type="hidden" name="profilesubmit"
								value="true">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="submit" value="保存" style="font-size: xx-large;line-height: 40px;font-weight: bolder;">
									
								<span></span>
							</td>
							<td>&nbsp;</td>
						</tr>
					</tbody>
				</table>
			</form>
			<!-- 结束资料修改区 -->
			
		</s:else>
	</s:else>
	
	
	


	<!-- end of #footer --> <!-- Footer Bottom -->
	<div id="footer-bottom-wrapper">
		<div id="footer-bottom" class="container">
			<div class="row">
				<div class="span6">
					<p class="copyright">
						
					</p>
				</div>
				<div class="span6">
					<!-- Social Navigation -->
					<ul class="social-nav clearfix">
						<li class="linkedin"><a target="_blank" href="#"></a></li>
						<li class="stumble"><a target="_blank" href="#"></a></li>
						<li class="google"><a target="_blank" href="#"></a></li>
						<li class="deviantart"><a target="_blank" href="#"></a></li>
						<li class="flickr"><a target="_blank" href="#"></a></li>
						<li class="skype"><a target="_blank" href="skype:#?call"></a></li>
						<li class="rss"><a target="_blank" href="#"></a></li>
						<li class="twitter"><a target="_blank" href="#"></a></li>
						<li class="facebook"><a target="_blank" href="#"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End of Footer Bottom --> </footer>
	<!-- End of Footer -->

	<a href="#top" id="scroll-top"></a>

	

</body>
</html>