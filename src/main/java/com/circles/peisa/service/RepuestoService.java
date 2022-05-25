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

    public List<Repuesto> buscarTodos() {

        List<Repuesto> repuestosPrecioEnPesos = repuestoRepository.findAll();
        for (Repuesto r : repuestosPrecioEnPesos) {
            double cotizacionDolar = 120;
            double setPrecioPesosIvaIncluido = r.getPrecio() * 1.21 * cotizacionDolar;
            r.setPrecio(setPrecioPesosIvaIncluido);
        }
        return repuestosPrecioEnPesos;
    }

    public List<Repuesto> buscarFavoritos() {
          List<Repuesto> repuestosPrecioEnPesos = repuestoRepository.buscarFavoritos();
        for (Repuesto r : repuestosPrecioEnPesos) {
            double cotizacionDolar = 120;
            double setPrecioPesosIvaIncluido = r.getPrecio() * 1.21 * cotizacionDolar;
            r.setPrecio(setPrecioPesosIvaIncluido);
        }
        return repuestosPrecioEnPesos;
    }

    public List<Repuesto> BuscarPorParametro(String consulta) {
          List<Repuesto> repuestosPrecioEnPesos = repuestoRepository.buscarPorDescripcion(consulta.toUpperCase());
        for (Repuesto r : repuestosPrecioEnPesos) {
            double cotizacionDolar = 120;
            double setPrecioPesosIvaIncluido = r.getPrecio() * 1.21 * cotizacionDolar;
            r.setPrecio(setPrecioPesosIvaIncluido);
        }
        return repuestosPrecioEnPesos;
    }

    public Repuesto guardarRepuesto(Repuesto repuesto) {
        return repuestoRepository.save(repuesto);
    }

    public Repuesto buscarRepuestoPorId(int id) {

        return repuestoRepository.findById(id);
    }

    public void eliminarRepuesto(int id) {
        repuestoRepository.deleteById(id);
    }

    public Repuesto addFavorito(Repuesto repuesto) {
        if (!repuesto.getDestacado()) {
            repuesto.setDestacado(true);
        } else {
            repuesto.setDestacado(false);

        }

        return repuestoRepository.save(repuesto);
    }
}
