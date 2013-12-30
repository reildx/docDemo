package action;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import entity.Attach;
import entity.Paper;


import service.PaperService;

public class PaperAction extends BaseAction {

	private PaperService paperservice;
	private Paper paper;
	private Attach attach;

	private File uploadFile;
	private File uploadPoster;
	private File uploadSlide;
	private File[] uploadDemo;
	private File[] uploadCode;
	private File[] uploadSpt;
	
	private String uploadFileFileName;
	private String uploadPosterFileName;
	private String uploadSlideFileName;
	private String[] uploadDemoFileName;
	private String[] uploadCodeFileName;
	private String[] uploadSptFileName;
	
	private File editPoster;
	private File editSlide;
	private File editDemo;
	private File editCode;
	private File editSpt;
	private String editPosterFileName;
	private String editSlideFileName;
	private String editDemoFileName;
	private String editCodeFileName;
	private String editSptFileName;
	
	

	//获得选择的文献
	public String getSelectPaper(){
		int paperId = Integer.valueOf(this.request().getParameter("paperId").toString());
		this.request().setAttribute("selectPaper", this.paperservice.getSelectPaper(paperId));
		this.paper = (Paper) this.request().getAttribute("selectPaper");
		return SUCCESS;
	}
	
	//获得我的文献列表
	public String getMyPapers()throws Exception{
		String userId = (String)this.session().getAttribute("userId");
		this.request().setAttribute("myPapers",this.paperservice.getMyPapers(userId));
		
		return SUCCESS;
	}
	
	//获得附件
	public String getAttaches()throws Exception{
		int paperId = this.paper.getPaperId();
		this.request().setAttribute("attaches",this.paperservice.getAttaches(paperId));
		return SUCCESS;
	}
	
	//插入文献基本信息
	public String uploadInfo()throws Exception {	
		int value = Integer.valueOf(this.request().getParameter("selectedType").toString());
		int paperId = this.paper.getPaperId();
		
		this.paperservice.uploadInfo(paper);
		this.request().setAttribute("uploadFileName", this.uploadFileFileName);
		this.request().setAttribute("attaches",this.paperservice.getAttaches(paper.getPaperId()));
		return SUCCESS;
		
	}
	

