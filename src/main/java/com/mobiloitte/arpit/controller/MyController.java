package com.mobiloitte.arpit.controller;

import java.io.IOException;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.mobiloitte.arpit.model.UserData;
import com.mobiloitte.arpit.service.UserService;

/**
 * @author Arpit gupta
 *
 */
@Controller
public class MyController {

	/**
	 * Attaching (Autowiring) the UserService service.
	 */
	@Autowired
	private UserService userservice;

	/**
	 * @return sign up page.
	 */
	@GetMapping("/sign-up")
	public String signUp() {
		return "sign-up";
	}

	/**
	 * @param user
	 * @param r
	 * @return if condition is true the return login (admin) page else redirected to
	 *         sign up page.
	 * @throws IOException
	 */
	@PostMapping("/sign-up")
	public String showSignUp(UserData user, RedirectAttributes r) throws IOException {
		int addStatus = userservice.addUser(user);
		if (addStatus == 200) {
			return "redirect:admin";
		} else {
			r.addFlashAttribute("existedEmail", "Invalid Email");
			return "redirect:sign-up";
		}
	}

	/**
	 * @return login page.
	 */
	@GetMapping("/admin")
	public String login() {
		return "admin";
	}

	/**
	 * @param user
	 * @param session
	 * @param re
	 * @return if conditions are true the return tab page (home) else redirected to
	 *         login.
	 */
	@PostMapping("/admin")
	public String showLogin1(UserData user, HttpSession session, RedirectAttributes re) {
		int status = userservice.loginValidate(user);
		// Condition to check status of login validation and role of user (admin or
		// user) then according to role creating the session
		// after successful login.
		if (status == 200) {
			String role = userservice.getRole(user);
			if (role.equals("admin")) {
				session.setAttribute("sessionStatus", "true");
				session.setAttribute("sessionId", userservice.getIdForSession(user));
				session.setAttribute("myProfileDetails",
						userservice.getUserData(Integer.parseInt(userservice.getIdForSession(user))));
				re.addFlashAttribute("adminMessage", "Admin page");
				return "tab";
			} else {
				session.setAttribute("sessionStatus", "true");
				session.setAttribute("sessionId", userservice.getIdForSession(user));
				session.setAttribute("myProfileDetails",
						userservice.getUserData(Integer.parseInt(userservice.getIdForSession(user))));
				return "usertab";
			}

		} else {
			re.addFlashAttribute("invalidLogin", "Invalid Credentials");
			return "redirect:/admin";
		}
	}

	/**
	 * @return forget password page.
	 */
	@GetMapping("/forgotPasswordEmail")
	public String showForgetPassword() {
		return "forgotPasswordEmail";
	}
	
	@GetMapping("/jjj")
	public String showjjj() {
		return "jjjj";
	}

	/**
	 * @param user
	 * @param m
	 * @return if condition is true then return OTP page else forgetPasswordEmail
	 *         page.
	 */
	@PostMapping("forgotPasswordEmail")
	public String showForgotPasswordEmail(UserData user, Model m) {
		int mailStatus = userservice.mailToRecoverPass(user);
		if (mailStatus == 200) {
			m.addAttribute("mailStatus", "OTP is sent to your email. Plaease verify.");
			m.addAttribute("emailForOtp", user.getEmail());
			return "otppage";
		} else {
			m.addAttribute("mailStatus", "Something went wrong. Please try again.");
			return "forgotPasswordEmail";
		}
	}

	/**
	 * @return OTP page to verify the OTP.
	 */
	@GetMapping("/otppage")
	public String otpPage() {
		return "otppage";
	}

	/**
	 * @param user
	 * @param m
	 * @return if condition is true then return changePassword page else OTP page.
	 */
	@PostMapping("/otppage")
	public String showOtpPage(UserData user, RedirectAttributes r, Model m) {
		int status = userservice.getOtpToCheck(user);
		if (status == 200) {
			r.addFlashAttribute("emailForOtp", user.getEmail());
			userservice.deleteOtp(user);
			return "redirect:changepassword";
		} else {
			r.addFlashAttribute("otpStatus", "OTP not Matched");
			r.addFlashAttribute("emailForOtp", user.getEmail());
			return "redirect:otppage";
		}
	}

