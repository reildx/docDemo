package action;

import java.util.List;

import entity.Typeconfig;
import entity.Typeinfoconfig;

import service.ConfigService;

public class PaperConfigAction extends BaseAction{
	private ConfigService configservice;
	private String editType;
	private String oldType;
	
	public String hello(){
		System.out.println("Hello!");
		return SUCCESS;
	}
	
	public String getPaperTypes() {
		List<Typeconfig> paperTypes = this.configservice.getPaperTypes();
		this.request().setAttribute("paperTypes", paperTypes);
		return SUCCESS;
		
	}
	
	public String editPaperTypes() {	
		if(this.configservice.editPaperTypes(oldType, editType)){
			return "editTypes_success";
		}
		return "editTypes_fail";		
	}
	
	public ConfigService getConfigservice() {
		return configservice;
	}

	public void setConfigservice(ConfigService configservice) {
		this.configservice = configservice;
	}

	public String getEditType() {
		return editType;
	}

	public void setEditType(String editType) {
		this.editType = editType;
	}

	public String getOldType() {
		return oldType;
	}

	public void setOldType(String oldType) {
		this.oldType = oldType;
	}
	
	
}
