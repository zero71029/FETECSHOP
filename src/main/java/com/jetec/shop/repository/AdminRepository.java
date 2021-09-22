package com.jetec.shop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jetec.shop.model.AdminBean;

public interface AdminRepository  extends JpaRepository<AdminBean, Integer>{

	AdminBean findByEmailAndPassword(String eamil,String password);
	boolean existsByEmail(String Email);
}
