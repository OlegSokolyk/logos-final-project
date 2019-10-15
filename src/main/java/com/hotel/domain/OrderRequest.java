package com.hotel.domain;

import org.joda.time.LocalDate;

import com.hotel.entity.UserEntity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter @Setter
public class OrderRequest {
	
	 private UserEntity user_id;
	 
	 private LocalDate arrivelDate;
	 
	 private LocalDate departureDate;
}
