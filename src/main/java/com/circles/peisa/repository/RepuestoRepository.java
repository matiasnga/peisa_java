package com.circles.peisa.repository;

import com.circles.peisa.domain.Repuesto;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface RepuestoRepository extends JpaRepository<Repuesto, Integer> {

  @Query("from Repuesto r where r.descripcion like %?1% or r.codigo like %?1% order by r.precioDeVenta asc")
    public List<Repuesto> buscarPorDescripcion(String consulta);
  
}
