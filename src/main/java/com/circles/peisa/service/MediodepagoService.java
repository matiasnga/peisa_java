package com.circles.peisa.service;

import com.circles.peisa.domain.MedioDePago;
import com.circles.peisa.repository.MedioDePagoRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MediodepagoService {
    @Autowired
    MedioDePagoRepository mediodepagoRepository;
    public List<MedioDePago> buscarTodos(){
        return mediodepagoRepository.findAll();
    }
    
}
