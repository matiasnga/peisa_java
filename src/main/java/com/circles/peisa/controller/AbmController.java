package com.circles.peisa.controller;

import com.circles.peisa.domain.Repuesto;
import com.circles.peisa.service.RepuestoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AbmController {

    @Autowired
    RepuestoService repuestoService;

    @RequestMapping("/formularioAltaRepuesto")
    public String mostrarFormularioAltaRepuesto(Model model) {
        model.addAttribute("repuesto", new Repuesto());
        return "formAltaRepuesto";
    }

    @RequestMapping("/guardarRepuesto")
    public String guardarRepuesto(Repuesto repuesto, Model model) {
        double setPrecioUnitario = repuesto.getPrecioDeVenta() / repuesto.getPk();
        repuesto.setPrecioUnitario(setPrecioUnitario);
        repuestoService.guardarRepuesto(repuesto);
        model.addAttribute("repuestos", repuesto);
        return "index";
    }

    @GetMapping("/editar/{id}")
    public String mostrarFormularioEditar(@PathVariable("id") int id, Model model) {
        Repuesto repuesto = repuestoService.buscarRepuestoPorId(id);
        model.addAttribute("repuesto", repuesto);
        return "formEditarRepuesto";
    }

    @PostMapping("/actualizarRepuesto/{id}")
    public String guardarRepuesto(@PathVariable("id") int id, Repuesto repuesto, BindingResult result, Model model) {
         double setPrecioUnitario = repuesto.getPrecioDeVenta() / repuesto.getPk();
        repuesto.setPrecioUnitario(setPrecioUnitario);
        repuestoService.guardarRepuesto(repuesto);
        repuestoService.guardarRepuesto(repuesto);
        return "redirect:/";
    }
    
    @RequestMapping("/eliminarRepuesto/{id}")
    public String eliminarRepuesto(@PathVariable int id) {
        repuestoService.eliminarRepuesto(id);
        return "redirect:/";
    }
    

}
