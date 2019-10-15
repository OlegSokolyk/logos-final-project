package com.hotel.domain;

import com.hotel.entity.enumeration.Role;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter
@NoArgsConstructor
public class UserProfileRequest {

	private int id;
	
	private String firstName;
	
	private String lastName;
	
	private String email;
	
	private String phone;
	
	private Role role;
	
	private String imagePath;
}
