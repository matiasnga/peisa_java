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
    public List<Repuesto> BuscarTodos(){
    return repuestoRepository.findAll();
    }
}
