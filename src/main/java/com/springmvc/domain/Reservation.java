package com.springmvc.domain;

public class Reservation {
	private int restaurantNum;
	private String restaurantName;
	private String restaurantAddr;
	private String Category;
	private String restaurantNumber;
	private String open_hour;
	private String description;
	private double x;
	private double y;
	private String reservation;
	private String reservationallow;
	public Reservation() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getRestaurantNum() {
		return restaurantNum;
	}
	public void setRestaurantNum(int restaurantNum) {
		this.restaurantNum = restaurantNum;
	}
	public String getRestaurantName() {
		return restaurantName;
	}
	public void setRestaurantName(String restaurantName) {
		this.restaurantName = restaurantName;
	}
	public String getRestaurantAddr() {
		return restaurantAddr;
	}
	public void setRestaurantAddr(String restaurantAddr) {
		this.restaurantAddr = restaurantAddr;
	}
	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	}
	public String getRestaurantNumber() {
		return restaurantNumber;
	}
	public void setRestaurantNumber(String restaurantNumber) {
		this.restaurantNumber = restaurantNumber;
	}
	public String getOpen_hour() {
		return open_hour;
	}
	public void setOpen_hour(String open_hour) {
		this.open_hour = open_hour;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	public String getReservation() {
		return reservation;
	}
	public void setReservation(String reservation) {
		this.reservation = reservation;
	}
	public String getReservationallow() {
		return reservationallow;
	}
	public void setReservationallow(String reservationallow) {
		this.reservationallow = reservationallow;
	}
	public double getX() {
		return x;
	}
	public void setX(double x) {
		this.x = x;
	}
	public double getY() {
		return y;
	}
	public void setY(double y) {
		this.y = y;
	}
	
	
}
