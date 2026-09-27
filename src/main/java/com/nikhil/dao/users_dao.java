package com.nikhil.dao;

import org.springframework.jdbc.core.RowMapper;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.nikhil.beans.ContactBean;
import com.nikhil.beans.MemberBean;
import com.nikhil.beans.MembersBO;
import com.nikhil.beans.PayFormBean;
import com.nikhil.beans.PaymentDetailsBO;
import com.nikhil.beans.UserPaymentDetails;

@Repository
public class users_dao {


	public String QUERY="select ROLE,FIRST_NAME,MIDDLE_NAME,LAST_NAME,PASSWORD,DOB,ADDRESS,EMAIL_ID,MOBILE_NUMBER from database1.users where EMAIL_ID=? and PASSWORD=?"; 
	public String SQL_QUERY = "insert into database1.users (ROLE,FIRST_NAME,MIDDLE_NAME,LAST_NAME,PASSWORD,DOB,ADDRESS,EMAIL_ID,MOBILE_NUMBER,REG_DATE) values(?,?,?,?,?,?,?,?,?,?)";
//	public String INSERT_QUERY= "insert into database1.members_terdi(FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ID,DOB,MOBILE_NUMBER) value(?,?,?,?,?,?)";
	public String SELECT_QUERY = "select id,FIRST_NAME,MIDDLE_NAME,LAST_NAME,EMAIL_ID,DOB,ROLE,MOBILE_NUMBER from database1.users";
	public String UPDATE_QUERY ="select * from database1.users where id=?";
	public String UPDATE_DETAILS="update database1.users set FIRST_NAME=?,MIDDLE_NAME=?,LAST_NAME=?,EMAIL_ID=?,DOB=?,MOBILE_NUMBER=? where id=?";
	public String DELETE_QUERY="delete from database1.users where id=?";
	public String CONTACT_QUERY="insert into database1.contact_us(Name,Email_id,Phone_no,Message) value(?,?,?,?)";
	public static String SELECT_USER_PAYMENT_DEATAILS = "SELECT id, CONCAT(FIRST_NAME, ' ', MIDDLE_NAME, ' ', LAST_NAME) AS user_name\r\n"
			+ "FROM users\r\n"
			+ "ORDER BY id DESC\r\n"
			+ "LIMIT 1";
	public String INSERT_PAYMENT_DETAILS_QUERY= "insert into database1.payment_details(user_id,user_name) value(?,?)";
	public String SELECT_ALL_PAYMENT_DETAILS = "select user_id,user_name,january,february,march,april,may,june,july,august,september,october,november,december,year,total_paid,remaining_amount from database1.payment_details order by user_id asc";


	@Autowired
	public  JdbcTemplate jdbcTemplate;

	Logger logger = LoggerFactory.getLogger(users_dao.class);



	public MembersBO getLogin(String email,String password) {
		logger.info("MemberBo method", email,password);
		
	return (MembersBO) jdbcTemplate.queryForObject(QUERY, new Object[] {email,password}, new BeanPropertyRowMapper<MembersBO>(MembersBO.class));

	}
	
	SimpleDateFormat sds = new SimpleDateFormat("dd/MM/yy HH:mm:yy");
	String register_date = sds.format(new Date());

