package com.hotel.mapper;

import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

import com.hotel.domain.OrderRequest;
import com.hotel.domain.RegisterRequest;
import com.hotel.domain.UserProfileRequest;
import com.hotel.entity.ResidenceEntity;
import com.hotel.entity.UserEntity;
import com.hotel.entity.enumeration.Role;

public interface UserMapper {

	public static User toSecurityUser(UserEntity entity) {
		return new User(entity.getEmail(), entity.getPassword(), AuthorityUtils.createAuthorityList(String.valueOf(entity.getRole())));
	}
	
	public static UserEntity registerToEntity(RegisterRequest request) {
		UserEntity entity = new UserEntity();
		
		entity.setEmail(request.getEmail());
		entity.setPassword(request.getPassword());
		entity.setFirstName(request.getFirstName());
		entity.setLastName(request.getLastName());
		entity.setPhone(request.getPhoneNumber());
		entity.setRole(Role.ROLE_USER);
		
		return entity;
	}
	
	public static UserProfileRequest entityToUserProfile(UserEntity entity) {
		UserProfileRequest request = new UserProfileRequest();	
		request.setId(entity.getId());
		request.setEmail(entity.getEmail());
		request.setFirstName(entity.getFirstName());
		request.setLastName(entity.getLastName());
		request.setRole(entity.getRole());
		request.setPhone(entity.getPhone());
		request.setImagePath(entity.getImagePath());
		
		return request;
	}
	
	public static ResidenceEntity entityToUserOrder(OrderRequest request, UserEntity user) {
		ResidenceEntity entity = new ResidenceEntity();
		entity.setUser_id(user);
		entity.setArrivelDate(request.getArrivelDate());
		entity.setDepartureDate(request.getDepartureDate());
		
		return entity;
	}
}
