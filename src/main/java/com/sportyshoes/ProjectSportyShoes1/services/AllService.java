package com.sportyshoes.ProjectSportyShoes1.services;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sportyshoes.ProjectSportyShoes1.entities.Orders;
import com.sportyshoes.ProjectSportyShoes1.entities.Products;
import com.sportyshoes.ProjectSportyShoes1.entities.Users;
import com.sportyshoes.ProjectSportyShoes1.repositories.OrdersRepository;
import com.sportyshoes.ProjectSportyShoes1.repositories.ProductsRepository;
import com.sportyshoes.ProjectSportyShoes1.repositories.UsersRepository;

@Service
public class AllService {
	@Autowired
	UsersRepository uRepo;
	@Autowired
	ProductsRepository pRepo;
	@Autowired
	OrdersRepository oRepo;
	
	// users services
	public List<Users> getAllUsers(){
		List<Users> users = new ArrayList<Users>();
		uRepo.findAll().forEach(user -> users.add(user));
		return users;
	}
	public Users getUserById(int id) {
		return uRepo.findById(id).get();
	}
	public Users getUserByUsername(String username) {
		return uRepo.findByUsername(username);
	}
	public Users getUserByUsernameAndPassword(String username, String password) {
		return uRepo.findByUsernameAndPassword(username, password);
	}
	public void registerUser(Users user) {
		uRepo.save(user);
	}
	public void removeUserById(int id) {
		uRepo.deleteById(id);
	}	
	
	// products services
	public List<Products> getAllProducts(){
		List<Products> products = new ArrayList<Products>();
		pRepo.findAll().forEach(product -> products.add(product));
		return products;
	}
	public Products getProductById(int id) {
		return pRepo.findById(id).get();
	}
	public List<Products> getProductsByColor(String color){
		return pRepo.findByColor(color);
	}
	public List<Products> getProductsBySize(String size){
		return pRepo.findBySize(size);
	}
	public List<Products> getProductsByBrand(String brand){
		return pRepo.findByBrand(brand);
	}
	public List<Products> getProductsByCategory(String category){
		return pRepo.findByCategory(category);
	}
	public void addProduct(Products product) {
		pRepo.save(product);
	}
	public void removeProductById(int id) {
		pRepo.deleteById(id);
	}
	public void removeAllProducts() {
		pRepo.deleteAll();
	}
	
	// Orders services
	public List<Orders> getAllOrders(){
		List<Orders> orders = new ArrayList<Orders>();
		oRepo.findAll().forEach(order -> orders.add(order));
		return orders;
	}
	public List<Orders> getOrdersByUserId(int id){
		return oRepo.findPurchaseDetailsByUserId(id);
	}
	public List<Orders> getAllDetailedOrders(){
		return oRepo.showAllPurchases();
	}
	public List<Orders> getOrdersByCategory(String category){
		return oRepo.filterOrderByCategory(category);
	}
	public List<Orders> getOrdersByDate(Date date){
		return oRepo.filterOrderByDate(date);
	}
	public Orders getOrderById(int id) {
		return oRepo.findById(id).get();
	}
	public void saveOrder(Orders order) {
		oRepo.save(order);
	}	
	public void removeOrderById(int id) {
		oRepo.deleteById(id);
	}
}