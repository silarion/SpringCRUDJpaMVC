package com.intech.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.intech.test.Item;

public interface ItemRepository extends JpaRepository<Item, Long> {

}
