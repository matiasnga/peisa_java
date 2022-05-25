package com.circles.peisa.controller;

import com.circles.peisa.domain.Repuesto;
import com.circles.peisa.service.RepuestoService;
import java.util.List;

import com.circles.peisa.domain.Mo;
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

    @RequestMapping("/repuesto/new")
    public String mostrarFormularioAltaRepuesto(Model model) {
        model.addAttribute("repuesto", new Repuesto());
        return "formAltaRepuesto";
    }

    @RequestMapping("/repuesto/save")
    public String guardarRepuesto(Repuesto repuesto, Model model) {
        repuestoService.guardarRepuesto(repuesto);
        model.addAttribute("repuestos", repuesto);
        return "redirect:/";
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
        List<Repuesto> listaFavoritos = repuestoService.buscarDestacados();
        model.addAttribute("repuestos", listaFavoritos);
        return "redirect:/";
    }

    @RequestMapping("/repuesto/delete/{id}")
    public String eliminarRepuesto(@PathVariable int id) {
        repuestoService.eliminarRepuesto(id);
        return "redirect:/";
    }

    @RequestMapping("/order/new")
    public String crearNuevaOrden(Model model) {
        List<Repuesto> repuestos = repuestoService.buscarTodos();
        model.addAttribute("repuestos", repuestos);
        return "formNuevaOrden";
    }
}
