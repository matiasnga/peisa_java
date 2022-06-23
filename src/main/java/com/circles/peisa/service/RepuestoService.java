package com.circles.peisa.service;

import com.circles.peisa.domain.Repuesto;
import com.circles.peisa.repository.RepuestoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RepuestoService {
    @Autowired
    RepuestoRepository repuestoRepository;

    public List<Repuesto> buscarTodos() {
        return repuestoRepository.findAllOrderByFav();
    }
    public List<Repuesto> buscarFavoritos() {
        return repuestoRepository.buscarFavoritos();
    }
    public List<Repuesto> buscarPorParametro(String consulta) {
        return repuestoRepository.buscarPorDescripcion(consulta.toUpperCase());
    }
    public Repuesto guardarRepuesto(Repuesto repuesto) {
        return repuestoRepository.save(repuesto);
    }
    public Repuesto addFavorito(Repuesto repuesto) {
        repuesto.setDestacado(!repuesto.isDestacado());
        return repuestoRepository.save(repuesto);
    }
    public Repuesto buscarRepuestoPorId(int id) {
        return repuestoRepository.findById(id);
    }
    public Repuesto buscarRepuestoPorCodigo(int id) {
        return repuestoRepository.findByCodigo(id);
    }
    public void eliminarRepuesto(int id) {
        repuestoRepository.deleteById(id);
    }
}
