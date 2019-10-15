package com.hotel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.entity.ResidenceEntity;
import com.hotel.repository.ResidenceRepository;
import com.hotel.service.ResidenceService;

@Service
public class ResidenceServiceImpl implements ResidenceService{

	@Autowired private ResidenceRepository residenceRepository;
	
	@Override
	public void saveResidenceData(ResidenceEntity entity) {
		residenceRepository.save(entity);		
	}

	@Override
	public ResidenceEntity findResidenceByUserId(int id) {
		return residenceRepository.findOne(id);
	}

}
