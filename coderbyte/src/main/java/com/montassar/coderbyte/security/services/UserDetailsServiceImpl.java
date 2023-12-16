package com.montassar.coderbyte.security.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.montassar.coderbyte.model.UserInfo;
import com.montassar.coderbyte.service.UserInfoRepository;




@Service
public class UserDetailsServiceImpl implements UserDetailsService {
	@Autowired
	UserInfoRepository userRepository;

	@Override
	@Transactional
	public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
		com.montassar.coderbyte.model.UserInfo user = userRepository.findByName(name)
				.orElseThrow(() -> new UsernameNotFoundException("Cannot find user with username: " + name));

		return UserDetailsImpl.build(user);
	}
	
	

}