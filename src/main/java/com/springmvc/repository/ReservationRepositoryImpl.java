package com.springmvc.repository;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Repository;

@Repository
public class ReservationRepositoryImpl implements  ReservationRepository{


	Connection con;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String url = "jdbc:mysql://localhost:3306/restaurant_db";
	String id = "root";
	String pw = "1234";
	
    public ReservationRepositoryImpl() {
        try 
        {
            con = DriverManager.getConnection(url, id, pw);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
	
	@Override
	public void getRestorant_info() {
		// TODO Auto-generated method stub
		String key="6SSihIOiLvtoN4Ov+cME/ZolzUd08COnp0X3j9Zu+Sor8dNfCM7u5Iyy/naB4Q5VsT27bE490/DOXsE/GUdjmQ==";
		String result = "https://api.odcloud.kr/api/15069262/v1/uddi:5a6c8028-8eb0-40a3-9fa9-e8f6622ab579?page=1&perPage=100&returnType=json&serviceKey=";
		
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
			JSONArray data = jsonobjcet.getJSONArray("data");
			
			System.out.println("여기오는지 확인");
			for(int i = 0; i < data.length(); i++) 
			{
				JSONObject item = data.getJSONObject(i);
				System.out.println("item : " + item);
				String name = item.getString("업소명");
				String adrr = item.getString("업소주소");
				String number = item.getString("업소전화번호");
				String category = item.getString("업종");
				
				System.out.println("업소명 : " + name);
				String SQL = "insert into restaurant(restaurantName, restaurantAddr, Category, restaurantNumber) values(?,?,?,?)";
				pstmt = this.con.prepareStatement(SQL);
				System.out.println("pstmt : " + pstmt);
				pstmt.setString(1, name);
				pstmt.setString(2, adrr);
				pstmt.setString(3, category);
				pstmt.setString(4, number);
				
				pstmt.executeUpdate();
			}
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			try 
			{
				if(pstmt != null) 
				{
					pstmt.close();
				}
				if(con != null) 
				{
					con.close();
				}
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
	}

}
