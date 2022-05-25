package com.circles.peisa.controller;

import com.circles.peisa.domain.Mo;
import com.circles.peisa.domain.Orden;
import com.circles.peisa.service.MoService;

import com.circles.peisa.domain.Repuesto;
import com.circles.peisa.service.OrdenService;
import com.circles.peisa.service.RepuestoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class listadoController {

    @Autowired
    RepuestoService repuestoService;
    @Autowired
    MoService moService;
    @Autowired
    OrdenService ordenService;

    @RequestMapping("/")
    public String listadoFavoritos(Model model) {
        List<Repuesto> listaFavoritos = repuestoService.buscarFavoritos();

        model.addAttribute("repuestos", listaFavoritos);

        List<Orden> listaOrdenes = ordenService.buscarTodos();
        model.addAttribute("ordenes", listaOrdenes);
        return "listado";
    }

    @RequestMapping("/buscar")
    public String buscarPorParametro(@RequestParam("q") String consulta, Model model) {
        List<Repuesto> listaRepuestosPorParametro = repuestoService.BuscarPorParametro(consulta);
        model.addAttribute("repuestos", listaRepuestosPorParametro);
        return "listado";
    }

    @RequestMapping("/listaDePrecios")
    public String listadoListaDePrecios(Model model) {
        List<Mo> listarMo = moService.buscarTodos();
        model.addAttribute("mo", listarMo);
        List<Repuesto> listaRepuestos = repuestoService.buscarTodos();
        model.addAttribute("repuestos", listaRepuestos);
        return "listado";
    }
}

//        for (Repuesto r : listaRepuestosPorParametro) {
//            double cotizacionDolar = 120;
//            double setPrecioPesosIvaIncluido = r.getPrecio() * 1.21 * cotizacionDolar;
//            r.setPrecio(setPrecioPesosIvaIncluido);
//        }
