package com.sportyshoes.ProjectSportyShoes1.controllers;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sportyshoes.ProjectSportyShoes1.entities.Orders;
import com.sportyshoes.ProjectSportyShoes1.entities.Products;
import com.sportyshoes.ProjectSportyShoes1.services.AllService;

@Controller
public class AdminController {
	@Autowired
	AllService adminService; 
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("admin/allusers")
	public String listUsers(ModelMap model){
		model.addAttribute("allUsers", adminService.getAllUsers());
		return "user-list";
	}
	
	@GetMapping("/admin/allproducts")
	public String listProducts(ModelMap model) {
		model.addAttribute("allProducts", adminService.getAllProducts());
		return "product-list";
	}
	@GetMapping("/admin/new-product")
	public String getProduct() {
		return "new-product";
	}
	
	@PostMapping("/admin/new-product")
	public String addProduct(ModelMap model, @ModelAttribute Products product) {
		adminService.addProduct(product);
		model.addAttribute("allProducts", adminService.getAllProducts());
		return "product-list";
	}
	
	@GetMapping("/admin/ordersdetails")
	public String purchaseList(ModelMap model) {
		model.addAttribute("purchases", adminService.getAllDetailedOrders());
		return "purchase-history";
	}
	
	@PostMapping(value = "/admin/ordersdetails", params = "category")
	public String findPurchaseByCategory(ModelMap model, @RequestParam("category") String category ) {
		if (category != null) {
			List<Orders> orderDetails = adminService.getOrdersByCategory(category);
			if ( orderDetails == null) {
				model.addAttribute("message", "No Order Found with this category");
			} else {
				model.addAttribute("purchases",orderDetails);
			}
		}
		return "purchase-history";
	}
	@PostMapping(value = "/admin/ordersdetails", params = "date")
	public String findPurchaseByDate(ModelMap model, @RequestParam("date") Date date ) {
		if (date != null) {
			List<Orders> orderDetails = adminService.getOrdersByDate(date);
			if ( orderDetails == null) {
				model.addAttribute("message", "No Order Found at this Date");
			} else {
				model.addAttribute("purchases",orderDetails);
			}
		}
		return "purchase-history";
	}
}