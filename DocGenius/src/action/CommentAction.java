package action;

import java.util.Date;

import entity.Comment;
import service.CommentService;

public class CommentAction extends BaseAction {

	private CommentService commentservice;
	private Comment comment;
	
	public String commitSimpleComment() {
		this.comment.setUserId(this.session().getAttribute("userId").toString());
		this.comment.setPaperId(this.request().getAttribute("paperId").toString());
		this.comment.setIsPublic(1);
		this.comment.setDate(new Date(System.currentTimeMillis()));
		this.commentservice.uploadComment(comment);
		return "success";
		
	}
	
	public String commitDetailComment() {
		this.comment.setUserId(this.session().getAttribute("userId").toString());
		this.comment.setPaperId(this.request().getAttribute("paperId").toString());
		this.comment.setIsPublic(1);
		this.comment.setDate(new Date(System.currentTimeMillis()));
		this.commentservice.uploadComment(comment);
		return "success";
		
	}
	
	public String saveComment() {
		this.comment.setUserId(this.session().getAttribute("userId").toString());
		this.comment.setPaperId(this.request().getAttribute("paperId").toString());
		this.comment.setIsPublic(0);
		this.comment.setDate(new Date(System.currentTimeMillis()));
		this.commentservice.uploadComment(comment);
		return "success";
		
	}
	
	
	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}

	public CommentService getCommentservice() {
		return commentservice;
	}

	public void setCommentservice(CommentService commentservice) {
		this.commentservice = commentservice;
	}

}
