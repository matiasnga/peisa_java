package com.circles.peisa.controller;

import com.circles.peisa.domain.MedioDePago;
import com.circles.peisa.domain.ManoDeObra;
import com.circles.peisa.domain.Orden;
import com.circles.peisa.domain.Repuesto;
import com.circles.peisa.service.*;

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
    ManoDeObraService moService;
    @Autowired
    RepuestoService repuestoService;
    @Autowired
    MediodepagoService mediodepagoService;
    @Autowired
    CotizacionDolarService cotizacionDolarService;

    @RequestMapping("/order/new")
    public String crearNuevaOrden(Model model) {

        List<ManoDeObra> mo = moService.buscarTodos();
        model.addAttribute("mo", mo);

        List listaRepuestosAPesos = cotizacionDolarService.convertirAPesos(repuestoService.buscarTodos());
        model.addAttribute("repuestos", listaRepuestosAPesos);

        List<MedioDePago> mediosdepago = mediodepagoService.buscarTodos();
        model.addAttribute("mediosdepago", mediosdepago);

        model.addAttribute("orden", new Orden());
        return "formNuevaOrden";
    }

    @GetMapping("/order/edit/{id}")
    public String editarOrden(@PathVariable("id") int id, Model model) {
        model.addAttribute("repuestos", cotizacionDolarService.convertirAPesos(repuestoService.buscarTodos()));
        model.addAttribute("mediosdepago", mediodepagoService.buscarTodos());
        model.addAttribute("mo", moService.buscarTodos());
        Orden orden = ordenService.buscarOrdenById(id);
        model.addAttribute("orden", orden);
        return "formEditarOrden";
    }

    @PostMapping("/order/update/{id}")
    public String updateOrden(@PathVariable("id") int id, Orden orden) {
        ManoDeObra getMo = orden.getMo();
        if (orden.getRepuestos() != "") {
            int idBuscar = Integer.parseInt(orden.getRepuestos());
            Repuesto repuesto = repuestoService.buscarRepuestoPorId(idBuscar);
            double setPrecioPesosIvaIncluido = repuesto.getPrecio() * 1.21 * 2.5 ;
            orden.setRepuestos(repuesto.getDescripcion());
            double totalAPagar = getMo.getPrecio() + setPrecioPesosIvaIncluido;
            orden.setTotalapagar(totalAPagar);
        } else {
            orden.setRepuestos("No Utilizado");
            orden.setTotalapagar(getMo.getPrecio());

        }
        ordenService.guardarOrden(orden);

        return "redirect:/";
    }

    @RequestMapping("/order/save")
    public String guardarOrden(Orden orden) {
        ManoDeObra getMo = orden.getMo();
        if (orden.getRepuestos() != "") {
            int idBuscar = Integer.parseInt(orden.getRepuestos());
            Repuesto repuesto = repuestoService.buscarRepuestoPorId(idBuscar);
            double setPrecioPesosIvaIncluido = repuesto.getPrecio() * 1.21 * 127.5;
            orden.setRepuestos(repuesto.getDescripcion());
            double totalAPagar = getMo.getPrecio() + setPrecioPesosIvaIncluido;
            orden.setTotalapagar(totalAPagar);
        } else {
            orden.setRepuestos("No Utilizado");
            orden.setTotalapagar(getMo.getPrecio());

        }
        ordenService.guardarOrden(orden);

        return "redirect:/";
    }

    @RequestMapping("/order/delete/{id}")
    public String eliminarRepuesto(@PathVariable int id) {
        ordenService.borrarOrden(id);
        return "redirect:/";
    }
}
