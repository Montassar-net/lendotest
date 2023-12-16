package com.montassar.coderbyte.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;
import com.montassar.coderbyte.model.User;
import com.montassar.coderbyte.model.Post;
import com.montassar.coderbyte.service.UserRepository;
import com.montassar.coderbyte.service.PostRepository;

@RestController
@RequestMapping("/users")
public class UserController
{
	@Autowired
    private UserRepository userRepository;

    @Autowired
    private PostRepository postRepository;

    @GetMapping("/")
    public List<User> getAllUsers(){
        return userRepository.findAll();
    }

   /* @GetMapping("/{id}/posts")
    public List<Post> getPostByUserId(@PathVariable Long id){
       return postRepository.findByUserId(id);
    }*/
}
