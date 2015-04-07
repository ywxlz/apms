package org.apms.action;

import org.apms.service.IEmailRequestService;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 *@author lwxyz
 *@version 2015年3月3日 下午4:35:01
 *
 */

public class EmailRequestAction extends ActionSupport {
	private IEmailRequestService emailRequestService;
	
	public String execute() throws Exception {
		return "";
	}

	public IEmailRequestService getEmailRequestService() {
		return emailRequestService;
	}
	public void setEmailRequestService(IEmailRequestService emailRequestService) {
		this.emailRequestService = emailRequestService;
	}
}