	/**
	 * @return Change password page to change password.
	 */
	@GetMapping("/changepassword")
	public String changePassword() {
		return "changepassword";
	}

	/**
	 * @param user
	 * @return admin page.
	 */
	@PostMapping("/changepassword")
	public String showChangePassword(UserData user) {
		userservice.changePassword(user);
		return "admin";
	}

	/**
	 * @param session
	 * @param r
	 * @return after checking that session is created then return tab page else
	 *         redirected to login.
	 */
	@GetMapping("/tab")
	public String showTab(HttpSession session, RedirectAttributes r) {
		// Checking the Status of session to restrict the user not access any sensitive
		// page without login.
		/*if (session.getAttribute("sessionStatus") != null
				&& (boolean) session.getAttribute("sessionStatus").equals("true")) {
			// Next line is used to take the role from session to validate user.
			Map<String, String> userData = (Map<String, String>) session.getAttribute("myProfileDetails");
			String role = (String) userData.get("role");
			if (role.equals("admin")) {
				return "tab";
			}
		} else {
			r.addFlashAttribute("notAuthorised", "You are not authorised to access this page");
			return "redirect:/admin";
		}
		r.addFlashAttribute("sessionExpired", "Session Expired! Please login");*/
		return "tab";
	}

	/**
	 * @param session
	 * @param r
	 * @return after checking that session is created then return user tab page else
	 *         redirected to login.
	 */
	@GetMapping("usertab")
	public String userTab(HttpSession session, RedirectAttributes r) {
		if (session.getAttribute("sessionStatus") != null
				&& (boolean) session.getAttribute("sessionStatus").equals("true")) {
			Map<String, String> userData = (Map<String, String>) session.getAttribute("myProfileDetails");
			String role = (String) userData.get("role");
			if (role.equals("user")) {
				return "usertab";
			}
		} else {
			r.addFlashAttribute("notAuthorised", "You are not authorised to access this page");
			return "redirect:/admin";
		}
		r.addFlashAttribute("sessionExpired", "Session Expired! Please login");
		return "redirect:/admin";
	}

	/**
	 * @param user
	 * @param m
	 * @param session
	 * @param r
	 * @return after checking that session is created and role as admin then shows
	 *         the view tab page else redirected to login.
	 */
	@GetMapping("/view")
	public String view(UserData user, Model m, HttpSession session, RedirectAttributes r) {
		if (session.getAttribute("sessionStatus") != null
				&& (boolean) session.getAttribute("sessionStatus").equals("true")) {
			// Next line is used to take the role from session to validate user.
			Map<String, String> userData = (Map<String, String>) session.getAttribute("myProfileDetails");
			String role = (String) userData.get("role");
			if (role.equals("admin")) {
				m.addAttribute("details", (session.getAttribute("myProfileDetails")));
				m.addAttribute("details", userservice.getUserDetails(user));
				m.addAttribute("adminMessage", "Admin page");
				return "view";
			}
		} else {
			r.addFlashAttribute("notAuthorised", "You are not authorised to access this page");
			return "redirect:/admin";
		}
		return "redirect:/admin";
	}

	/**
	 * @param user
	 * @param m
	 * @param session
	 * @param r
	 * @return after checking that session is created and role as user then shows
	 *         the view tab page else redirected to login.
	 */
	@GetMapping("/userview")
	public String showUserView(UserData user, Model m, HttpSession session, RedirectAttributes r) {
		Map<String, String> userData = (Map<String, String>) session.getAttribute("myProfileDetails");
		String role = (String) userData.get("role");
		if (session.getAttribute("sessionStatus") != null
				&& (boolean) session.getAttribute("sessionStatus").equals("true") && role.equals("user")) {
			m.addAttribute("details", (session.getAttribute("myProfileDetails")));
			return "userview";
		} else {
			r.addFlashAttribute("sessionExpired", "Session Expired! Please login");
			return "redirect:/admin";
		}

	}

