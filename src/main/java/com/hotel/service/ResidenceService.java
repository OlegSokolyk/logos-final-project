package com.hotel.service;

import com.hotel.entity.ResidenceEntity;

public interface ResidenceService {
	
	void saveResidenceData(ResidenceEntity entity);
	
	ResidenceEntity findResidenceByUserId(int id);
}
