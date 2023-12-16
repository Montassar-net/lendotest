package com.example.demo.security.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.models.User;
import com.example.demo.repository.UserDetailsRepository;
import com.example.demo.repository.UserRepository;
@Service
public class UserServiceImpl {
	
	@Autowired
	UserRepository userRepository;
	
	@Transactional
	public List<User> findAllUsers() throws UsernameNotFoundException {
		List<User> users = userRepository.findAll();

		return users;
	}

}
