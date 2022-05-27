package com.circles.peisa.controller;

import com.circles.peisa.domain.Repuesto;
import com.circles.peisa.service.RepuestoService;
import java.util.List;

import com.circles.peisa.service.MoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class abmRepuestoController {

    @Autowired
    RepuestoService repuestoService;
    @Autowired
    MoService moService;

    @RequestMapping("/repuesto/new")
    public String mostrarFormularioAltaRepuesto(Model model) {
        Repuesto repuesto = new Repuesto();
        repuesto.setDestacado(true);
        model.addAttribute("repuesto", repuesto);
        return "formAltaRepuesto";
    }

    @RequestMapping("/repuesto/save")
    public String guardarRepuesto(Repuesto repuesto, Model model) {
        repuestoService.guardarRepuesto(repuesto);
        model.addAttribute("repuestos", repuesto);
        return "redirect:/order/new";
    }

    @GetMapping("/repuesto/edit/{id}")
    public String mostrarFormularioEditar(@PathVariable("id") int id, Model model) {
        Repuesto repuesto = repuestoService.buscarRepuestoPorId(id);
        model.addAttribute("repuesto", repuesto);
        return "formEditarRepuesto";
    }

    @PostMapping("/repuesto/update/{id}")
    public String guardarRepuesto(@PathVariable("id") int id, Repuesto repuesto, BindingResult result, Model model) {
        repuestoService.guardarRepuesto(repuesto);
        return "redirect:/";
    }

    @GetMapping("/repuesto/addFav/{id}")
    public String addFavorito(@PathVariable("id") int id, Model model) {
        Repuesto repuestoAddFav = repuestoService.buscarRepuestoPorId(id);
        repuestoService.addFavorito(repuestoAddFav);
        List<Repuesto> listaFavoritos = repuestoService.buscarTodos();
        model.addAttribute("repuestos", listaFavoritos);
        return "redirect:/";
    }

    @RequestMapping("/repuesto/delete/{id}")
    public String eliminarRepuesto(@PathVariable int id) {
        repuestoService.eliminarRepuesto(id);
        return "redirect:/listaDePrecios";
    }

    
}
