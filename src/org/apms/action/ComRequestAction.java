package org.apms.action;

import org.apms.service.IComRequestService;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 *@author lwxyz
 *@version 2015年3月3日 下午4:34:31
 *
 */

public class ComRequestAction extends ActionSupport {
	private IComRequestService comRequestService;
	
	public String execute() throws Exception {
		return "";
	}
	
	public IComRequestService getComRequestService() {
		return comRequestService;
	}
	public void setComRequestService(IComRequestService comRequestService) {
		this.comRequestService = comRequestService;
	}
}
