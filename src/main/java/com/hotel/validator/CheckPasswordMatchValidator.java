package com.hotel.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.stereotype.Component;

import com.hotel.domain.RegisterRequest;

@Component
public class CheckPasswordMatchValidator implements ConstraintValidator<CheckPasswordMatch, RegisterRequest>{

	@Override
	public boolean isValid(RegisterRequest user, ConstraintValidatorContext context) {
		if (user.getPassword() == null || user.getPasswordConfirmation() == null) {
			return false;
		}
		
		if (user.getPassword().equals(user.getPasswordConfirmation())) {
			return true;
		}
		
		return false;
	}

	@Override
	public void initialize(CheckPasswordMatch arg0) {
		// TODO Auto-generated method stub
		
	}

}
