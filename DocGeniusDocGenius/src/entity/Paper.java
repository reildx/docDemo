package entity;

/**
 * Paper entity. @author MyEclipse Persistence Tools
 */

public class Paper implements java.io.Serializable {

	// Fields

	private Integer paperId;
	private String userId;
	private String type;
	private String title;
	private String author;
	private Integer year;
	private Integer pages;
	private String abstract_;
	private String keywords;
	private String url;
	private String publisher;
	private String tips;

	// Constructors

	/** default constructor */
	public Paper() {
	}

	/** full constructor */
	public Paper(String userId, String type, String title, String author,
			Integer year, Integer pages, String abstract_, String keywords,
			String url, String publisher, String tips) {
		this.userId = userId;
		this.type = type;
		this.title = title;
		this.author = author;
		this.year = year;
		this.pages = pages;
		this.abstract_ = abstract_;
		this.keywords = keywords;
		this.url = url;
		this.publisher = publisher;
		this.tips = tips;
	}

	// Property accessors

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

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Integer getYear() {
		return this.year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public Integer getPages() {
		return this.pages;
	}

	public void setPages(Integer pages) {
		this.pages = pages;
	}

	public String getAbstract_() {
		return this.abstract_;
	}

	public void setAbstract_(String abstract_) {
		this.abstract_ = abstract_;
	}

	public String getKeywords() {
		return this.keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getPublisher() {
		return this.publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getTips() {
		return this.tips;
	}

	public void setTips(String tips) {
		this.tips = tips;
	}

}