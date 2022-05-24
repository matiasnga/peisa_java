package com.circles.peisa.controller;

import com.circles.peisa.domain.Repuesto;
import com.circles.peisa.service.RepuestoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RepuestoController {

    @Autowired
    RepuestoService repuestoService;

    @RequestMapping("/")

    public String listarInicio(Model model) {

        return "index";
    }

    @RequestMapping("/favoritos")
    public String listadoFavoritos(Model model) {
        List<Repuesto> listaFavoritos = repuestoService.BuscarDestacados();
        model.addAttribute("repuestos", listaFavoritos);
        return "favoritos.html";
    }

    @RequestMapping("/buscar")
    public String buscarPorParametro(@RequestParam("q") String consulta, Model model) {
        List<Repuesto> listaRepuestosPorParametro = repuestoService.BuscarPorParametro(consulta);

//        for (Repuesto r : listaRepuestosPorParametro) {
//            double cotizacionDolar = 120;
//            double setPrecioPesosIvaIncluido = r.getPrecio() * 1.21 * cotizacionDolar;
//            r.setPrecio(setPrecioPesosIvaIncluido);
//        }
        model.addAttribute("repuestos", listaRepuestosPorParametro);
        return "listadoRepuestos.html";
    }

    @RequestMapping("/listaDePrecios")
    public String listadoListaDePrecios(Model model) {
        List<Repuesto> listaRepuestos = repuestoService.BuscarTodos();
        model.addAttribute(listaRepuestos);
        return "listadoRepuestos.html";
    }

}
