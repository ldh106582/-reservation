package com.springmvc.controller;

import java.net.http.HttpRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.domain.Reservation;
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
	
	@GetMapping("r_allname")
	public String GetallName(Model model)
	{
		 Map<Integer, String> r_Map = new HashMap<>();
		System.out.println("이름도착");
		r_Map = reservationService.getRestorantNmae();
		model.addAttribute("r_Map", r_Map);
		return "restorantName";
	}
	
	@GetMapping("r_name")
	public String getName(HttpServletRequest request) 
	{
		String r_num = request.getParameter("r_num");
		System.out.println("r_num : " + r_num);
		
		return "restoran_info";
	}
}