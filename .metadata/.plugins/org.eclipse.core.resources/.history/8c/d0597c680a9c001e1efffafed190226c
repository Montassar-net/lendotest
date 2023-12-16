package com.example.demo.security.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.models.User;
import com.example.demo.repository.UserDetailsRepository;
import com.example.demo.repository.UserRepository;



@Service
public class UserDetailsServiceImpl implements UserDetailsService {
	@Autowired
	UserDetailsRepository userRepository;

	@Override
	@Transactional
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		com.example.demo.models.UserDetails user = userRepository.findByUsername(username)
				.orElseThrow(() -> new UsernameNotFoundException("Cannot find user with username: " + username));

		return UserDetailsImpl.build(user);
	}
	
	

}