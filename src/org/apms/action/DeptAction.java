package org.apms.action;

import org.apms.service.IDeptService;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 *@author lwxyz
 *@version 2015年3月3日 下午4:34:46
 *
 */

public class DeptAction extends ActionSupport {
	private IDeptService deptService;
	
	public String execute() throws Exception {
		return "";
	}

	public IDeptService getDeptService() {
		return deptService;
	}
	public void setDeptService(IDeptService deptService) {
		this.deptService = deptService;
	}
}
