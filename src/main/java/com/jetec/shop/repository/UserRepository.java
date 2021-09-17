package com.jetec.shop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jetec.shop.model.UserBean;


public interface UserRepository extends JpaRepository<UserBean, Integer>{
	boolean existsByemail(String email);
	boolean existsByPhone(String phone);
	boolean existsByEmail(String email);
	boolean existsByFirstname(String Firstname);
	boolean existsByLastname(String Lastname);
	UserBean findByEmail(String email);	
	UserBean findByPhone(String phone);
	List<UserBean> findByFirstname(String Firstname);
	List<UserBean> findByLastname(String Lastname);
	
	UserBean findByEmailAndPassword(String email,String password);
	UserBean findByPhoneAndPassword(String phone,String password);
}
