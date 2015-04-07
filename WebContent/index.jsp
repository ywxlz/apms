<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>申请单管理系统</title>
<meta name="description" content="jquery ui制作仿腾讯web qq用户界面，酷炫个性的desktop桌面特效展示支持各大主流浏览器IE6以上。jQuery用户体验设计,web qq桌面十分动感酷炫。" />
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/myLib.js"></script>

<!-- 时钟 -->
<script src="clock/js/index.js"></script>
<link rel='stylesheet prefetch'  href="clock/css/csshake.min.css" />
<style type="text/css">
/* clock */
.clock{width:360px;height:120px;margin:0px;transform:translate(40%, -20%);color:#d96457;font-family:"Lato", sans-serif;}
.clock div{position:relative;float:left;background:transparent;border-radius:6px;width:75px;height:80px;line-height:80px;text-align:center;font-size:50px;margin:0px;}
</style>
<script type="text/javascript">
//注册	
$("#register")
	.click(function(){
		window.open("user/register/register.jsp");
});
$(function(){
	myLib.progressBar();
});
$.include(['css/desktop.css', 'css/jquery-ui-1.8.18.custom.css', 'css/smartMenu.css' , 'js/jquery-ui-1.8.18.custom.min.js', 'js/jquery.winResize.js', 'js/jquery-smartMenu-min.js', 'js/desktop.js']);
$(window).load(function(){
		   myLib.stopProgress();
		   var lrBarIconData={
			   'app0':{
					   'title':'用户管理',
					   'url':'user/users.jsp',
					   'winWidth':1100,
					   'winHeight':650
					   },
				'app1':{
					   'title':'关于我们',
					   'url':'about.html',
					   'winWidth':1100,
					   'winHeight':650
					   },
				'app2':{
					   'title':'javascript特效',
					   'url':'http://www.17sucai.com/',
					   'winWidth':1100,
					   'winHeight':650
					   },
				'app3':{
					   'title':'资源分享',
					   'url':'share.html',
					   'winWidth':1100,
					   'winHeight':650
					   }
					   };
		  var deskIconData={
			        'kuwoMusic':{
					   'title':'酷我音乐盒',
					   'url':'http://mbox.kuwo.cn/',
					   'winWidth':950,
					   'winHeight':500
						},
					'logout':{
					   'title':'互动百科',
					   'url':'user/logout.jsp',
					   'winWidth':950,
					   'winHeight':500
						},
					/* 'register':{
					   'title':'注册',
					   'url':'user/register/index.html',
					   'winWidth':1100,
					   'winHeight':650
						}, */
					'login':{
					   'title':'登陆',
					   'url':'user/login/login.jsp',
					   'winWidth':942,
					   'winHeight':547
						},
					'qidian':{
					   'title':'起点中文',
					   'url':'http://webqq.qidian.com',
					   'winWidth':942,
					   'winHeight':547
						},
					'leshiwang':{
					   'title':'用户管理',
					   'url':'user/users.jsp',
					   'winWidth':842,
					   'winHeight':547
						},
					'qianqianMusic':{
					   'title':'千千音乐',
					   'url':'http://www.qianqian.com/paihang.html',
					   'winWidth':930,
					   'winHeight':500
						},
					'ipRequest':{
					   'title':'IP 申请单',
					   'url':'request/ipRequest.jsp',
					   'winWidth':930,
					   'winHeight':500
						},
					'emailRequest':{
						'title':'Email 申请单',
					   'url':'request/emailRequest.jsp',
					   'winWidth':930,
					   'winHeight':500
						},
					'spaceRequest':{
						'title':'Space 申请单',
					   'url':'request/spaceRequest.jsp',
					   'winWidth':930,
					   'winHeight':500
						},
					'phoneRequest':{
						'title':'Space 申请单',
					   'url':'request/phoneRequest.jsp',
					   'winWidth':930,
					   'winHeight':500
						},
					'qingshu':{
						'title':'情书',
					   'url':'http://www.qingshu8.net/',
					   'winWidth':930,
					   'winHeight':500
						},
					'fenghuang':{
						'title':'凤凰网',
					   'url':'http://www.ifeng.com/',
					   'winWidth':930,
					   'winHeight':500
						},	
					'zhongguancun':{
						'title':'中关村在线',
					   'url':'http://www.zol.com.cn/',
					   'winWidth':930,
					   'winHeight':500
						},
					'win35':{
						'title':'搜狐汽车',
					   'url':'http://auto.sohu.com/',
					   'winWidth':930,
					   'winHeight':500
						},	
					'win36':{
						'title':'布丁电影票',
					   'url':'http://piao.buding.cn/',
					   'winWidth':900,
					   'winHeight':500
						},	
					'win37':{
						'title':'中国数学资源网',
					   'url':'http://www.mathrs.net/',
					   'winWidth':930,
					   'winHeight':500
						},
					'win38':{
						'title':'火影忍者漫画动画',
					   'url':'http://www.manmankan.com/',
					   'winWidth':930,
					   'winHeight':500
						},	
					'win39':{
						'title':'潇湘书院',
					   'url':'http://www.xxsy.net/',
					   'winWidth':930,
					   'winHeight':500
						}  
			  };			   
 		   
		  //存储桌面布局元素的jquery对象
		   myLib.desktop.desktopPanel();
 		   
		   //初始化桌面背景
		   myLib.desktop.wallpaper.init("images/blue_glow.jpg");
		   
		   //初始化任务栏
		   myLib.desktop.taskBar.init();
		   
		   //初始化桌面图标
		   myLib.desktop.deskIcon.init(deskIconData);
		   
		   //初始化桌面导航栏
		   myLib.desktop.navBar.init();
		   
		   //初始化侧边栏
		   myLib.desktop.lrBar.init(lrBarIconData);
		   
		   //欢迎窗口
		   myLib.desktop.win.newWin({
			 WindowTitle:'欢迎窗口',
			 iframSrc:"welcome.html",
			 WindowsId:"welcome",
			 WindowAnimation:'none', 
			 WindowWidth:740,
			 WindowHeight:520
			 });
  		  
		  });		

</script>
</head>
<body>
	<!-- 天气 -->
	<iframe 
		name="weather_inc" 
		class="weather_inc" 
		src="http://i.tianqi.com/index.php?c=code&id=7&num=2"
		style="
		display:block;
		outline:none;
		position:absolute;
		right:20px;
		top:65px;
		"
		width="220" 
		height="100" 
		frameborder="0" 
		marginwidth="0" 
		marginheight="0" 
		scrolling="no" >
	</iframe>
	
	<!-- 时钟 -->
	<div class='clock' 
		style="
		font:12px/180% Arial, Helvetica, sans-serif, '新宋体';
		display:block;
		outline:none;
		position:absolute;
		right:20px;
		top:20px;
		"
		>
		<div class='h shake shake-slow'></div>
		<div class='m shake shake-slow'></div>
		<div class='s shake shake-slow'></div>
	</div>

	<!-- Power by -->
	<a href="#" class="powered_by">Powered by lwxyz</a>

<div id="wallpapers"></div>

<div id="navBar"><a href="#" class="currTab" title="桌面1"></a><a href="#"  title="桌面2"></a><a href="#"  title="桌面3"></a><a href="#"  title="桌面4"></a></div>

<div id="desktopPanel">
	<div id="desktopInnerPanel">
		<!-- 第一页 -->
		<ul class="deskIcon currDesktop">
			<li class="desktop_icon" id="leshiwang"><span class="icon"><img src="icon/icon20.png"/></span><div class="text">用户管理<s></s></div></li>
			<li class="desktop_icon" id="login"><span class="icon"><img src="icon/icon6.png"/></span><div class="text">登陆<s></s></div></li>
			<li class="desktop_icon" id="logout"><span class="icon"><img src="icon/icon10.png"/></span><div class="text">注销<s></s></div></li>
			<li class="desktop_icon" id="register" onclick="window.open('user/register/register.jsp');"><span class="icon"><img src="images/add_icon.png"/></span><div class="text">注册<s></s></div></li>
		</ul>
		<!-- 第二页 -->
		<ul class="deskIcon">
			<li class="desktop_icon" id="ipRequest"><span class="icon"><img src="icon/icon13.png"/></span><div class="text">IP 申请单<s></s></div></li>
			<li class="desktop_icon" id="emailRequest"><span class="icon"><img src="icon/icon12.png"/></span><div class="text">邮件申请单<s></s></div></li>
			<li class="desktop_icon" id="spaceRequest"><span class="icon"><img src="icon/icon12.png"/></span><div class="text">空间申请单<s></s></div></li>
			<li class="desktop_icon" id="phoneRequest"><span class="icon"><img src="icon/icon14.png"/></span><div class="text">会议申请单<s></s></div></li>
			<li class="desktop_icon" id="qingshu"><span class="icon"><img src="icon/icon15.png"/></span><div class="text">情书<s></s></div></li>
			<li class="desktop_icon" id="fenghuang"><span class="icon"><img src="icon/icon16.png"/></span><div class="text">凤凰网<s></s></div></li>
			<li class="desktop_icon" id="zhongguancun"><span class="icon"><img src="icon/icon17.png"/></span><div class="text">中关村在线<s></s></div></li>
			<li class="desktop_icon add_icon"><span class="icon"><img src="images/add_icon.png"/></span><div class="text">添加<s></s></div></li>
		</ul>
		<!-- 第三页 -->
		<ul class="deskIcon">
			<li class="desktop_icon" id="win35"><span class="icon"><img src="icon/icon18.png"/></span><div class="text">搜狐汽车<s></s></div></li>
			<li class="desktop_icon" id="win36"><span class="icon"><img src="icon/icon19.png"/></span><div class="text">布丁电影票<s></s></div></li>
			<li class="desktop_icon" id="win37"><span class="icon"><img src="icon/icon8.png"/></span><div class="text">中国数学资源网<s></s></div></li>
			<li class="desktop_icon add_icon"><span class="icon"><img src="images/add_icon.png"/></span><div class="text">添加<s></s></div></li>
		</ul>
		<!-- 第四页 -->
		<ul class="deskIcon">
			<li class="desktop_icon" id="win38"><span class="icon"><img src="icon/icon20.png"/></span><div class="text">火影忍者漫画动画<s></s></div></li>
			<li class="desktop_icon" id="win39"><span class="icon"><img src="icon/icon21.png"/></span><div class="text">潇湘书院<s></s></div></li>
			<li class="desktop_icon add_icon"><span class="icon"><img src="images/add_icon.png"/></span><div class="text">添加<s></s></div></li>
		</ul>
	</div>
</div><!--desktopPanel end-->

<div id="taskBarWrap">
	<div id="taskBar">
		<div id="leftBtn"><a href="#" class="upBtn"></a></div>
		<div id="rightBtn"><a href="#" class="downBtn"></a></div>
		<div id="task_lb_wrap"><div id="task_lb"></div></div>
	</div>
</div><!--taskBarWrap end-->

<div id="lr_bar">
	<ul id="default_app">
		<li id="app0"><span><img src="icon/icon1.png" title="我的博客"/></span><div class="text">我的博客<s></s></div></li>
		<li id="app1"><span><img src="icon/icon2.png" title="关于我"/></span><div class="text">关于我<s></s></div></li>
		<li id="app2"><span><img src="icon/icon3.png" title="作品"/></span><div class="text">作品<s></s></div></li>
		<li id="app3"><span><img src="icon/icon11.png" title="资源分享"/></span><div class="text">资源分享<s></s></div></li>
	</ul>
	
	<div id="default_tools">
		<span id="showZm_btn" title="全屏"></span>
		<span id="shizhong_btn" title="时钟"></span>
		<span id="weather_btn" title="天气"></span>
		<span id="them_btn" title="主题"></span>
	</div>
	
	<div id="start_block">
		<a title="开始" id="start_btn"></a>
		<div id="start_item">
			<ul class="item admin">
				<li><span class="adminImg"></span> jsfoot</li>
			</ul>
			<ul class="item">
				<li><span class="sitting_btn"></span>系统设置</li>
				<li><span class="help_btn"></span>使用指南 <b></b></li>
				<li><span class="about_btn"></span><a href="about.html">关于我们</a></li>
				<li><a href="#" onclick="window.close()"><span class="logout_btn"></span>退出系统</a></li>
			</ul>
		</div>
	</div>
	
</div><!--lr_bar end-->


</body>
</html>
