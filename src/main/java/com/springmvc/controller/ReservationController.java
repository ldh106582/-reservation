package com.springmvc.controller;

import java.net.http.HttpRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

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
	public String getName(HttpServletRequest request, Model model)
	{
		String r_num = request.getParameter("r_num");
		System.out.println("r_num : " + r_num);
		
		Reservation rocation = reservationService.getrocation(r_num);
		
		model.addAttribute("rocation", rocation);
		return "restoran_info";
	}
	
	@GetMapping("random")
	public String getRandom() 
	{
		int o_hour;
		int o_minut;
		int c_hour;
		int c_minut;		
		
		for(int i = 0; i < 1; i++) 
		{
			o_hour = (int)((Math.random())*1439+1)/120;
			o_minut = (int)((Math.random())*1439+1)/24;
			c_hour = (int)((Math.random())*1439+1)/60;
			c_minut = (int)((Math.random())*1439+1)/24;
			String time = null;
			if(o_minut % 10 != 0 && c_minut % 10 != 0)
			{
				o_minut = (int)Math.round(o_minut/10.0)*10;
				c_minut = (int)Math.round(c_minut/10.0)*10;
			}
			if(o_hour < 10 )
			{
				o_hour = 10;
			}
			if(c_hour < 20)
			{
				c_hour = 20;
			}
			
			time = "오픈시간 : "+o_hour + "시" + o_minut + "분" + " / 클로즈 시간 : " + c_hour + "시" + c_minut + "분";
			System.out.println("time : " + time);
			System.out.println("오픈시간 : "+o_hour + "시" + o_minut + "분" + " / 클로즈 시간 : " + c_hour + "시" + c_minut + "분");
			
			double radius = 5.0; // 원의 반지름
			double circumference = 2 * Math.PI * radius; // 원의 둘레를 구하는 공식

			System.out.println("원의 둘레: " + circumference);
			
			double x = 2.0;
			double exponential = Math.pow(Math.E, x); // 지수 함수 e^x를 계산하여 반환

			System.out.println("e^2의 값: " + exponential);
		}
		return "random";
	}
}