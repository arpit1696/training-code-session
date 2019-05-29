package com.mobiloitte.arpit.daoo;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;
import com.mobiloitte.arpit.model.UserData;

/**
 * @author Arpit gupta
 *
 */
@Repository
public interface MyDao {

	/**
	 * @param user
	 * @return Status after matching entered and database password.
	 */
	int loginValidate(UserData user);

	/**
	 * @param user
	 * @return All the data from table.
	 */
	List<Map<String, Object>> getUserDetails(UserData user);

	/**
	 * @param user
	 * @param id   (Session id)
	 * @return Status after updating the data of user.
	 */
	int editProfile(UserData user, Integer id);

	/**
	 * @param user
	 * @return Status after deleting the users account.
	 */
	int deleteUser(UserData user);

	/**
	 * @param user
	 * @return The id of the logged in user.
	 */
	String getIdForSession(UserData user);

	/**
	 * @param id (Session id)
	 * @return All the data from table.
	 */
	Object getUserDataForSession(int id);

	/**
	 * @param user
	 * @return Role of the logged in user.
	 */
	String getRole(UserData user);

	/**
	 * @param id (Session id)
	 * @return The details of logged in user for session.
	 */
	Map<String, Object> getUserData(int id);

	/**
	 * @param user
	 * @return Status after changing password of user.
	 */
	int changePassword(UserData user);

	/**
	 * @param otp
	 * @param user
	 * @return Status of insertion of OTP in database of particular user to validate
	 *         OTP.
	 */
	int insertOtp(int otp, UserData user);

	/**
	 * @param user
	 * @return Status after deleting the OTP from database of particular user after
	 *         validation of OTP.
	 */
	int deleteOtp(UserData user);

	/**
	 * @param user
	 * @return OTP of particular user to match the OTP.
	 */
	int getOtpToCheck(UserData user);

	/**
	 * @param user
	 * @return Count of entered email in database.
	 */
	String getEmailCount(UserData user);

	/**
	 * @param user
	 * @return Status after adding the user in database.
	 */
	int addUser(UserData user);

	
	/**
	 * @param page_id
	 * @param total
	 * @return data for pagination for grid view page.
	 */
	List<Map<String, Object>> getDataForPagination(int page_id, int total);

	/**
	 * @return count of entries in database table.
	 */
	Float getPageCount();

	/**
	 * @return
	 */
	List<Map<String, Object>> getDataFOrGraph();

	Integer userCount();

	int adminCount();


}
