package com.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.repository.ReservationRepository;

@Service
public interface ReservationService {

	void getRestorant_info();
	
}
