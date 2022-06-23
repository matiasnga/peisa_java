package com.circles.peisa.domain;
import lombok.*;
import javax.persistence.*;
@Getter
@Data
@Entity
@Table(name = "repuestos")
public class Repuesto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private int codigo;
    private String descripcion;
    private double precio;
    private boolean destacado;


}
