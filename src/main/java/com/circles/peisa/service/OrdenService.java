package com.circles.peisa.service;

import com.circles.peisa.domain.Orden;
import com.circles.peisa.repository.OrdenRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrdenService {
    
    @Autowired
    OrdenRepository ordenRepository;
    
    public List<Orden> buscarTodos() {
        return ordenRepository.findAll();
    }
    public Orden buscarOrdenById(int id){
    return ordenRepository.findById(id);
    }
    
    public Orden guardarOrden(Orden orden) {
        return ordenRepository.save(orden);
    }
    
    public void borrarOrden(int id) {
        ordenRepository.deleteById(id);
    }
    
}
