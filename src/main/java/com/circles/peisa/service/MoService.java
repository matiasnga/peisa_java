package com.circles.peisa.service;

import com.circles.peisa.domain.Mo;
import com.circles.peisa.repository.MoRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MoService {
    @Autowired
    MoRepository moRepository;
    
    public List<Mo> buscarTodos(){
    return moRepository.findAll();
    
    }
}
