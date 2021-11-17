package com.sportyshoes.ProjectSportyShoes1.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.sportyshoes.ProjectSportyShoes1.entities.Users;
@Repository
public interface UsersRepository extends CrudRepository<Users, Integer>{
	
	Users findByUsername(@Param("username") String username);
	
	Users findByUsernameAndPassword(@Param("username") String username, @Param("password") String password);
}