	//插入附件
	public String uploadAttach()throws IOException {
		String type = this.request().getParameter("attach.type").toString();
		if(type.equals("paper")){
			this.paper = new Paper();
			this.paper.setUserId((String)this.session().getAttribute("userId"));
			this.paperservice.uploadInfo(this.paper);
			
			String dir = ServletActionContext.getRequest().getRealPath(this.paper.getUserId());
			String path = dir +"\\"+ this.uploadFileFileName;
			File target = new File(dir,this.uploadFileFileName);
			FileUtils.copyFile(this.uploadFile, target);
			
			this.attach = new Attach();
			this.attach.setUserId(this.paper.getUserId());
			this.attach.setPaperId(this.paper.getPaperId());
			this.attach.setType(type);
			this.attach.setPath(path);
			this.attach.setDate(new Date(System.currentTimeMillis()));
			this.paperservice.uploadAttach(this.attach);
			
			this.session().setAttribute("uploadFile", this.uploadFile);
			this.request().setAttribute("uploadFileName", this.uploadFileFileName);
			this.uploadFile = null;
			return SUCCESS;
		}
		
		String dir = ServletActionContext.getRequest().getRealPath(this.paper.getUserId());
		String path;
		File target;
		
		//upload poster
		if(this.uploadPoster!=null){
			path = dir +"\\"+ this.uploadPosterFileName;
			target = new File(dir,this.uploadPosterFileName);
			FileUtils.copyFile(this.uploadPoster, target);
			
			this.attach = new Attach();
			this.attach.setUserId(this.paper.getUserId());
			this.attach.setPaperId(this.paper.getPaperId());
			this.attach.setType("poster");
			this.attach.setPath(path);
			this.attach.setDate(new Date(System.currentTimeMillis()));
			this.paperservice.uploadAttach(this.attach);
			this.uploadPoster = null;
		}
		
		//upload slide
		if(this.uploadSlide!=null){
			path = dir +"\\"+ this.uploadSlideFileName;
			target = new File(dir,this.uploadSlideFileName);
			FileUtils.copyFile(this.uploadSlide, target);
			
			this.attach = new Attach();
			this.attach.setUserId(this.paper.getUserId());
			this.attach.setPaperId(this.paper.getPaperId());
			this.attach.setType("slide");
			this.attach.setPath(path);
			this.attach.setDate(new Date(System.currentTimeMillis()));
			this.paperservice.uploadAttach(this.attach);
			this.uploadSlide = null;
		}
		//upload demo		
		if(this.uploadDemo!=null&&this.uploadDemo.length>0){
			for(int i = 0; i < this.uploadDemo.length; i++){
				path = dir +"\\"+ this.uploadDemoFileName[i];
				target = new File(dir,this.uploadDemoFileName[i]);
				FileUtils.copyFile(this.uploadDemo[i], target);
				
				this.attach = new Attach();
				this.attach.setUserId(this.paper.getUserId());
				this.attach.setPaperId(this.paper.getPaperId());
				this.attach.setType("demo");
				this.attach.setPath(path);
				this.attach.setDate(new Date(System.currentTimeMillis()));
				this.paperservice.uploadAttach(this.attach);
			}
			this.uploadDemo = null;
		}
		//upload code
		if(this.uploadCode!=null&&this.uploadCode.length>0){
			for(int i = 0;i< this.uploadCode.length;i++){
				path = dir +"\\"+ this.uploadCodeFileName[i];
				target = new File(dir,this.uploadCodeFileName[i]);
				FileUtils.copyFile(this.uploadCode[i], target);
				
				this.attach = new Attach();
				this.attach.setUserId(this.paper.getUserId());
				this.attach.setPaperId(this.paper.getPaperId());
				this.attach.setType("code");
				this.attach.setPath(path);
				this.attach.setDate(new Date(System.currentTimeMillis()));
				this.paperservice.uploadAttach(this.attach);
			}
			this.uploadCode = null;
		}
		//upload supplement
		if(this.uploadSpt!=null&&this.uploadSpt.length>0){
			for(int i=0;i<this.uploadSpt.length;i++){
				path = dir +"\\"+ this.uploadSptFileName[i];
				target = new File(dir,this.uploadSptFileName[i]);
				FileUtils.copyFile(this.uploadSpt[i], target);
				
				this.attach = new Attach();
				this.attach.setUserId(this.paper.getUserId());
				this.attach.setPaperId(this.paper.getPaperId());
				this.attach.setType("supplement");
				this.attach.setPath(path);
				this.attach.setDate(new Date(System.currentTimeMillis()));
				this.paperservice.uploadAttach(this.attach);
			}
			this.uploadSpt = null;
		}
		
//		for(int i = 0;i< this.uploadFile.length;i++){
//			type = this.request().getParameter("attach.type").toString();
//			String path = dir +"\\"+ this.uploadFileFileName[i];
//			File target = new File(dir,this.uploadFileFileName[i]);
//			FileUtils.copyFile(this.uploadFile, target);
//			
//			this.attach = new Attach();
//			this.attach.setUserId(this.paper.getUserId());
//			this.attach.setPaperId(this.paper.getPaperId());
//			this.attach.setType(type);
//			this.attach.setPath(path);
//			this.attach.setDate(new Date(System.currentTimeMillis()));
//			this.paperservice.uploadAttach(this.attach);
//		}
		
		return "attachSuccess";		
	}

	
	public String editAttach()throws IOException {
		
		String dir = ServletActionContext.getRequest().getRealPath(this.paper.getUserId());
		String path;
		File target;
		
		//upload poster
		if(this.editPoster!=null){
			path = dir +"\\"+ this.editPosterFileName;
			target = new File(dir,this.editPosterFileName);
			FileUtils.copyFile(this.editPoster, target);
			
			this.attach = new Attach();
			this.attach.setUserId(this.paper.getUserId());
			this.attach.setPaperId(this.paper.getPaperId());
			this.attach.setType("poster");
			this.attach.setPath(path);
			this.attach.setDate(new Date(System.currentTimeMillis()));
			this.paperservice.uploadAttach(this.attach);
			this.editPoster = null;
		}
		
		//upload slide
		if(this.editSlide!=null){
			path = dir +"\\"+ this.editSlideFileName;
			target = new File(dir,this.editSlideFileName);
			FileUtils.copyFile(this.editSlide, target);
			
			this.attach = new Attach();
			this.attach.setUserId(this.paper.getUserId());
			this.attach.setPaperId(this.paper.getPaperId());
			this.attach.setType("slide");
			this.attach.setPath(path);
			this.attach.setDate(new Date(System.currentTimeMillis()));
			this.paperservice.uploadAttach(this.attach);
			this.editSlide = null;
		}
		//upload demo
		
		if(this.editDemo!=null){
			path = dir +"\\"+ this.editDemoFileName;
			target = new File(dir,this.editDemoFileName);
			FileUtils.copyFile(this.editDemo, target);
			
			this.attach = new Attach();
			this.attach.setUserId(this.paper.getUserId());
			this.attach.setPaperId(this.paper.getPaperId());
			this.attach.setType("demo");
			this.attach.setPath(path);
			this.attach.setDate(new Date(System.currentTimeMillis()));
			this.paperservice.uploadAttach(this.attach);
			this.editDemo = null;
		}
		//upload code
		if(this.editCode!=null){
			path = dir +"\\"+ this.editCodeFileName;
			target = new File(dir,this.editCodeFileName);
			FileUtils.copyFile(this.editCode, target);
			
			this.attach = new Attach();
			this.attach.setUserId(this.paper.getUserId());
			this.attach.setPaperId(this.paper.getPaperId());
			this.attach.setType("code");
			this.attach.setPath(path);
			this.attach.setDate(new Date(System.currentTimeMillis()));
			this.paperservice.uploadAttach(this.attach);
			this.editCode = null;
		}
		//upload supplement
		if(this.editSpt!=null){
			path = dir +"\\"+ this.editSptFileName;
			target = new File(dir,this.editSptFileName);
			FileUtils.copyFile(this.editSpt, target);
			
			this.attach = new Attach();
			this.attach.setUserId(this.paper.getUserId());
			this.attach.setPaperId(this.paper.getPaperId());
			this.attach.setType("supplement");
			this.attach.setPath(path);
			this.attach.setDate(new Date(System.currentTimeMillis()));
			this.paperservice.uploadAttach(this.attach);
			this.editSpt = null;
		}
//		for(int i = 0;i< this.uploadFile.length;i++){
//			type = this.request().getParameter("attach.type").toString();
//			String path = dir +"\\"+ this.uploadFileFileName[i];
//			File target = new File(dir,this.uploadFileFileName[i]);
//			FileUtils.copyFile(this.uploadFile, target);
//			
//			this.attach = new Attach();
//			this.attach.setUserId(this.paper.getUserId());
//			this.attach.setPaperId(this.paper.getPaperId());
//			this.attach.setType(type);
//			this.attach.setPath(path);
//			this.attach.setDate(new Date(System.currentTimeMillis()));
//			this.paperservice.uploadAttach(this.attach);
//		}
		
		return "attachSuccess";		
	}

