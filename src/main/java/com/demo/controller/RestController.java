package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.model.User;
import com.demo.services.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {

	@Autowired
	private UserService userService;

	
	
	@GetMapping("/saveuser")
	public String saveUser(@RequestParam int id, @RequestParam String username, @RequestParam String firstname, @RequestParam String lastname, @RequestParam int age, @RequestParam String password) {
		User user = new User(id, username, firstname, lastname, age, password);
		userService.saveMyUser(user);
		return "User Saved";
	}
	
	

}
