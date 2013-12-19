package action;

import service.UserService;

public class UserAction extends BaseAction {
	
	private UserService userservice;
	
	public String login() throws Exception{
		
		String username=this.request().getParameter("username").toString();
		String password=this.request().getParameter("password").toString();
		
		if(null!=username&&password!=null){
			int a=this.userservice.validate(username,password);
			if(a==0){
				this.session().setAttribute("userId", username);
				if(username.equals("admin"))
					return "admin";
				else {					
					return SUCCESS;
				}
			}
			else{
				this.request().setAttribute("mes", a);
				return INPUT;
			}
		}
		else{
			this.request().setAttribute("mes", -3);
			return INPUT;
		}
		
				
	}
	
	
	
	
	

	public UserService getUserservice() {
		return userservice;
	}

	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}
	
	
	
	
	
	
	

}