	public Paper getPaper() {
		return paper;
	}

	public void setPaper(Paper paper) {
		this.paper = paper;
	}

	public Attach getAttach() {
		return attach;
	}

	public void setAttach(Attach attach) {
		this.attach = attach;
	}
	
	public PaperService getPaperservice() {
		return paperservice;
	}

	public void setPaperservice(PaperService paperservice) {
		this.paperservice = paperservice;
	}
	
	public File getEditPoster() {
		return editPoster;
	}

	public void setEditPoster(File editPoster) {
		this.editPoster = editPoster;
	}

	public File getEditSlide() {
		return editSlide;
	}

	public void setEditSlide(File editSlide) {
		this.editSlide = editSlide;
	}

	public File getEditDemo() {
		return editDemo;
	}

	public void setEditDemo(File editDemo) {
		this.editDemo = editDemo;
	}

	public File getEditCode() {
		return editCode;
	}

	public void setEditCode(File editCode) {
		this.editCode = editCode;
	}

	public File getEditSpt() {
		return editSpt;
	}

	public void setEditSpt(File editSpt) {
		this.editSpt = editSpt;
	}

	public String getEditPosterFileName() {
		return editPosterFileName;
	}

	public void setEditPosterFileName(String editPosterFileName) {
		this.editPosterFileName = editPosterFileName;
	}

