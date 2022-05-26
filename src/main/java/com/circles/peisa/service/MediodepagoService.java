package com.circles.peisa.service;

import com.circles.peisa.domain.Mediodepago;
import com.circles.peisa.repository.MediodepagoRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MediodepagoService {
    @Autowired
   MediodepagoRepository mediodepagoRepository;
    public List<Mediodepago> buscarTodos(){
        return mediodepagoRepository.findAll();
    }
    
}
