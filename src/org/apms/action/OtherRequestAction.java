package org.apms.action;

import org.apms.service.IOtherRequestService;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 *@author lwxyz
 *@version 2015年3月3日 下午4:36:05
 *
 */

public class OtherRequestAction extends ActionSupport {
	private IOtherRequestService otherRequestService;

	public String execute() throws Exception {
		return "";
	}
	
	public IOtherRequestService getOtherRequestService() {
		return otherRequestService;
	}
	public void setOtherRequestService(IOtherRequestService otherRequestService) {
		this.otherRequestService = otherRequestService;
	}
}
