package com.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.springmvc.repository.ReservationRepository;

public class ReservationServiceImpl implements ReservationService{

	public ReservationServiceImpl() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
	ReservationRepository reservationRepository;

	@Override
	public void getRestorant_info() {
		// TODO Auto-generated method stub
		reservationRepository.getRestorant_info();
	}
	
	
}
