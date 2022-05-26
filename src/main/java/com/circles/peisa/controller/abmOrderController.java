package com.circles.peisa.controller;

import com.circles.peisa.domain.Mediodepago;
import com.circles.peisa.domain.Mo;
import com.circles.peisa.domain.Orden;
import com.circles.peisa.domain.Repuesto;
import com.circles.peisa.service.MediodepagoService;
import com.circles.peisa.service.MoService;
import com.circles.peisa.service.OrdenService;
import com.circles.peisa.service.RepuestoService;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class abmOrderController {

    @Autowired
    OrdenService ordenService;
    @Autowired
    MoService moService;
    @Autowired
    RepuestoService repuestoService;
@Autowired
MediodepagoService mediodepagoService;
    @RequestMapping("/order/new")
    public String crearNuevaOrden(Model model) {
        List<Mo> mo = moService.buscarTodos();
        model.addAttribute("mo", mo);
        List<Repuesto> repuestos = repuestoService.buscarTodos();
        model.addAttribute("repuestos", repuestos);
        
        List<Mediodepago> mediosdepago = mediodepagoService.buscarTodos();
        model.addAttribute("mediosdepago", mediosdepago);
        
        model.addAttribute("orden", new Orden());
        return "formNuevaOrden";
    }

    @GetMapping("/order/edit/{id}")
    public String editarOrden(@PathVariable("id") int id, Model model) {
        Orden orden = ordenService.buscarOrdenById(id);
        model.addAttribute("orden", orden);
        return "formEditarOrden";
    }

    @PostMapping("/order/update/{id}")
    public String updateOrden(@PathVariable("id") int id, Orden orden) {
        ordenService.guardarOrden(orden);
        return "redirect:/";
    }

    @RequestMapping("/order/save")
    public String guardarOrden(Orden orden, Model model) {
        ordenService.guardarOrden(orden);
        model.addAttribute("ordenes", orden);
        return "redirect:/";
    }

    @RequestMapping("/order/delete/{id}")
    public String eliminarRepuesto(@PathVariable int id) {
        ordenService.borrarOrden(id);
        return "redirect:/";
    }
}