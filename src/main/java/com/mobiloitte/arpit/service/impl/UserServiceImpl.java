package com.mobiloitte.arpit.service.impl;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Random;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import com.mobiloitte.arpit.daoo.MyDao;
import com.mobiloitte.arpit.model.UserData;
import com.mobiloitte.arpit.service.UserService;

/**
 * @author Arpit gupta
 *
 */
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private MyDao dao;

	/**
	 * Autowiring of JavaMailSender.
	 */
	@Autowired
	private JavaMailSender sender;

	/**
	 * Path of MultiPart image to insert images.
	 */
	@Value("${upload_path}")
	private String folder;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.service.UserService#loginValidate(com.mobiloitte.arpit.
	 * model.UserData)
	 */
	@Override
	public int loginValidate(UserData user) {
		return dao.loginValidate(user);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.service.UserService#getUserDetails(com.mobiloitte.arpit.
	 * model.UserData)
	 */
	@Override
	public List<Map<String, Object>> getUserDetails(UserData user) {
		return dao.getUserDetails(user);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.mobiloitte.arpit.service.UserService#getUserData(int)
	 */
	@Override
	public Map<String, Object> getUserData(int id) {
		return dao.getUserData(id);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.service.UserService#getRole(com.mobiloitte.arpit.model.
	 * UserData)
	 */
	@Override
	public String getRole(UserData user) {
		return dao.getRole(user);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.service.UserService#getIdForSession(com.mobiloitte.arpit
	 * .model.UserData)
	 */
	@Override
	public String getIdForSession(UserData user) {
		return dao.getIdForSession(user);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.service.UserService#deleteUser(com.mobiloitte.arpit.
	 * model.UserData)
	 */
	@Override
	public int deleteUser(UserData user) {
		return dao.deleteUser(user);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.service.UserService#editProfile(com.mobiloitte.arpit.
	 * model.UserData, java.lang.Integer)
	 */
	@Override
	public int editProfile(UserData user, Integer id) {
		int updateStatus = dao.editProfile(user, id);
		if (updateStatus > 0) {
			return 200;
		} else {
			return 201;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.service.UserService#generateOtp(com.mobiloitte.arpit.
	 * model.UserData)
	 */
	@Override
	public int generateOtp(UserData user) {
		Random random = new Random();
		return 99999 + random.nextInt(1000000);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.service.UserService#changePassword(com.mobiloitte.arpit.
	 * model.UserData)
	 */
	@Override
	public int changePassword(UserData user) {
		return dao.changePassword(user);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.service.UserService#deleteOtp(com.mobiloitte.arpit.model
	 * .UserData)
	 */
	@Override
	public int deleteOtp(UserData user) {
		return dao.deleteOtp(user);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.service.UserService#getOtpToCheck(com.mobiloitte.arpit.
	 * model.UserData)
	 */
	@Override
	public int getOtpToCheck(UserData user) {
		int otpStatus = dao.getOtpToCheck(user);
		if (otpStatus > 0) {
			return 200;
		} else {
			return 201;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.service.UserService#getEmailCount(com.mobiloitte.arpit.
	 * model.UserData)
	 */
	@Override
	public String getEmailCount(UserData user) {
		return dao.getEmailCount(user);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.service.UserService#mailToRecoverPass(com.mobiloitte.
	 * arpit.model.UserData)
	 */
	@Override
	public int mailToRecoverPass(UserData user) {
		Integer checkEmail = Integer.parseInt(dao.getEmailCount(user));
		// Condition to check whether the entered email is present in database or not.
		if (checkEmail > 0) {
			MimeMessage message = sender.createMimeMessage();
			Random random = new Random();
			int otp = 99999 + random.nextInt(1000000);
			try {
				MimeMessageHelper helper = new MimeMessageHelper(message, true);
				helper.setTo(user.getEmail());
				helper.setSubject("Mobiloitte : Forget password");
				helper.setText("Your One time password is :" + " " + otp);
			} catch (MessagingException e) {
				return 201;
			}
			sender.send(message);
			dao.insertOtp(otp, user);
			return 200;
		} else {
			return 201;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mobiloitte.arpit.service.UserService#addUser(com.mobiloitte.arpit.model.
	 * UserData)
	 */
	@Override
	public int addUser(UserData user) throws IOException {
		MultipartFile profile = user.getImage();
		String filePath = folder + profile.getOriginalFilename();
		Path path = Paths.get(filePath);
		Files.copy(profile.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
		Integer emailCount = Integer.parseInt(dao.getEmailCount(user));
		// Condition to check whether the entered email is present in database or not.
		if (emailCount > 0) {
			return 201;
		} else {
			dao.addUser(user);
			return 200;
		}
	}



	/*
	 * (non-Javadoc)
	 * 
	 * @see com.mobiloitte.arpit.service.UserService#getPageCount()
	 */
	@Override
	public Float getPageCount() {
		float a=dao.getPageCount();
		float b=(float) Math.ceil(a/5);
		return b;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.mobiloitte.arpit.service.UserService#getDataForGraph()
	 */
	@Override
	public int[] getDataForGraph() {
		Float totalCount = dao.getPageCount();
		int userCount = dao.userCount();
		int adminCount = dao.adminCount();
		float adminPercent = (adminCount * 100) / totalCount;
		float userPercent = (userCount * 100) / totalCount;
		int[] data = new int[2];
		data[0] = (int) adminPercent;
		data[1] = (int) userPercent;
		return data;
	}

	@Override
	public List<Map<String, Object>> getDataForPagination(int page_id, int total) {
		return dao.getDataForPagination(page_id, total);	}
}
