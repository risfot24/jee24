package com.hompage.web.services;

public interface ReservationService {
   
	public void alertMsg(int num);
	public int inputCheck(String input, int first, int last);
	public void CheckIn();
	public void checkOut();
	public void showStatus();
	public void process();
	
	
}
