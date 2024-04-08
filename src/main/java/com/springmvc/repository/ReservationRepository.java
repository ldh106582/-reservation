package com.springmvc.repository;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.springmvc.domain.Reservation;


public interface ReservationRepository {
	void getRestorant_info();
	Map<Integer, String> getRestorantNmae();
}
