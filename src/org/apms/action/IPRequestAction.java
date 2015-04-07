package org.apms.action;

import org.apms.service.IIPRequestService;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 *@author lwxyz
 *@version 2015年3月3日 下午4:35:36
 *
 */

public class IPRequestAction extends ActionSupport {
	private IIPRequestService ipRequestService;
	
	public String execute() throws Exception {
		return "";
	}

	public IIPRequestService getIpRequestService() {
		return ipRequestService;
	}
	public void setIpRequestService(IIPRequestService ipRequestService) {
		this.ipRequestService = ipRequestService;
	}
}
