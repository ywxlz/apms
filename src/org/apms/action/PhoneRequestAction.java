package org.apms.action;

import org.apms.service.IPhoneRequestService;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 *@author lwxyz
 *@version 2015年3月3日 下午4:36:17
 *
 */

public class PhoneRequestAction extends ActionSupport {
	private IPhoneRequestService phoneRequestService;
	
	public String execute() throws Exception {
		return "";
	}

	public IPhoneRequestService getPhoneRequestService() {
		return phoneRequestService;
	}
	public void setPhoneRequestService(IPhoneRequestService phoneRequestService) {
		this.phoneRequestService = phoneRequestService;
	}
}