	/**
	 * @param user
	 * @param session
	 * @param m
	 * @param r
	 * @return after checking that session is created and role as admin then shows
	 *         the view table view page else redirected to login.
	 */
	@GetMapping("/tableview")
	public String tableView(UserData user, HttpSession session, Model m, RedirectAttributes r) {
		if (session.getAttribute("sessionStatus") != null
				&& (boolean) session.getAttribute("sessionStatus").equals("true")) {
			Map<String, String> userData = (Map<String, String>) session.getAttribute("myProfileDetails");
			String role = (String) userData.get("role");
			if (role.equals("admin")) {
				m.addAttribute("details", (session.getAttribute("myProfileDetails")));
				m.addAttribute("details", userservice.getUserDetails(user));
				m.addAttribute("adminMessage", "Admin page");
				return "tableview";
			}
		} else {
			r.addFlashAttribute("notAuthorised", "You are not authorised to access this page");
			return "redirect:/admin";
		}
		return "redirect:/admin";

	}

	/**
	 * @param user
	 * @param m
	 * @param session
	 * @param r
	 * @return after checking that session is created and role as user then shows
	 *         the view user table view page else redirected to login.
	 */

	@GetMapping("/usertableview")
	public String showUserTableView(UserData user, Model m, HttpSession session, RedirectAttributes r) {
		if (session.getAttribute("sessionStatus") != null
				&& (boolean) session.getAttribute("sessionStatus").equals("true")) {
			m.addAttribute("details", (session.getAttribute("myProfileDetails")));
			m.addAttribute("details", (session.getAttribute("myProfileDetails")));
			return "usertableview";
		} else {
			r.addFlashAttribute("sessionExpired", "Session Expired! Please login");
			return "redirect:/admin";
		}

	}

	/**
	 * @param session
	 * @param m
	 * @param r
	 * @return after checking that session is created and role as admin then show
	 *         the view grid view page else redirected to login.
	 */
	@GetMapping("/gridview/{page_id}")
	public String showGridView(HttpSession session, Model m, RedirectAttributes r,
			@PathVariable int page_id) {
		if (session.getAttribute("sessionStatus") != null
				&& (boolean) session.getAttribute("sessionStatus").equals("true")) {
			Map<String, String> userData = (Map<String, String>) session.getAttribute("myProfileDetails");
			String role = (String) userData.get("role");
			if (role.equals("admin")) {
				float count = userservice.getPageCount();
				int total = (int) ((count + 5) - count);
				if (page_id == 1) {
				} else {
					page_id = (page_id - 1) * total + 1;
				}
				m.addAttribute("details", userData);
				m.addAttribute("details", userservice.getDataForPagination(page_id, total));
				m.addAttribute("pagecount", userservice.getPageCount());
				m.addAttribute("adminMessage", "Admin page");
				return "gridview";
			}
		} else {
			r.addFlashAttribute("notAuthorised", "You are not authorised to access this page");
			return "redirect:/admin";
		}
		return "redirect:/admin";
	}

	/**
	 * @param m
	 * @param session
	 * @param r
	 * @return after checking that session is created and role as user then show the
	 *         view user grid view page else redirected to login.
	 */
	@GetMapping("/usergridview")
	public String showUserGridView(Model m, HttpSession session, RedirectAttributes r) {
		if (session.getAttribute("sessionStatus") != null
				&& (boolean) session.getAttribute("sessionStatus").equals("true")) {
			m.addAttribute("details", (session.getAttribute("myProfileDetails")));
			m.addAttribute("details", (session.getAttribute("myProfileDetails")));
			return "usergridview";
		} else {
			r.addFlashAttribute("notAuthorised", "Session Expired! Please login");
			return "redirect:/admin";
		}

	}

