package com.sportyshoes.ProjectSportyShoes1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

import com.sportyshoes.ProjectSportyShoes1.entities.Users;
import com.sportyshoes.ProjectSportyShoes1.services.AllService;

@Component
public class AdminDefaults implements ApplicationListener<ContextRefreshedEvent> {
	@Autowired
	AllService defaultService;
	@Override
	public void onApplicationEvent(ContextRefreshedEvent event) {
		Users user = new Users();
		user.setUsername("admin");
		user.setPassword("admin");
		defaultService.registerUser(user);
	}
}
