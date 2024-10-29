package com.restaurant_reservation_system.repo.impl;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.restaurant_reservation_system.config.model.Menu;

@Repository
public interface MenuRepository extends JpaRepository<Menu, Long> {
    // Custom query methods can be added here if needed
}