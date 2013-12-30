package entity;

/**
 * Typeinfoconfig entity. @author MyEclipse Persistence Tools
 */

public class Typeinfoconfig implements java.io.Serializable {

	// Fields

	private Integer id;
	private String columnName;
	private Integer type;
	private String description;

	// Constructors

	/** default constructor */
	public Typeinfoconfig() {
	}

	/** full constructor */
	public Typeinfoconfig(String columnName, Integer type, String description) {
		this.columnName = columnName;
		this.type = type;
		this.description = description;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getColumnName() {
		return this.columnName;
	}

	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}

	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}