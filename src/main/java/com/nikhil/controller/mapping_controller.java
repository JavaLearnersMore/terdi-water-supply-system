package com.nikhil.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.nikhil.beans.MembersBO;
import com.nikhil.beans.PaymentDetailsBO;
import com.nikhil.service.users_service;

@Controller
@ResponseBody
public class mapping_controller {
	
	@Autowired
	private users_service service;
	
	@RequestMapping(value="/welcome" , method = RequestMethod.GET)
	public ModelAndView welcomePage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Welcome");
		return mav;
		
	}
	
	
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		return mav;
	}
	@RequestMapping(value="/login" , method = RequestMethod.GET)
	public ModelAndView Login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		return mav;
	}
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("registration");
		return mav;
}
	@RequestMapping(value="/about-us", method = RequestMethod.GET)
	public ModelAndView aboutUs() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("aboutus");
		return mav;
}
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public ModelAndView insertPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("insert_member");
		return mav;
		
	}
	@RequestMapping(value="/back1", method = RequestMethod.GET)
	public ModelAndView BackLog() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index1");
		return mav;
	}
	@RequestMapping(value="/back2", method = RequestMethod.GET)
	public ModelAndView getById() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index1");
		return mav;
		
	}
	@RequestMapping(value = "/contactUs", method = RequestMethod.GET)
	public ModelAndView getContactUs() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("contactUs");
		return mav;
	}
	
	@RequestMapping(value = "/back", method = RequestMethod.GET)
	public ModelAndView getIndex() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index1");
		return mav;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView getMenu() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Login");
		return mav;
	}
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public ModelAndView gethtml() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("New");
		return mav;
	}
	
	@RequestMapping(value="/loginUser", method = RequestMethod.GET)
	public ModelAndView loginUser() {
		ModelAndView mav = new ModelAndView();
		List<MembersBO> list = service.getMember();
		mav.addObject("memberDetails", list);
		mav.setViewName("index1");
		return mav;
	}
	@RequestMapping(value="/userPaymentDetails", method = RequestMethod.GET)
	public ModelAndView userPaymentDetails() {
		ModelAndView mav = new ModelAndView();
		List<PaymentDetailsBO> list = service.getPaymentDetails();
		mav.addObject("paymentDetails", list);
		mav.setViewName("user_payment_details");
		return mav;
	}
	@RequestMapping(value = "/pay", method = RequestMethod.GET)
	public ModelAndView getPay() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("pay");
		return mav;
	}
	
	@RequestMapping(value = "/myProfile", method = RequestMethod.GET)
	public ModelAndView getProfile() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("my_profile");
		return mav;
	}
	
}
