package com.springmvc.repository;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationRepositoryImpl implements  ReservationRepository{

	public ReservationRepositoryImpl() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void getRestorant_info() {
		// TODO Auto-generated method stub
		String key="6SSihIOiLvtoN4Ov+cME/ZolzUd08COnp0X3j9Zu+Sor8dNfCM7u5Iyy/naB4Q5VsT27bE490/DOXsE/GUdjmQ==";
		String result = "https://api.odcloud.kr/api/15069262/v1/uddi:5a6c8028-8eb0-40a3-9fa9-e8f6622ab579?page=1&perPage=500&returnType=json&serviceKey=";
		
		try 
		{
		String encodingkey = URLEncoder.encode(key, "UTF-8");
		URL url = new URL(result + encodingkey);
		
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		con.setRequestMethod("GET");
		int responscode = con.getResponseCode();
		System.out.println("responscode : " + responscode);
		
		BufferedReader br;
			if(responscode == 200)
			{
				br= new BufferedReader(new InputStreamReader(con.getInputStream(),"UTF-8"));
			}
			else 
			{
				br= new BufferedReader(new InputStreamReader(con.getInputStream(),"UTF-8"));
			}
			StringBuilder response = new StringBuilder();
			String line;
			while((line = br.readLine()) != null) 
			{
				response.append(line);
			}
			br.close();
			System.out.println("==================");
			JSONObject jsonobjcet = new JSONObject(response.toString());
			System.out.println("jsonobjcet :" + jsonobjcet);
			JSONArray arr = new JSONArray("data");
			
			for(int i = 0; i < arr.length(); i++) 
			{
				JSONObject data = arr.getJSONObject(i);
				System.out.println("data : " + data);
				String name = data.getString("업체명");
			}
		}
		catch(Exception e) 
		{
			
		}
	}

}
