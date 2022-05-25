package com.circles.peisa.repository;

import com.circles.peisa.domain.Repuesto;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface RepuestoRepository extends JpaRepository<Repuesto, Integer> {

    @Query("FROM Repuesto r WHERE r.descripcion LIKE %?1% OR r.codigo LIKE %?1% ORDER BY r.codigo")
    public List<Repuesto> buscarPorDescripcion(String consulta);

    @Query("FROM Repuesto r WHERE r.destacado IS 1 ORDER BY r.descripcion ASC")
    public List<Repuesto> buscarFavoritos();

    public Repuesto findById(int id);
}
