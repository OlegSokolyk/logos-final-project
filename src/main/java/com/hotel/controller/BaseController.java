package com.hotel.controller;

import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.hotel.domain.OrderRequest;
import com.hotel.domain.RegisterRequest;
import com.hotel.entity.UserEntity;
import com.hotel.mapper.UserMapper;
import com.hotel.service.ResidenceService;
import com.hotel.service.UserService;

@Controller
public class BaseController {

	@Autowired private UserService userService;
	@Autowired private ResidenceService residenceService;
	
	@GetMapping({"/home", "/"})
	public String showHome() {
		
		return "home";
	}
	
	@GetMapping("/login")
	public String showLogin() {
		
		return "login";
	}
	
	@GetMapping("/register")
	public String showRegister(Model model) {
		model.addAttribute("userModel", new RegisterRequest());
		return "register";
	}
	
	@PostMapping("/register")
	public String saveUser(@Valid @ModelAttribute("userModel") RegisterRequest request, BindingResult br) {
		
		if(br.hasErrors()) {
			return "register";
		}
		
		userService.saveUser(UserMapper.registerToEntity(request));
		
		return "redirect:/login";
	}
	
	@GetMapping("/order")
	public String showOrderPage(Model model, Principal principal) {
		UserEntity user = userService.findUserByEmail(principal.getName());
		
		model.addAttribute("orderModel", new OrderRequest());
		model.addAttribute("userProfile", UserMapper.entityToUserProfile(user));
		return "order";
	}
	
	@PostMapping("/order")
	public String saveOrderData(@ModelAttribute("orderModel") OrderRequest request) {
		
		residenceService.saveResidenceData(UserMapper.entityToUserOrder(request, userService.getCurrentUser()));
		return "redirect:/user";
	}
	
}
