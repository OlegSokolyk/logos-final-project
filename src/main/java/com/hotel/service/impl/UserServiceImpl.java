package com.hotel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.hotel.entity.UserEntity;
import com.hotel.repository.UserRepository;
import com.hotel.service.UserService;
import com.hotel.service.utils.CustomFileUtils;

@Service
public class UserServiceImpl implements UserService{

	@Autowired private UserRepository userRepository;
	@Autowired private PasswordEncoder passwordEncoder;
	
	@Override
	public void saveUser(UserEntity entity) {
		String password = entity.getPassword();
		entity.setPassword(passwordEncoder.encode(password));
		
		userRepository.save(entity);
		CustomFileUtils.createFolder("user_" + entity.getId());
	}

	@Override
	public UserEntity findUserByEmail(String email) {
		
		return userRepository.findUserByEmail(email);
	}

	@Override
	public UserEntity findUserById(int id) {
		return userRepository.findOne(id);
	}

	@Override
	public void updateUser(UserEntity entity) {
		userRepository.save(entity);
		
	}

	@Override
	public List<UserEntity> findAllUsers() {
		
		return userRepository.findAll();
	}

	@Override
	public UserEntity getCurrentUser() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    return (UserEntity) auth.getPrincipal();
	}

}
