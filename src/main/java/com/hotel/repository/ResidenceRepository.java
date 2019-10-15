package com.hotel.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.hotel.entity.ResidenceEntity;

public interface ResidenceRepository extends JpaRepository<ResidenceEntity, Integer>{
	
	@Query("SELECT r FROM ResidenceEntity r WHERE r.user_id = :user_id")
	ResidenceEntity findResidenceOfUserByUserId();
}
