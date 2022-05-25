package com.circles.peisa.service;

import com.circles.peisa.domain.Repuesto;
import com.circles.peisa.repository.RepuestoRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RepuestoService {
    
    @Autowired
    RepuestoRepository repuestoRepository;
    
    public List<Repuesto> buscarTodos() {
        return repuestoRepository.findAll();
    }
    
    public List<Repuesto> buscarDestacados() {
        return repuestoRepository.buscarDestacados();
    }
    
    public List<Repuesto> BuscarPorParametro(String consulta) {
        return repuestoRepository.buscarPorDescripcion(consulta.toUpperCase());
    }
    
    public Repuesto guardarRepuesto(Repuesto repuesto) {
        return repuestoRepository.save(repuesto);
    }
    
    public Repuesto buscarRepuestoPorId(int id) {
        
        return repuestoRepository.findById(id);
    }
    
    public void eliminarRepuesto(int id) {
        repuestoRepository.deleteById(id);
    }
    
    public Repuesto addFavorito(Repuesto repuesto) {
        repuesto.setDestacado(true);
        return repuestoRepository.save(repuesto);
    }
}
