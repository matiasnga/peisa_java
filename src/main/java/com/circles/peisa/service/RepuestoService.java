package com.circles.peisa.service;

import com.circles.peisa.domain.Repuesto;
import com.circles.peisa.repository.RepuestoRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
public class RepuestoService {

    @Autowired
    RepuestoRepository repuestoRepository;

    public List<Repuesto> BuscarTodos() {
        return repuestoRepository.findAll();
    }

    public List<Repuesto> BuscarPorParametro(String consulta) {
        return repuestoRepository.buscarPorDescripcion(consulta.toString().toUpperCase());

    }

}
