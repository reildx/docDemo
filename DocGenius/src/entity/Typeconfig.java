package entity;

/**
 * Typeconfig entity. @author MyEclipse Persistence Tools
 */

public class Typeconfig implements java.io.Serializable {

	// Fields

	private Integer id;
	private String type;

	// Constructors

	/** default constructor */
	public Typeconfig() {
	}

	/** full constructor */
	public Typeconfig(String type) {
		this.type = type;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

}