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
    private double cotizacionDolar = 124.25;

    public double getCotizacionDolar() {
        return cotizacionDolar;
    }

    public void setCotizacionDolar(double cotizacionDolar) {
        this.cotizacionDolar = cotizacionDolar;
    }

    public List<Repuesto> convertirAPesos(List listaConvertidaAPesos) {

        List<Repuesto> listaEnDolares = repuestoRepository.findAll();
        for (Repuesto r : listaEnDolares) {
            double setPrecioPesosIvaIncluido = r.getPrecio() * 1.21 * cotizacionDolar;
            r.setPrecio(setPrecioPesosIvaIncluido);
        }
        return listaConvertidaAPesos;
    }

    public List<Repuesto> buscarTodos() {
        return repuestoRepository.findAllOrderByFav();
    }

    public List<Repuesto> buscarFavoritos() {
        return repuestoRepository.buscarFavoritos();
    }

    public List<Repuesto> buscarPorParametro(String consulta) {
        return repuestoRepository.buscarPorDescripcion(consulta.toUpperCase());
    }

    public Repuesto guardarRepuesto(Repuesto repuesto) {
        return repuestoRepository.save(repuesto);
    }

    public Repuesto addFavorito(Repuesto repuesto) {
        if (!repuesto.getDestacado()) {
            repuesto.setDestacado(true);
        } else {
            repuesto.setDestacado(false);
        }

        return repuestoRepository.save(repuesto);
    }

    public Repuesto buscarRepuestoPorId(int id) {

        return repuestoRepository.findById(id);
    }

    public void eliminarRepuesto(int id) {
        repuestoRepository.deleteById(id);
    }

}
