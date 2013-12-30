package service;

import java.util.List;

import dao.TypeconfigDAO;
import dao.TypeinfoconfigDAO;
import entity.Typeconfig;
import entity.Typeinfoconfig;


public class ConfigService {

	private TypeconfigDAO typeconfigdao;
	private TypeinfoconfigDAO typeinfoconfigdao;
	
	
	public List<Typeconfig> getPaperTypes() {
		List<Typeconfig> paperType = this.typeconfigdao.findAll();		
		return paperType;
		
	}
	
	public boolean editPaperTypes(String oldType, String newType) {
		if(this.typeconfigdao.findByType(newType) != null){
			return false;
		}
		
		Typeconfig typeconfig = (Typeconfig)(this.typeconfigdao.findByType(oldType));
		typeconfig.setType(newType);
		this.typeconfigdao.saveOrUpdate(typeconfig);
		return true;
	}
	
	public TypeconfigDAO getTypeconfigdao() {
		return typeconfigdao;
	}
	public void setTypeconfigdao(TypeconfigDAO typeconfigdao) {
		this.typeconfigdao = typeconfigdao;
	}
	public TypeinfoconfigDAO getTypeinfoconfigdao() {
		return typeinfoconfigdao;
	}
	public void setTypeinfoconfigdao(TypeinfoconfigDAO typeinfoconfigdao) {
		this.typeinfoconfigdao = typeinfoconfigdao;
	}
	
}
