package com.hotel.service;

import java.util.List;

import com.hotel.entity.UserEntity;

public interface UserService {

	void saveUser(UserEntity entity);
	
	UserEntity findUserById(int id);
	
	UserEntity findUserByEmail(String email);
	
	void updateUser(UserEntity entity);
	
	List<UserEntity> findAllUsers();
	
	UserEntity getCurrentUser();
}
