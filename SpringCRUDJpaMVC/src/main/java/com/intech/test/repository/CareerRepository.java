package com.intech.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.intech.model.Career;

public interface CareerRepository extends JpaRepository<Career, Integer> {

}
