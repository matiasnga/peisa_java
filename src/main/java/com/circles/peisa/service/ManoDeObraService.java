package com.circles.peisa.service;

import com.circles.peisa.domain.ManoDeObra;
import com.circles.peisa.repository.ManoDeObraRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManoDeObraService {
    @Autowired
    ManoDeObraRepository moRepository;
    
    public List<ManoDeObra> buscarTodos(){
    return moRepository.findAll();
    
    }
}
