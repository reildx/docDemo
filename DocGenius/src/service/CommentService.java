package service;

import java.util.List;

import dao.CommentDAO;
import entity.Comment;

public class CommentService {

	private CommentDAO commentdao;
	
	
	public List<Comment> getSimpleCommentByPaper(int paperId) {
		List<Comment> simComments = this.commentdao.findByPaperId(paperId);
		for(int i=0;i<simComments.size();i++){
			String simpleComment = simComments.get(i).getSimpleComment();
			if(simpleComment.equals(null))
				simComments.remove(i);
			
		}
		return simComments;
		
	}
	
	public List<Comment> getDetailCommentByPaper(int paperId) {
		List<Comment> detComments = this.commentdao.findByPaperId(paperId);
		for(int i=0;i<detComments.size();i++){
			Comment detailComment = detComments.get(i);
			if(!detailComment.getSimpleComment().equals(null)||detailComment.getIsPublic()==0)
				detComments.remove(i);
		}
		return detComments;
		
	}
	
	public boolean uploadComment(Comment comment) {
		this.commentdao.saveOrUpdate(comment);
		return true;
		
	}

	public CommentDAO getCommentdao() {
		return commentdao;
	}

	public void setCommentdao(CommentDAO commentdao) {
		this.commentdao = commentdao;
	}
}