	public int regDetails(MembersBO bo) {
		String role = bo.getRole().substring(0, 1).toUpperCase() + bo.getRole().substring(1).toLowerCase();
		int counter = jdbcTemplate.update(SQL_QUERY,role,bo.getFirst_name(),bo.getMiddle_name(),bo.getLast_name(),bo.getPassword(),bo.getDob(),bo.getAddress(),bo.getEmail_id(),bo.getMobile_number(), register_date);
		try {
			if (counter > 0) {
				UserPaymentDetails obj 	= getLastUserPaymentDetails();
				int counter2 = jdbcTemplate.update(INSERT_PAYMENT_DETAILS_QUERY,obj.getId(),obj.getUserName());
				System.out.println("counter 2 :"+ counter2);
	
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("reg error");
		}

		return counter;

	}
//	public int insrtDetails(MembersBO bo)  {
//
//		logger.info("insrtDetails method", bo);
//		int result = jdbcTemplate.update(INSERT_QUERY,bo.getFirst_name(),bo.getMiddle_name(),bo.getLast_name(),bo.getEmail_id(),bo.getDob(),bo.getMobile_number());
//
//		try {
//			int result1 = result;
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//			logger.error("insert error");
//		}
//		return result;
//
//	}

	public List<MembersBO> getMembers(){

		List<MembersBO> list  =null;
		list = jdbcTemplate.query(SELECT_QUERY, new BeanPropertyRowMapper(MembersBO.class));
		try {
			List list1= list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("Member list error");
		}
		return list;

	} 
	
	public List<MembersBO> getUserData(String userId){

		List<MembersBO> list  =null;
		list = jdbcTemplate.query(SELECT_QUERY, new BeanPropertyRowMapper(MembersBO.class));
		try {
			List list1= list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("Member list error");
		}
		return list;

	} 


	public MembersBO getById(String id) {
		logger.info("getById method", id);
		return jdbcTemplate.queryForObject(UPDATE_QUERY, new Object[] {id}, new BeanPropertyRowMapper<MembersBO>(MembersBO.class));

	}

	public int updataData(MembersBO bo) {
		logger.info("update date method", bo);
		return jdbcTemplate.update(UPDATE_DETAILS,bo.getFirst_name(),bo.getMiddle_name(),bo.getLast_name(),bo.getEmail_id(),bo.getDob(),bo.getMobile_number(),bo.getId());

	}

	public int deleteData(String id) {
		logger.info("delete method", id);

		try {

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("delete error");
		}
		return jdbcTemplate.update(DELETE_QUERY, id);

	}

	public int contactData(ContactBean cb) {
		logger.info("contact data method", cb);

		int contact = jdbcTemplate.update(CONTACT_QUERY, cb.getName(),cb.getEmail_id(),cb.getPhone_no(),cb.getMessage());
		try {
			int contact1 = contact;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("contact data error");
		}
		return contact;

	}
	
	public UserPaymentDetails getLastUserPaymentDetails() {
        try {
			return jdbcTemplate.queryForObject(
				SELECT_USER_PAYMENT_DEATAILS,
			    new RowMapper<UserPaymentDetails>() {
			        @Override
			        public UserPaymentDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
			            UserPaymentDetails details = new UserPaymentDetails();
			            details.setId(rs.getLong("id"));
			            details.setUserName(rs.getString("user_name"));
			            return details;
			        }
			    }
			);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
    }

	public List<PaymentDetailsBO> getPaymentDetails() {
		List<PaymentDetailsBO> list  = null;
		list = jdbcTemplate.query(SELECT_ALL_PAYMENT_DETAILS, new BeanPropertyRowMapper(PaymentDetailsBO.class));
		try {
			List list1= list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.error("Member list error");
		}
		return list;

	}

	public int insert_payment_details(PaymentDetailsDto dto) {
		String GET_PAYMENT_DETAILS = "select * from payment_details where user_id = ?";
		String UPDATE_PAYMENT_DETAILS = "update payment_details set "+dto.getMonth().toLowerCase() + " = ? ,year=? ,total_paid=?,remaining_amount=? where user_id = ?";
		String INSERT_RECIEPT_DETAILS = "insert into database1.receipt_details (user_id,bill_no,user_name,amount,month,year,payment_date) values (?,?,?,?,?,?,?)";
		System.out.println("UPDATE_PAYMENT_DETAILS query:"+ UPDATE_PAYMENT_DETAILS);
		
		PaymentDetailsBO bo = jdbcTemplate.queryForObject(GET_PAYMENT_DETAILS, new Object[] {dto.getUser_id()}, new BeanPropertyRowMapper<PaymentDetailsBO>(PaymentDetailsBO.class));
		System.out.println("Object:"+ bo.toString());
		double calculate_total_paid = 0.0;
		double january = Double.valueOf(bo.getJanuary() == null ? "0" : bo.getJanuary());
		double february = Double.valueOf(bo.getFebruary() == null ? "0" : bo.getFebruary());
		double march = Double.valueOf(bo.getMarch() == null ? "0" : bo.getMarch());
		double april = Double.valueOf(bo.getApril() == null ? "0" : bo.getApril());
		double may = Double.valueOf(bo.getMay() == null ? "0" : bo.getMay());
		double june = Double.valueOf(bo.getJune() == null ? "0" : bo.getJune());
		double july = Double.valueOf(bo.getJuly() == null ? "0" : bo.getJuly());
		double august = Double.valueOf(bo.getAugust() == null ? "0" : bo.getAugust());
		double september = Double.valueOf(bo.getSeptember() == null ? "0" : bo.getSeptember());
		double october = Double.valueOf(bo.getOctober() == null ? "0" : bo.getOctober());
		double november = Double.valueOf(bo.getNovember() == null ? "0" : bo.getNovember());
		double december = Double.valueOf(bo.getDecember() == null ? "0" : bo.getDecember());
		double total_paid = Double.valueOf(bo.getTotal_paid() == null ? "0.0" : bo.getTotal_paid());
		 System.out.println("total paid:" +total_paid );
		if (String.valueOf(total_paid).equalsIgnoreCase("0.0")) {
			calculate_total_paid = total_paid + january + february + march + april + may + june + july + august + september + october + november + december;
		}else {
			calculate_total_paid =  january + february + march + april + may + june + july + august + september + october + november + december;
		}
		double month_amount = Double.valueOf(dto.getAmount()==null ? "0" : dto.getAmount());
		double new_total_paid = calculate_total_paid +month_amount;
		double remaining_amount = 1200 - new_total_paid;
		System.out.println("month_amount " + month_amount + "new_total_paid : "+ new_total_paid + "remaining_amount :" + remaining_amount);
		
		int count =  jdbcTemplate.update(UPDATE_PAYMENT_DETAILS,month_amount,dto.getYear(),new_total_paid,remaining_amount,dto.getUser_id()) ;
		System.out.println("count :" + count);
		int counter = 0;
		if (count >  0) {
			counter = jdbcTemplate.update(INSERT_RECIEPT_DETAILS,dto.getUser_id(),dto.getBill_no(),dto.getUser_name(),month_amount,dto.getMonth(),dto.getYear(),dto.getPayment_date());
			System.out.println("counter" + counter);
		}
		return counter;
	}

}
