package com.example.teleapp.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import com.example.teleapp.entity.Plan;

public interface PlanRepository extends JpaRepository<Plan, Integer> {
	


}
