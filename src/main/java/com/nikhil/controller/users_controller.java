package com.nikhil.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.nikhil.beans.ContactBean;
import com.nikhil.beans.MemberBean;
import com.nikhil.beans.MembersBO;
import com.nikhil.beans.PayFormBean;
import com.nikhil.service.users_service;

@Controller
@ResponseBody
@RestController
public class users_controller {

	@Autowired
	private users_service service;

	Logger logger = LoggerFactory.getLogger(users_controller.class);


	@RequestMapping(value = "/loginUser",method = RequestMethod.POST)
	public ModelAndView loginUser(@ModelAttribute MembersBO bo,HttpServletRequest req,HttpServletResponse res) {
		ModelAndView mav = new ModelAndView();
		logger.info("login user method", req,res);
		
		try {

			String email = req.getParameter("e_address");
			String password = req.getParameter("password");

			MembersBO  b = service.getLogin(email, password);

			if(b.getRole().equalsIgnoreCase("User")) {
				//List<MembersBO> list = service.getMember();
				mav.addObject("userId", b.getId());
				mav.setViewName("index2");
			}
			else if(b.getRole().equalsIgnoreCase("Admin")) {
				List<MembersBO> list = service.getMember();
				mav.addObject("memberDetails", list);
				mav.setViewName("index1");
			}
			else {
				mav.setViewName("loginError");
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("Login");
		}
		return mav;

	}

	@RequestMapping(value = "/registerUser" ,method = RequestMethod.POST)
	public ModelAndView getReg(@ModelAttribute MembersBO bo, ModelMap map) throws ClassNotFoundException, SQLException {
		ModelAndView mav = new ModelAndView();
		logger.info("get Registration method", bo);
		try {

			int result = service.getRegisterNew(bo);

			if(result==1) {

				mav.setViewName("regMsg");
			}
			else {
				System.out.println("Registration Failed...!!!");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("Registration error");
		}
		return mav;

	}

//	@RequestMapping(value = "/dburl", method=RequestMethod.POST)
//	public ModelAndView insertDetails(@ModelAttribute MembersBO bo, ModelMap map) throws ClassNotFoundException, SQLException {
//		
//		ModelAndView mav = new ModelAndView();
//		
//		logger.info("insert details method", bo);
//		try {
//
//				int result = service.insertDetails(bo);
//
//
//				if(result==1) {
//					map.put("result", "Record inserted successfully...!!!");
//					mav.setViewName("updateMsg");
//				}
//					
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//			logger.error("Record insert error");
//		}
//		return mav;
//
//	}
	@RequestMapping(value = "/members",method =  RequestMethod.GET)
	public ModelAndView getMember(@ModelAttribute MemberBean b) {
		logger.info("getMember method",b);
		ModelAndView mav = new ModelAndView();

		try {

			List<MembersBO> list = service.getMember();
			System.out.println("List :"+list);
			mav.addObject("memberDetails", list);

			mav.setViewName("member");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("Member list error");
		}
		return mav;

	}

	@RequestMapping(value = "/update/{id}" ,method = RequestMethod.GET)
	public ModelAndView getById(@PathVariable String id,ModelMap map) {
		ModelAndView mav = new ModelAndView();
		logger.info("getById method", id);

		try {

			MembersBO bean = service.getById(id);

			mav.addObject("MemberBean", bean);
			mav.setViewName("update");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("update error");
		}
		return mav;

	}

	@RequestMapping(value = "/updateData", method= RequestMethod.POST)
	public ModelAndView updateDetails(@ModelAttribute MembersBO bo, ModelMap map) {
		ModelAndView mav = new ModelAndView();
		logger.info("update details method", bo);

		try {

			int info  = service.updateDetails(bo);

			if(info==1) {
				map.put("info", "Update Details Successfully...!!!");
			}

			List<MembersBO> list = service.getMember();
			System.out.println("List :"+list);
			mav.addObject("memberDetails", list);
			mav.setViewName("updateMsg");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("update error");
		}
		return mav;

	}
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteDetails(@PathVariable String id,ModelMap map) {
		ModelAndView mav = new ModelAndView();
		logger.info("delete details method",id);

		try {



			int num = service.deleteData(id);

			if(num==1) {
				map.put("info", "Record Deleted Successfully...!!!");
			}
			List<MembersBO> list = service.getMember();
			mav.addObject("memberDetails", list);
			mav.setViewName("updateMsg");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("delete error");
		}
		return mav;

	}

	@RequestMapping(value = "/contactUsData" , method = RequestMethod.POST)
	public ModelAndView contactData(@ModelAttribute ContactBean cb,ModelMap map) {
		ModelAndView mav= new ModelAndView();
		logger.info("contact data method", cb);

		try {

			String s =cb.Name;
			String s1 =cb.Email_id;
			String s2 =cb.Phone_no;
			String s3= cb.Message;

			if(s.isEmpty()|| s1.isEmpty() || s2.isEmpty()|| s3.isEmpty()) {
				mav.setViewName("contactError");
				logger.error("contact error");
			}
			else {

				int contact = service.contactData(cb);

				map.put("contact", " Thank You For Your FeedBack...!!!");
				mav.setViewName("contactUs");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("contact error");
		}

		return mav;

	}
	@RequestMapping(value = "/processPayment" ,method = RequestMethod.POST)
	public ModelAndView insert_payment_details(@ModelAttribute  PayFormBean pfb, ModelMap map) throws ClassNotFoundException, SQLException {
		System.out.println("request parameters :"+pfb.toString());
		ModelAndView mav = new ModelAndView();
		int result = service.insert_payment_details(pfb);
		try {
			if (result == 1) {
				mav.setViewName("payment_success_msg");
			}else {
				mav.setViewName("payment_error_msg");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return mav;

	}
	
	@RequestMapping(value = "/all_member", method = RequestMethod.GET)
	public ModelAndView getAll() {
		ModelAndView mav = new ModelAndView();
		List<MembersBO> list = service.getMember();
		System.out.println("member list" + list);
		mav.addObject("memberDetails", list);
		mav.setViewName("all_members");
		return mav;
	}
	
	@RequestMapping(value = "/myprofile", method = RequestMethod.GET)
	public ModelAndView userData() {
		ModelAndView mav = new ModelAndView();
		List<MembersBO> list = service.getMember();
		System.out.println("member list" + list);
		mav.addObject("memberDetails", list);
		mav.setViewName("all_members");
		return mav;
	}
}