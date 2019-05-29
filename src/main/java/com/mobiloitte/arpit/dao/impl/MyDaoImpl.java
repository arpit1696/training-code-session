package com.mobiloitte.arpit.dao.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.mobiloitte.arpit.daoo.MyDao;
import com.mobiloitte.arpit.model.UserData;

/**
 * @author Arpit gupta
 *
 */
@Repository
public class MyDaoImpl implements MyDao {

	@Autowired
	JdbcTemplate jdbctemplete;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.daoo.MyDao#addUser(com.mobiloitte.arpit.model.UserData)
	 */
	@Override
	public int addUser(UserData user) {
		String insert = "insert into mone_test(firstname,lastname,email,password,role,image_url,gender,marital_status,hobbies) VALUES(?,?,?,?,?,?,?,?,?)";
		return jdbctemplete.update(insert, user.getFirstName(), user.getLastName(), user.getEmail(), user.getPassword(),
				user.getRole(), user.getImage().getOriginalFilename(), user.getGender(), user.getMaritalStatus(),
				user.getHobbies());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.daoo.MyDao#getIdForSession(com.mobiloitte.arpit.model.
	 * UserData)
	 */
	@Override
	public String getIdForSession(UserData user) {
		String responseId = "select id from mone_test where email=?";
		return jdbctemplete.queryForObject(responseId, String.class, user.getEmail());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.mobiloitte.arpit.daoo.MyDao#getUserData(int)
	 */
	@Override
	public Map<String, Object> getUserData(int id) {
		String sql = "select * from mone_test where id=?";
		return jdbctemplete.queryForMap(sql, id);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.daoo.MyDao#getRole(com.mobiloitte.arpit.model.UserData)
	 */
	@Override
	public String getRole(UserData user) {
		String sql = "select role from mone_test where email=?";
		return jdbctemplete.queryForObject(sql, String.class, user.getEmail());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.daoo.MyDao#getUserDetails(com.mobiloitte.arpit.model.
	 * UserData)
	 */
	@Override
	public List<Map<String, Object>> getUserDetails(UserData user) {
		String sql = "select * from mone_test";
		return jdbctemplete.queryForList(sql);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.daoo.MyDao#loginValidate(com.mobiloitte.arpit.model.
	 * UserData)
	 */
	@Override
	public int loginValidate(UserData user) {
		try {
			String database = jdbctemplete.queryForObject("select count(*) from mone_test where email=? && password=?",
					String.class, user.getEmail(), user.getPassword());
			Integer status = Integer.parseInt(database);
			if (status > 0) {
				return 200;
			} else {
				return 201;
			}
		} catch (DataAccessException e) {
			return 404;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.mobiloitte.arpit.daoo.MyDao#deleteUser(com.mobiloitte.arpit.model.
	 * UserData)
	 */
	@Override
	public int deleteUser(UserData user) {
		String status = "delete from mone_test where email=?";
		return jdbctemplete.update(status, user.getEmail());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.mobiloitte.arpit.daoo.MyDao#getUserDataForSession(int)
	 */
	@Override
	public Object getUserDataForSession(int id) {
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.mobiloitte.arpit.daoo.MyDao#editProfile(com.mobiloitte.arpit.model.
	 * UserData, java.lang.Integer)
	 */
	@Override
	public int editProfile(UserData user, Integer id) {
		String sql = "update mone_test set firstname=?,lastname=?,password=?,image_url=?,gender=?,hobbies=? where id=?";
		return jdbctemplete.update(sql, user.getFirstName(), user.getLastName(), user.getPassword(),
				user.getImage().getOriginalFilename(), user.getGender(), user.getHobbies(), id);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.daoo.MyDao#changePassword(com.mobiloitte.arpit.model.
	 * UserData)
	 */
	@Override
	public int changePassword(UserData user) {
		String sql = "update mone_test set password=? where email=?";
		return jdbctemplete.update(sql, user.getPassword(), user.getEmail());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.mobiloitte.arpit.daoo.MyDao#insertOtp(int,
	 * com.mobiloitte.arpit.model.UserData)
	 */
	@Override
	public int insertOtp(int otp, UserData user) {
		String sql = "update mone_test set otp=? where email=?";
		return jdbctemplete.update(sql, otp, user.getEmail());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.mobiloitte.arpit.daoo.MyDao#deleteOtp(com.mobiloitte.arpit.model.
	 * UserData)
	 */
	@Override
	public int deleteOtp(UserData user) {
		String sql = "update mone_test set otp=null where email=?";
		return jdbctemplete.update(sql, user.getEmail());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.daoo.MyDao#getOtpToCheck(com.mobiloitte.arpit.model.
	 * UserData)
	 */
	@Override
	public int getOtpToCheck(UserData user) {
		String sql = "select count(*) from mone_test where email=? and otp=?";
		return jdbctemplete.queryForObject(sql, int.class, user.getEmail(), user.getOtp());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.daoo.MyDao#getEmailCount(com.mobiloitte.arpit.model.
	 * UserData)
	 */
	@Override
	public String getEmailCount(UserData user) {
		String emailCount = "select count(*) from mone_table where email=?";
		return jdbctemplete.queryForObject(emailCount, String.class, user.getEmail());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.mobiloitte.arpit.daoo.MyDao#getPageCount()
	 */
	@Override
	public Float getPageCount() {
		String sql = "select count(*) from mone_test";
		return jdbctemplete.queryForObject(sql, float.class);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.mobiloitte.arpit.daoo.MyDao#getDataFOrGraph()
	 */
	@Override
	public List<Map<String, Object>> getDataFOrGraph() {
		String sql = "select count(role) rolecount from mone_test group by role";
		return jdbctemplete.queryForList(sql);
	}

	@Override
	public Integer userCount() {
		String sql = "select count(role) rolecount from mone_test where role='user'";
		return jdbctemplete.queryForObject(sql, int.class);

	}

	@Override
	public int adminCount() {
		String sql = "select count(role) rolecount from mone_test where role='admin'";
		return jdbctemplete.queryForObject(sql, int.class);
	}

	@Override
	public List<Map<String, Object>> getDataForPagination(int page_id, int total) {
		String sql = "SELECT * FROM mone_test LIMIT " + (page_id - 1) + "," + total;
		return jdbctemplete.queryForList(sql);

	}
}
