package com.montassar.coderbyte.service;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;
import com.montassar.coderbyte.model.User;
import com.montassar.coderbyte.model.Post;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

}