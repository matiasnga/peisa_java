package com.circles.peisa.service;

import com.circles.peisa.domain.CotizacionDolar;
import com.circles.peisa.repository.CotizacionDolarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CotizacionDolarService {
    @Autowired
    CotizacionDolarRepository cotizacionDolarRepository;
    public CotizacionDolar obtenerCotizacion() {
        return cotizacionDolarRepository.cotizacionDolar;
    }
}
