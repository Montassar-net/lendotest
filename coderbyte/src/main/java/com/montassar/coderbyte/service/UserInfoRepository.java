package com.montassar.coderbyte.service;

import org.springframework.data.jpa.repository.JpaRepository; 
import org.springframework.stereotype.Repository;

import com.montassar.coderbyte.model.UserInfo;

import java.util.Optional; 
  
@Repository
public interface UserInfoRepository extends JpaRepository<UserInfo, Integer> { 
    Optional<UserInfo> findByName(String username); 
    Boolean existsByName(String username);
    Boolean existsByEmail(String email);
}
