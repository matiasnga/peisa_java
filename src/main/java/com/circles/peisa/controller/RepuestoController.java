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
    public String listarDestadcados(Model model) {
        List<Repuesto> listaRepuestosDestacados = repuestoService.BuscarDestacados();
        model.addAttribute("repuestos", listaRepuestosDestacados);
        return "index.html";
    }

    @RequestMapping("/buscar")
    public String buscarPorParametro(@RequestParam("q") String consulta, Model model) {
        List<Repuesto> listaRepuestosPorParametro = repuestoService.BuscarPorParametro(consulta);
        model.addAttribute("repuestos", listaRepuestosPorParametro);
        return "listado.html";
    }

}
