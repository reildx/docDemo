package service;

import dao.UserDAO;
import entity.User;

public class UserService {
	
	private UserDAO userdao;

	
	public int validate(String username, String password) {
		// TODO Auto-generated method stub
		User user=this.userdao.findById(username);
		
		if (user==null){
			return -1;
		}
		if (user.getPassword().equals(password)){
			return 0;
		}
		
		else return -2;
				
	
		
	}
	
	
	public UserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}

	
	
	
	
	

}
