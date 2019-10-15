package com.hotel.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.hotel.service.UserService;

@Component
public class CheckIfUserEmailExistValidator implements ConstraintValidator<CheckIfUserEmailExist, String>{

	@Autowired private UserService userService;
	
	@Override
	public boolean isValid(String email, ConstraintValidatorContext context) {
		
		return userService.findUserByEmail(email) != null ? false : true;
	}

	@Override
	public void initialize(CheckIfUserEmailExist arg0) {
		// TODO Auto-generated method stub
		
	}

	
}
