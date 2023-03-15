package Model;

public class Seller {
	private int ID;
	private String Username, City, Email, Password;
	private Long Contact;

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public Long getContact() {
		return Contact;
	}

	public void setContact(Long contact) {
		Contact = contact;
	}

	@Override
	public String toString() {
		return "Seller [ID=" + ID + ", Username=" + Username + ", City=" + City + ", Email=" + Email + ", Password="
				+ Password + ", Contact=" + Contact + "]";
	}
}