package com.circles.peisa.domain;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Data
@Entity
public class Orden {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String repuestos;
    private String factura;
    private double totalapagar;
    private boolean finalizada;
    @ManyToOne
    private ManoDeObra mo;
    @ManyToOne
    private MedioDePago mediodepago;

}
