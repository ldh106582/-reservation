package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("resotrant_info")
public class ReservationController {

	public ReservationController() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@GetMapping("r_info")
	public String GetRestorant_info() 
	{
		System.out.println("여기도착");
		return "restorant";
	}
}
