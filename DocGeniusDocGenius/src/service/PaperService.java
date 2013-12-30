package service;

import java.util.List;

import dao.AttachDAO;
import dao.PaperDAO;
import entity.Attach;
import entity.Paper;

public class PaperService {

	private AttachDAO attachdao;
	private PaperDAO paperdao;

	
	public boolean uploadInfo(Paper paper) {
		
		this.paperdao.saveOrUpdate(paper);
		return true;
		
	}
	
	public boolean uploadAttach(Attach attach) {
		this.attachdao.saveOrUpdate(attach);
		return true;
		
	}

	public List<Paper> getMyPapers(String userId){
		
		return this.paperdao.findByUserId(userId);
	}
	
	public Paper getSelectPaper(int paperId){
		return this.paperdao.findById(paperId);
	}
	
	public List<Attach> getAttaches(int paperId){
		return this.attachdao.findByPaperId(paperId);
	}
	
	public AttachDAO getAttachdao() {
		return attachdao;
	}

	public void setAttachdao(AttachDAO attachdao) {
		this.attachdao = attachdao;
	}

	public PaperDAO getPaperdao() {
		return paperdao;
	}

	public void setPaperdao(PaperDAO paperdao) {
		this.paperdao = paperdao;
	}

}
