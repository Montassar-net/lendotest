package com.montassar.coderbyte.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;
import com.montassar.coderbyte.model.Post;
import com.montassar.coderbyte.model.Comment;
import com.montassar.coderbyte.service.PostRepository;
import com.montassar.coderbyte.service.CommentRepository;

@RestController
@RequestMapping("/posts")

public class PostController
{
	// TODO Auto-generated constructor stub
	@Autowired
    private PostRepository PostRepository;

	@Autowired
    private CommentRepository CommentRepository;

    @GetMapping("/")
    public List<Post> getAllPosts(){
        return PostRepository.findAll();
    }
    @GetMapping("/{postId}/comments")
    public List<Comment> getCommentByPostId(@PathVariable Long postId){
       return CommentRepository.findByPostId(postId);
    }

}
