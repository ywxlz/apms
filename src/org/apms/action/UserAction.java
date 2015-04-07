package org.apms.action;

import org.apms.bean.Users;
import org.apms.service.IUsersService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 *@author lwxyz
 *@version 2015年3月3日 下午4:37:21
 *
 */

public class UserAction extends ActionSupport {
	private IUsersService userService;
	private String username;
	private String password;
	
	public String execute() throws Exception {
		return "";
	}
	
	//用户登陆
	public String login() throws Exception {
		boolean flag = userService.login(username, password);
		Users user = userService.queryName(username);
		if (flag) {
			ActionContext.getContext().getSession().put("username", username);
			ActionContext.getContext().getSession().put("status", user);
			return "login";
		}
		return "loginFailed";
	}
	
	//用户注销
	public String logout() throws Exception {
		ActionContext.getContext().getSession().put("username", null);
		ActionContext.getContext().getSession().put("status", null);
		return "logout";
	}
	
	//用户注册
	public String register() throws Exception {
		Users user = new Users(null, username, password, "", "1", "1", "", 1);
		userService.add(user);
		return "register";
	}

	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public IUsersService getUserService() {
		return userService;
	}
	public void setUserService(IUsersService userService) {
		this.userService = userService;
	}
}
