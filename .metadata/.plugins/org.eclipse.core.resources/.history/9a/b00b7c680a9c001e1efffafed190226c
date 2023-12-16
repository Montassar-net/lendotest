package com.example.demo.security.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.models.Post;
import com.example.demo.models.User;
import com.example.demo.repository.PostRepository;
import com.example.demo.repository.UserRepository;

@Service
public class PostServiceImpl {
	@Autowired
	PostRepository postRepository;
	
	@Transactional
	public List<Post> findAllPosts() throws UsernameNotFoundException {
		List<Post> posts = postRepository.findAll();

		return posts;
	}
}
