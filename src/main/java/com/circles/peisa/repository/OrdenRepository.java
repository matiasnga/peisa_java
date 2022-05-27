package com.circles.peisa.repository;

import com.circles.peisa.domain.Orden;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface OrdenRepository extends JpaRepository<Orden, Integer> {

    public Orden findById(int id);

    @Query("FROM Orden o Order By o.id DESC")
    public List<Orden> buscarPorOrderIdDesc();
}
