package com.circles.peisa.domain;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "mo")
public class ManoDeObra {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer Id;
    private String codigo;
    private String descripcion;
    private Double precio;

}