	/**
	 * @param session
	 * @param r
	 * @param m
	 * @return Shows the edit page after checking that session is created and role
	 *         is user else redirected to login.
	 */
	@GetMapping("/edit")
	public String editPage(HttpSession session, RedirectAttributes r, Model m) {
		if (session.getAttribute("sessionStatus") != null
				&& (boolean) session.getAttribute("sessionStatus").equals("true")) {
			m.addAttribute("details", (session.getAttribute("myProfileDetails")));
			return "edit";
		} else {
			r.addFlashAttribute("sessionExpired", "Session Expired");
			return "redirect:/admin";
		}
	}

	/**
	 * @param user
	 * @param m
	 * @param session
	 * @return Shows the user tab page after successful edit of user else redirected
	 *         to login.
	 */
	@PostMapping("edit")
	public String showEditPage(UserData user, Model m, HttpSession session, RedirectAttributes r) {
		Integer id = Integer.parseInt((String) session.getAttribute("sessionId"));
		int response = userservice.editProfile(user, id);
		if (response == 200) {
			m.addAttribute("updateStatus", "Successfully updated");
			return "usertab";
		} else {
			r.addFlashAttribute("updateStatus", "Fail to update");
			return "redirect:edit";
		}
	}

	/**
	 * @param user
	 * @param r
	 * @param session
	 * @return Shows the grid view page after successful deletion of user account
	 *         else redirected to login.
	 */
	@GetMapping("/delete")
	public String deleteUser(UserData user, RedirectAttributes r, HttpSession session) {
		if (session.getAttribute("sessionStatus") != null
				&& (boolean) session.getAttribute("sessionStatus").equals("true")) {
			// Same name of addFlashAttribute is used to show and remove the data from page.
			r.addFlashAttribute("details", (session.getAttribute("myProfileDetails")));
			r.addFlashAttribute("details", userservice.deleteUser(user));
			Map<String, String> userData = (Map<String, String>) session.getAttribute("myProfileDetails");
			String role = (String) userData.get("role");
			if (role.equals("admin")) {
				return "gridview";
			} else {
				r.addFlashAttribute("sessionExpired", "Session Expired");
				return "redirect:/admin";
			}
		} else {
			r.addFlashAttribute("sessionExpired", "Session Expired");
			return "redirect:/admin";
		}

	}

	@GetMapping("/login")
	public String showLogin(HttpSession session) {
		return "login";
	}

	/**
	 * @param session
	 * @return to login after successful logout.
	 */
	@PostMapping("/logout")
	public String logout(HttpSession session) {
		// Deleting the data from session by using invalidate method.
		session.invalidate();
		return "redirect:admin";
	}

	/**
	 * @param session
	 * @param m
	 * @return Shows the gallery view page.
	 */
	@GetMapping("/galleryview")
	public String showGallery(HttpSession session, Model m) {
		// Map<String, String> userData = (Map<String, String>)
		// session.getAttribute("myProfileDetails");
		// String images = userData.get("pic");
		// m.addAttribute("details", images);
		return "galleryview";
	}

	@GetMapping("/graph")
	public String graphh(Model m) {
		return "graph";
	}

	@GetMapping("/highchart")
	public String high(Model m) {
		int[] a = userservice.getDataForGraph();
		int admin = a[0];
		m.addAttribute("countadmin", admin);
		int user = a[1];
		m.addAttribute("countuser", user);
		return "highchart";
	}

	@GetMapping("/linechart")
	public String linechart(Model m) {
		int[] a = userservice.getDataForGraph();
		int admin = a[0];
		m.addAttribute("adminpercent", admin);
		int user = a[1];
		m.addAttribute("userpercent", user);
		return "linechart";
	}

	@GetMapping("/map")
	public String showMap() {
		return "maps";
	}
}