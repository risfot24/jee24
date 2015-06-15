package com.hompage.web.controller;

import com.hompage.web.serviceimpls.ReservationServiceImp1;
import com.hompage.web.services.ReservationService;

public class ReservationMain {
	
	public static void main(String[] args) {
		ReservationService service = new ReservationServiceImp1();
		  
		service.process();	
	}
	
}


