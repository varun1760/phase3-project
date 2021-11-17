package com.sportyshoes.ProjectSportyShoes1.controllers;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sportyshoes.ProjectSportyShoes1.entities.Orders;
import com.sportyshoes.ProjectSportyShoes1.entities.Products;
import com.sportyshoes.ProjectSportyShoes1.entities.Users;
import com.sportyshoes.ProjectSportyShoes1.services.AllService;

@Controller
public class UsersController {
	@Autowired
	AllService usersService;
	
	@GetMapping("/register")
	public String registerPage() {
		return "user-register";
	}
	@PostMapping("/register")
	public String registerUser(ModelMap model, @ModelAttribute("user") Users user) throws Exception {
		Users userDetails = usersService.getUserByUsername(user.getUsername());
		if (userDetails == null) {
			usersService.registerUser(user);
			model.addAttribute("successMessage", "User got registered Successfully");
			return "user-register";
		}
		model.addAttribute("invalidMessage", "Oops! User Already Exists");
		return "user-register";
	}	
	@GetMapping("/adminLogin")
	public String showAdminLogin() {
		return "adminLogin";
	}
	
	@PostMapping("/adminLogin")
	public String adminLogin(ModelMap model, @RequestParam String username, @RequestParam String password) {
		Users userDetails = usersService.getUserByUsernameAndPassword(username, password);
		if (userDetails != null && userDetails.getUsername().equals("admin") && password.equals(userDetails.getPassword())) {
			return "admin-dashboard";
		} else {
			model.addAttribute("message", "Invalid Credentials");
			return "adminLogin";
		}
	}
	@GetMapping("/admin/changepassword")
	public String changeAdminPassword() {
		return "change-password";
	}
	@PostMapping("/admin/changepassword")
	public String changeAdminPassword(ModelMap model, @RequestParam String password) {
		Users userDetails = usersService.getUserByUsername("admin");
		if (userDetails != null) {
			userDetails.setPassword(password);
			usersService.registerUser(userDetails);
			model.addAttribute("message", "Password has been changed Successfully");
			return "successMsg";
		} else {
			model.addAttribute("message", "oops! something went wrong! please Try Again");
			return "change-password";
		}
	}
	@GetMapping("/admin-dashboard")
	public String adminDashboard() {
		return "admin-dashboard";
	}
	
	@PostMapping("/login")
	public String userDashboard(ModelMap model, @RequestParam String username, @RequestParam String password) {
			Users userDetails = usersService.getUserByUsernameAndPassword(username, password);
			if ( userDetails == null || userDetails.getUsername().equals("admin") && password.equals(userDetails.getPassword())) {
				model.addAttribute("message", "Bad Credentials! (or) Unauthorized Access!");
				return "home";
			} else {
				model.addAttribute("allProducts", usersService.getAllProducts());
			return "user-dashboard";
		}
	}
	@GetMapping("/user/changepassword")
	public String changeUserPassword() {
		return "change-password";
	}
	@PostMapping("/user/changepassword")
	public String changeUserPassword(ModelMap model, @PathVariable String username, @RequestParam String password) {
		Users userDetails = usersService.getUserByUsernameAndPassword(username, password);
		if (userDetails != null) {
			userDetails.setPassword(password);
			usersService.registerUser(userDetails);
			model.addAttribute("message", "Password has been changed Successfully");
			return "successMsg";
		} else {
			model.addAttribute("message", "oops! something went wrong! please Try Again");
			return "change-password";
		}
	}
	@GetMapping("/purchase/{id}/{username}")
	public String buyProduct(ModelMap model, @PathVariable int id, @PathVariable String username) {
		System.out.println(id);
		Products product=usersService.getProductById(id);
		Users user = usersService.getUserByUsername(username);
		Orders order=new Orders();
		Date date = new Date();
		order.setOrderDate(date);
		order.setProducts(product);
		order.setUsers(user);
		usersService.saveOrder(order);
		model.addAttribute("message", "Product has been purchased successfully");
		return "successMsg";
	}
}
