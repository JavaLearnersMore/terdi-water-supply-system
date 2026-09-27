package com.nikhil.service;
import java.time.Month;
import java.time.YearMonth;
import java.time.format.TextStyle;
import java.util.Locale;
import java.util.Map;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import javax.print.attribute.HashAttributeSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.tagext.TryCatchFinally;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nikhil.beans.ContactBean;
import com.nikhil.beans.MemberBean;
import com.nikhil.beans.MembersBO;
import com.nikhil.beans.PayFormBean;
import com.nikhil.beans.PaymentDetailsBO;
import com.nikhil.dao.PaymentDetailsDto;
import com.nikhil.dao.users_dao;

@Service
public class users_service {
	
	Logger logger = LoggerFactory.getLogger(users_service.class);

	@Autowired
	private users_dao dao;
	
	public MembersBO getLogin(String email,String password ) {
		logger.info("getLogin method", email,password);
		MembersBO b = null;
		try {
		 b=dao.getLogin(email,password);
		
		}catch(Exception e) {
			System.out.println("exception"+e.getMessage());
			
		}
		return b;
	}
	
	
	public int getRegisterNew(MembersBO bo) throws ClassNotFoundException, SQLException {
		return dao.regDetails(bo);
	}

//	public int insertDetails(MembersBO bo ) throws ClassNotFoundException, SQLException {
//	
//		return dao.insrtDetails(bo);
//		
//	}
//	
	public List<MembersBO>  getMember(){
		return dao.getMembers();
		
	}
	
	public MembersBO getById(String id) {
		logger.info("get by id", id);
		return dao.getById(id);
		
	}
	
	public int updateDetails(MembersBO bo) {
		return dao.updataData(bo);
		
	}
	public int deleteData(String id) {
		logger.info("delete method", id);
		try {
			String string = id;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("delete error");
		}
		return dao.deleteData(id);
		
	}
	
	public int contactData(ContactBean cb) {
		logger.info("contact method", cb);
		try {
			String string = cb.Email_id;
			String s1 = cb.Message;
			String s2 = cb.Name;
			String s3 = cb.Phone_no;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("contact error");
		}
		
		return dao.contactData(cb);
		
		
	}



	public List<PaymentDetailsBO> getPaymentDetails() {
		return dao.getPaymentDetails();
	}


	public int insert_payment_details(PayFormBean pfb) {
		
		String month = pfb.getMonth();
		Map <String,String >formattedMonth = convertMonthToName(month);
	    
	    PaymentDetailsDto dto = new PaymentDetailsDto();
	    dto.setBill_no(pfb.getBill_no()==null?"":pfb.getBill_no());
	    dto.setMonth(formattedMonth.get("monthname")== null?"":formattedMonth.get("monthname").toString());
	    dto.setYear(formattedMonth.get("year")== null?"":formattedMonth.get("year").toString());
	    dto.setUser_id(pfb.getUser_id() == null ? "" : pfb.getUser_id());
	    dto.setUser_name(pfb.getUser_name()==null ? "" : pfb.getUser_name());
	    dto.setPayment_date(pfb.getPayment_date()==null ? "" : pfb.getPayment_date());
	    dto.setAmount(pfb.getAmount()==null?  "" : pfb.getAmount());
	    System.out.println("formattedMonth: " + dto.getMonth() + "  formattedYear : "+ dto.getYear());
		return dao.insert_payment_details(dto);
	}
	
	public static Map<String,String> convertMonthToName(String inputMonth) {
        // inputMonth = "2025-09"
		Map <String,String > m  = new HashMap<String,String >();
        String[] parts = inputMonth.split("-");
        String year = parts[0];       // "2025"
        String monthNumber = parts[1]; // "09"

        // Convert numeric month to full name
        int monthInt = Integer.parseInt(monthNumber);
        String monthName = Month.of(monthInt).name(); // gives "SEPTEMBER"

        // Make it Title case (September instead of SEPTEMBER)
        monthName = monthName.substring(0,1).toUpperCase() + monthName.substring(1).toLowerCase();

        // Final output -> 2025-September
        m.put("monthname", monthName);
        m.put("year", year);
        return m;
    }

}

