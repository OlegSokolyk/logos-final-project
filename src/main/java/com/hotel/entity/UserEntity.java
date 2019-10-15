package com.hotel.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import com.hotel.entity.enumeration.Role;

@Entity
@Table(name = "user")
@NoArgsConstructor
@Getter @Setter
public class UserEntity extends BaseEntity{

	@Column(name = "first_name")
	private String firstName;
	
	@Column(name = "last_name")
	private String lastName;
	
	private String email;
	
	private String password;
	
	private String phone;
	
	@Column(name = "image_path")
	private String imagePath;
	
	private Role role;
}
