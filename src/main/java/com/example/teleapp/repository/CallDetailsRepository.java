package com.example.teleapp.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.teleapp.entity.CallDetails;

public interface CallDetailsRepository extends JpaRepository<CallDetails, Long> {

	List<CallDetails> findByCalledBy(long calledBy);
}