	public String getEditSlideFileName() {
		return editSlideFileName;
	}

	public void setEditSlideFileName(String editSlideFileName) {
		this.editSlideFileName = editSlideFileName;
	}

	public String getEditDemoFileName() {
		return editDemoFileName;
	}

	public void setEditDemoFileName(String editDemoFileName) {
		this.editDemoFileName = editDemoFileName;
	}

	public String getEditCodeFileName() {
		return editCodeFileName;
	}

	public void setEditCodeFileName(String editCodeFileName) {
		this.editCodeFileName = editCodeFileName;
	}

	public String getEditSptFileName() {
		return editSptFileName;
	}

	public void setEditSptFileName(String editSptFileName) {
		this.editSptFileName = editSptFileName;
	}

	public File getUploadPoster() {
		return uploadPoster;
	}

	public void setUploadPoster(File uploadPoster) {
		this.uploadPoster = uploadPoster;
	}

	public File getUploadSlide() {
		return uploadSlide;
	}

	public void setUploadSlide(File uploadSlide) {
		this.uploadSlide = uploadSlide;
	}

	public File[] getUploadDemo() {
		return uploadDemo;
	}

	public void setUploadDemo(File[] uploadDemo) {
		this.uploadDemo = uploadDemo;
	}

	public File[] getUploadCode() {
		return uploadCode;
	}

	public void setUploadCode(File[] uploadCode) {
		this.uploadCode = uploadCode;
	}

	public File[] getUploadSpt() {
		return uploadSpt;
	}

	public void setUploadSpt(File[] uploadSpt) {
		this.uploadSpt = uploadSpt;
	}

	public String[] getUploadDemoFileName() {
		return uploadDemoFileName;
	}

	public void setUploadDemoFileName(String[] uploadDemoFileName) {
		this.uploadDemoFileName = uploadDemoFileName;
	}

	public String[] getUploadCodeFileName() {
		return uploadCodeFileName;
	}

	public void setUploadCodeFileName(String[] uploadCodeFileName) {
		this.uploadCodeFileName = uploadCodeFileName;
	}

	public String[] getUploadSptFileName() {
		return uploadSptFileName;
	}

	public void setUploadSptFileName(String[] uploadSptFileName) {
		this.uploadSptFileName = uploadSptFileName;
	}


	public File getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	}

	public String getUploadFileFileName() {
		return uploadFileFileName;
	}

	public void setUploadFileFileName(String uploadFileFileName) {
		this.uploadFileFileName = uploadFileFileName;
	}

	public String getUploadPosterFileName() {
		return uploadPosterFileName;
	}

	public void setUploadPosterFileName(String uploadPosterFileName) {
		this.uploadPosterFileName = uploadPosterFileName;
	}

	public String getUploadSlideFileName() {
		return uploadSlideFileName;
	}

	public void setUploadSlideFileName(String uploadSlideFileName) {
		this.uploadSlideFileName = uploadSlideFileName;
	}

	
}
