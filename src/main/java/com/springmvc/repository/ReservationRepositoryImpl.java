package com.springmvc.repository;

import java.net.URL;
import java.net.URLEncoder;

public class ReservationRepositoryImpl implements  ReservationRepository{

	public ReservationRepositoryImpl() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void getRestorant_info() {
		// TODO Auto-generated method stub
		String key="";
		String result = "https://api.odcloud.kr/api/15069262/v1/uddi:5a6c8028-8eb0-40a3-9fa9-e8f6622ab579?page=1&perPage=10";
		
		try 
		{
		String encodingkey = URLEncoder.encode(key, "UTF-8");
		URL url = new URL(result + encodingkey);
		} 
		catch(Exception e) 
		{
			
		}
	}

}
