package wp5;

public class Author {
	public String name;
	public String email;
	public char gender;

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

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}

	public Author(String name, String email, char gender) {
	}

	@Override
	public String toString() {
		return "author [name=" + name + ", email=" + email + ", gender=" + gender + "]";
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
