package com.montassar.coderbyte.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;
import com.montassar.coderbyte.model.Comment;
import com.montassar.coderbyte.service.CommentRepository;

@RestController
@RequestMapping("/comments")

public class CommentController
{
 
	@Autowired
    private CommentRepository CommentRepository;

    @GetMapping("/")
    public List<Comment> getAllComments(){
        return CommentRepository.findAll();
    }
}
