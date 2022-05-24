package com.circles.peisa.controller;

import com.circles.peisa.domain.Mo;
import com.circles.peisa.service.MoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MoController {

    @Autowired
    MoService moService;

    @RequestMapping("/listadoManoDeObra")

    public String Mo(Model model) {
        List<Mo> listarManoDeObra = moService.listarManoDeObra();
        model.addAttribute("mo", listarManoDeObra);
        return "listadoMo";
    }

}
