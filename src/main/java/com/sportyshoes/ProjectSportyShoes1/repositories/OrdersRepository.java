package com.sportyshoes.ProjectSportyShoes1.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.sportyshoes.ProjectSportyShoes1.entities.Orders;
@Repository
public interface OrdersRepository extends CrudRepository<Orders, Integer>{
	
	@Query(nativeQuery = true ,value = "SELECT * FROM Orders LEFT JOIN Products ON Orders.order_Id = Products.product_Id LEFT JOIN Users ON  Orders.order_Id = Users.user_Id WHERE Orders.order_Id = :orderId")
	public List<Orders> findPurchaseDetailsByUserId(@Param("orderId") int orderId);
	
	@Query(nativeQuery = true ,value = "SELECT * FROM Orders LEFT JOIN Products ON Orders.order_Id = Products.product_Id LEFT JOIN Users ON  Orders.order_Id = Users.user_Id")
	public List<Orders> showAllPurchases();
	
	@Query(nativeQuery = true ,value = "SELECT * FROM Orders LEFT JOIN Products ON Orders.order_Id = Products.product_Id LEFT JOIN Users ON  Orders.order_Id = Users.user_Id WHERE Products.category = :category")
	public List<Orders> filterOrderByCategory(@Param("category") String category);
	
	@Query(nativeQuery = true ,value = "SELECT * FROM Orders LEFT JOIN Products ON Orders.order_Id = Products.product_Id LEFT JOIN Users ON  Orders.order_Id = Users.user_Id WHERE Orders.order_Date = :orderDate")
	public List<Orders> filterOrderByDate(@Param("orderDate") Date date);
}
