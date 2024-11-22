package com.example.tableavailabilityservice.Repository;


import com.example.tableavailabilityservice.Entities.Table;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TableRepository extends JpaRepository<Table, Integer> {
    List<Table> findByRestaurantIdAndAvailable(int restaurantId, boolean available);
}
