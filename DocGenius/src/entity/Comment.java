package entity;

import java.util.Date;

/**
 * Comment entity. @author MyEclipse Persistence Tools
 */

public class Comment implements java.io.Serializable {

	// Fields

	private Integer id;
	private String userId;
	private String paperId;
	private String simpleComment;
	private String problem;
	private String idea;
	private String experiment;
	private String contribution;
	private String improvement;
	private Integer score;
	private Integer isPublic;
	private Date date;

	// Constructors

	/** default constructor */
	public Comment() {
	}

	/** full constructor */
	public Comment(String userId, String paperId, String simpleComment,
			String problem, String idea, String experiment,
			String contribution, String improvement, Integer score,
			Integer isPublic, Date date) {
		this.userId = userId;
		this.paperId = paperId;
		this.simpleComment = simpleComment;
		this.problem = problem;
		this.idea = idea;
		this.experiment = experiment;
		this.contribution = contribution;
		this.improvement = improvement;
		this.score = score;
		this.isPublic = isPublic;
		this.date = date;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPaperId() {
		return this.paperId;
	}

	public void setPaperId(String paperId) {
		this.paperId = paperId;
	}

	public String getSimpleComment() {
		return this.simpleComment;
	}

	public void setSimpleComment(String simpleComment) {
		this.simpleComment = simpleComment;
	}

	public String getProblem() {
		return this.problem;
	}

	public void setProblem(String problem) {
		this.problem = problem;
	}

	public String getIdea() {
		return this.idea;
	}

	public void setIdea(String idea) {
		this.idea = idea;
	}

	public String getExperiment() {
		return this.experiment;
	}

	public void setExperiment(String experiment) {
		this.experiment = experiment;
	}

	public String getContribution() {
		return this.contribution;
	}

	public void setContribution(String contribution) {
		this.contribution = contribution;
	}

	public String getImprovement() {
		return this.improvement;
	}

	public void setImprovement(String improvement) {
		this.improvement = improvement;
	}

	public Integer getScore() {
		return this.score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public Integer getIsPublic() {
		return this.isPublic;
	}

	public void setIsPublic(Integer isPublic) {
		this.isPublic = isPublic;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}