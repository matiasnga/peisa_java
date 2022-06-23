package com.circles.peisa.controller;

import com.circles.peisa.domain.CotizacionDolar;
import com.circles.peisa.domain.ManoDeObra;
import com.circles.peisa.domain.Orden;
import com.circles.peisa.service.CotizacionDolarService;
import com.circles.peisa.service.ManoDeObraService;

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
    ManoDeObraService moService;
    @Autowired
    OrdenService ordenService;
    @Autowired
    CotizacionDolarService cotizacionDolarService;

    @RequestMapping("/")
    public String listadoOrdenes(Model model) {

        List<Orden> listaOrdenes = ordenService.buscarTodos();
        model.addAttribute("ordenes", listaOrdenes);

        List listaFavoritos = cotizacionDolarService.convertirAPesos(repuestoService.buscarFavoritos());
        model.addAttribute("favoritos", listaFavoritos);

        CotizacionDolar dolar = cotizacionDolarService.obtenerCotizacion();
        model.addAttribute("cotizacionDolar", dolar);
        return "listado";
    }

    @RequestMapping("/buscar")
    public String buscarPorParametro(@RequestParam("q") String consulta, Model model) {
        List listaBusquedaParametroAPesos = cotizacionDolarService.convertirAPesos(repuestoService.buscarPorParametro(consulta));
        model.addAttribute("repuestos", listaBusquedaParametroAPesos);

        double dolar = cotizacionDolarService.obtenerCotizacion().getVenta();
        model.addAttribute("cotizacionDolar", dolar);
        return "listado";
    }

    @RequestMapping("/listaDePrecios")
    public String listadoListaDePrecios(Model model) {
        List<ManoDeObra> listarMo = moService.buscarTodos();
        model.addAttribute("mo", listarMo);

        List listaRepuestosAPesos = cotizacionDolarService.convertirAPesos(repuestoService.buscarTodos());
        model.addAttribute("repuestos", listaRepuestosAPesos);

        CotizacionDolar dolar = cotizacionDolarService.obtenerCotizacion();
        model.addAttribute("cotizacionDolar", dolar);
        return "listado";
    }

}
