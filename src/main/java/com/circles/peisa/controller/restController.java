package com.circles.peisa.controller;

import com.circles.peisa.domain.Repuesto;
import com.circles.peisa.repository.RepuestoRepository;
import com.circles.peisa.service.RepuestoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
public class restController {
    @Autowired
    RepuestoService repuestoService;
    RepuestoRepository repuestoRepository;

    @GetMapping("/api/repuestos")
    ResponseEntity<List<Repuesto>> all() {
        try {
            List<Repuesto> repuesto = repuestoService.buscarTodos();
            return new ResponseEntity<>(repuesto, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/api/repuestos/{id}")
    public ResponseEntity<Repuesto> getRepuestoById(@PathVariable("id") int id) {
        Repuesto repuesto = repuestoService.buscarRepuestoPorId(id);
        Optional<Repuesto> repuestoData = Optional.ofNullable(repuesto);
        return repuestoData
                .map(r -> new ResponseEntity<>(repuesto, HttpStatus.OK))
                .orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }
}
