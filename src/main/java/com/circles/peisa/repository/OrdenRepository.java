package com.circles.peisa.repository;

import com.circles.peisa.domain.Orden;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrdenRepository extends JpaRepository<Orden, Integer>{
    
}
