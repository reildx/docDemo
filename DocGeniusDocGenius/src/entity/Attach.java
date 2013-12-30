package entity;

import java.util.Date;

/**
 * Attach entity. @author MyEclipse Persistence Tools
 */

public class Attach implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer paperId;
	private String userId;
	private String type;
	private String path;
	private Date date;

	// Constructors

	/** default constructor */
	public Attach() {
	}

	/** full constructor */
	public Attach(Integer paperId, String userId, String type, String path,
			Date date) {
		this.paperId = paperId;
		this.userId = userId;
		this.type = type;
		this.path = path;
		this.date = date;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getPaperId() {
		return this.paperId;
	}

	public void setPaperId(Integer paperId) {
		this.paperId = paperId;
	}

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPath() {
		return this.path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}