package com.springmvc.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Reservation;
import com.springmvc.repository.ReservationRepository;

@Service
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

	@Override
	public Map<Integer, String> getRestorantNmae() {
		// TODO Auto-generated method stub
		return reservationRepository.getRestorantNmae();
	}

	@Override
	public Reservation getrocation(String r_num) {
		// TODO Auto-generated method stub
		return reservationRepository.getrocation(r_num);
	}

	@Override
	public void get_gpt(String m_gpt) {
		// TODO Auto-generated method stub
		reservationRepository.get_gpt(m_gpt);
	}
	
	
}
