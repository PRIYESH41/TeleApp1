package com.example.teleapp.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.teleapp.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {

	
}
