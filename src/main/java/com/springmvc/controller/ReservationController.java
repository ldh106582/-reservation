package com.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.service.ReservationService;

@Controller
@RequestMapping("resotrant_info")
public class ReservationController {

	public ReservationController() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
	ReservationService reservationService;
	
	@GetMapping("r_info")
	public String GetRestorant_info() 
	{
		System.out.println("여기도착");
		reservationService.getRestorant_info();
		return "restorant";
	}
}
