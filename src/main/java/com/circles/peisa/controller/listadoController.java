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
    public String listadoOrdenes(Model model) {
       
        List<Orden> listaOrdenes = ordenService.buscarTodos();
        model.addAttribute("ordenes", listaOrdenes);
        double dolar = repuestoService.getCotizacionDolar();
        List<Repuesto> listaFavoritos = repuestoService.buscarFavoritos();
        listaFavoritos = repuestoService.convertirAPesos(listaFavoritos);
                     
        model.addAttribute("favoritos", listaFavoritos);
        model.addAttribute("cotizacionDolar", dolar);
        return "listado";
    }

    @RequestMapping("/buscar")
    public String buscarPorParametro(@RequestParam("q") String consulta, Model model) {
        List<Repuesto> listaBusquedaParametroAPesos = repuestoService.buscarPorParametro(consulta);
        listaBusquedaParametroAPesos = repuestoService.convertirAPesos(listaBusquedaParametroAPesos);
        model.addAttribute("repuestos", listaBusquedaParametroAPesos);
        double dolar = repuestoService.getCotizacionDolar();

        model.addAttribute("cotizacionDolar", dolar);
        return "listado";
    }

    @RequestMapping("/listaDePrecios")
    public String listadoListaDePrecios(Model model) {
        List<Mo> listarMo = moService.buscarTodos();
        model.addAttribute("mo", listarMo);
        List<Repuesto> listaRepuestosAPesos = repuestoService.buscarTodos();
        listaRepuestosAPesos = repuestoService.convertirAPesos(listaRepuestosAPesos);
        double dolar = repuestoService.getCotizacionDolar();
        model.addAttribute("cotizacionDolar", dolar);
        model.addAttribute("repuestos", listaRepuestosAPesos);
        return "listado";
    }
}

//        for (Repuesto r : listaRepuestosPorParametro) {
//            double cotizacionDolar = 120;
//            double setPrecioPesosIvaIncluido = r.getPrecio() * 1.21 * cotizacionDolar;
//            r.setPrecio(setPrecioPesosIvaIncluido);
//        }
