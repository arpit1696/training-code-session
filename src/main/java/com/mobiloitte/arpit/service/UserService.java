package com.mobiloitte.arpit.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;
import com.mobiloitte.arpit.model.UserData;

/**
 * @author Arpit gupta
 *
 */
@Service
public interface UserService {

	/**
	 * @param user
	 * @return status after checking password during login.
	 */
	int loginValidate(UserData user);

	/**
	 * @param user
	 * @return the list of all user details.
	 */
	List<Map<String, Object>> getUserDetails(UserData user);

	/**
	 * @param user
	 * @param id   (Session id)
	 * @return status of edit profile.
	 */
	int editProfile(UserData user, Integer id);

	/**
	 * @param user
	 * @return status of to delete account.
	 */
	int deleteUser(UserData user);

	/**
	 * @param user
	 * @return id of user who logged in.
	 */
	String getIdForSession(UserData user);

	/**
	 * @param id (session id)
	 * @return Data of logged in user.
	 */
	Map<String, Object> getUserData(int id);

	/**
	 * @param user
	 * @return Role of logged in user.
	 */
	String getRole(UserData user);

	/**
	 * @param user
	 * @return OTP.
	 */
	int generateOtp(UserData user);

	/**
	 * @param user
	 * @return Status of update password.
	 */
	int changePassword(UserData user);

	/**
	 * @param user
	 * @return Status of deletion of OTP after its use.
	 */
	int deleteOtp(UserData user);

	/**
	 * @param user
	 * @return The status after the validation of OTP.
	 */
	int getOtpToCheck(UserData user);

	/**
	 * @param user
	 * @return The count of entered email in database.
	 */
	String getEmailCount(UserData user);

	/**
	 * @param user
	 * @return Status of sending email.
	 */
	int mailToRecoverPass(UserData user);

	/**
	 * @param user
	 * @return The status of insert the entered user details in database.
	 */
	int addUser(UserData user) throws IOException;

	/**
	 * @param page_id
	 * @param total
	 * @return data from database for pagination page
	 */
	List<Map<String, Object>> getDataForPagination(int page_id, int total);

	/**
	 * @return Page count for pagination.
	 */
	Float getPageCount();

	int[] getDataForGraph();

}
