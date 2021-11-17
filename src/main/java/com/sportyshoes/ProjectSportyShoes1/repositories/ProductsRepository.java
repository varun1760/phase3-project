package com.sportyshoes.ProjectSportyShoes1.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.sportyshoes.ProjectSportyShoes1.entities.Products;
@Repository
public interface ProductsRepository extends CrudRepository<Products, Integer>{

	@Query("SELECT p FROM Products p where p.color=:productColor")
	public List<Products> findByColor(@Param("productColor") String color);
	
	@Query("SELECT p FROM Products p where p.size=:productSize")
	public List<Products> findBySize(@Param("productSize") String size);
	
	@Query("SELECT p FROM Products p where p.brand=:productBrand")
	public List<Products> findByBrand(@Param("productBrand") String brand);
	
	@Query("SELECT p FROM Products p where p.category=:productCategory")
	public List<Products> findByCategory(@Param("productCategory") String category);
}

// serch product reference
/*
Optional<Director> findByDirectorName(String directorName);
*/