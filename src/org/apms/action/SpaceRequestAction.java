package org.apms.action;

import org.apms.service.ISpaceRequestService;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 *@author lwxyz
 *@version 2015年3月3日 下午4:37:07
 *
 */

public class SpaceRequestAction extends ActionSupport {
	private ISpaceRequestService spaceRequestService;
	
	public String execute() throws Exception {
		return "";
	}

	public ISpaceRequestService getSpaceRequestService() {
		return spaceRequestService;
	}
	public void setSpaceRequestService(ISpaceRequestService spaceRequestService) {
		this.spaceRequestService = spaceRequestService;
	}
}
