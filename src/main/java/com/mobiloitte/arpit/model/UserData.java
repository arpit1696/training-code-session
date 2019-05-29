package com.mobiloitte.arpit.model;

import org.springframework.web.multipart.MultipartFile;

/**
 * @author Arpit gupta
 *
 */
public class UserData {
	int id;
	String firstName;
	String lastName;
	String email;
	String password;
	String role;
	String pic;
	String gender;
	String maritalStatus;
	public UserData() {
		super();
	}


	String hobbies;
	MultipartFile image;
	String otp;

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
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

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public String getHobbies() {
		return hobbies;
	}

	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public String getOtp() {
		return otp;
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}

	public UserData(int id, String firstName, String lastName, String email, String password, String role, String pic,
			String gender, String maritalStatus, String hobbies, MultipartFile image, String otp) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.role = role;
		this.pic = pic;
		this.gender = gender;
		this.maritalStatus = maritalStatus;
		this.hobbies = hobbies;
		this.image = image;
		this.otp = otp;
	}


	@Override
	public String toString() {
		return "UserData [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", password=" + password + ", role=" + role + ", pic=" + pic + ", gender=" + gender
				+ ", maritalStatus=" + maritalStatus + ", hobbies=" + hobbies + ", image=" + image + ", otp=" + otp
				+ "]";
	}

	
}
