package com.hotel.domain;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

import com.hotel.validator.CheckIfUserEmailExist;
import com.hotel.validator.CheckPasswordMatch;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter @Setter
@CheckPasswordMatch
public class RegisterRequest {

	
	@NotEmpty private String firstName;
	@NotEmpty private String lastName;
	@NotEmpty private String phoneNumber;
	@Pattern(regexp = "[a-zA-Z].+[a-zA-Z0-9+.]+@[A-Za-z]{2,5}+.[A-Za-z]{2,4}$", message = "Typed email has not correct format")
	@CheckIfUserEmailExist
	@NotEmpty private String email;
	@NotEmpty private String password;
	@NotEmpty private String passwordConfirmation;
	
}
