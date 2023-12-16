package com.example.demo.security.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.models.Comment;
import com.example.demo.models.Post;
import com.example.demo.repository.CommentRepository;
import com.example.demo.repository.PostRepository;

@Service
public class CommentServiceImpl {
	@Autowired
	CommentRepository commentRepository;
	
	@Transactional
	public List<Comment> findAllComments()  {
		List<Comment> comments = commentRepository.findAll();

		return comments;
	}
}

