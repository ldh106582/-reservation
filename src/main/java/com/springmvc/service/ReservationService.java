package com.springmvc.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Reservation;
import com.springmvc.repository.ReservationRepository;


public interface ReservationService {

	void getRestorant_info();
	Map<Integer, String> getRestorantNmae();
	Reservation getrocation(String r_num);
	void get_gpt(String m_gpt);
}
