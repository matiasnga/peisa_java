package com.circles.peisa.controller;

import com.circles.peisa.domain.Repuesto;
import com.circles.peisa.service.RepuestoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RepuestoController {

    @Autowired
    RepuestoService repuestoService;

    @RequestMapping("/")
    public String listarDiscos(Model model) {
        List<Repuesto> todosLosRepuestos = repuestoService.BuscarTodos();
        model.addAttribute("repuestos", todosLosRepuestos);
        return "listado";
    }

}
