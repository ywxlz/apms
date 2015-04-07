package org.apms.action;

import org.apms.service.IRequestService;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 *@author lwxyz
 *@version 2015年3月3日 下午4:36:29
 *
 */

public class RequestAction extends ActionSupport {
	private IRequestService requestService;
	
	public String execute() throws Exception {
		return "";
	}

	public IRequestService getRequestService() {
		return requestService;
	}
	public void setRequestService(IRequestService requestService) {
		this.requestService = requestService;
	}
}
