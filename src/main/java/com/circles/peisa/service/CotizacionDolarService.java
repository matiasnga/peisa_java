package com.circles.peisa.service;

import com.circles.peisa.domain.CotizacionDolar;
import com.circles.peisa.domain.Repuesto;
import com.circles.peisa.repository.CotizacionDolarRepository;
import com.circles.peisa.repository.RepuestoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CotizacionDolarService {
    @Autowired
    CotizacionDolarRepository cotizacionDolarRepository;
    @Autowired
    RepuestoRepository repuestoRepository;

    public CotizacionDolar obtenerCotizacion() {
        return cotizacionDolarRepository.cotizacionDolar;
    }

    public List convertirAPesos(List listaConvertidaAPesos) {

        List<Repuesto> listaEnDolares = repuestoRepository.findAll();
        listaEnDolares.forEach(r -> {
            double setPrecioPesosIvaIncluido = r.getPrecio() * 1.21 * obtenerCotizacion().getVenta();
            r.setPrecio(setPrecioPesosIvaIncluido);
        });

        return listaConvertidaAPesos;
    }
}
