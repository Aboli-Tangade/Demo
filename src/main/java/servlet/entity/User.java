package servlet.entity;

public class User {

	
	private String name;
	private String email;
	private String password;
	private String skill;
	private String description;
	
	
	
	
	public User(String name, String email, String password, String skill, String description) {
		this.name = name;
		this.email = email;
		this.password = password;
		this.skill = skill;
		this.description = description;
	}
	
	
	
	
	public User( String email, String password) {
		
		this.email = email;
		this.password = password;
	}
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}




	@Override
	public String toString() {
		return "User [name=" + name + ", email=" + email + ", password=" + password + ", skill=" + skill
				+ ", description=" + description + "]";
	}
	
	
	
	
	
}
