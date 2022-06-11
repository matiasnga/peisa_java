package com.circles.peisa.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

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
    private Mo mo;
    @ManyToOne
    private Mediodepago mediodepago;
    

    public Mediodepago getMediodepago() {
        return mediodepago;
    }

    public void setMediodepago(Mediodepago mediodepago) {
        this.mediodepago = mediodepago;
    }
    
    

  

    public double getTotalapagar() {
        return totalapagar;
    }

    public void setTotalapagar(double totalapagar) {
        this.totalapagar = totalapagar;
    }

    public boolean isFinalizada() {
        return finalizada;
    }

    public void setFinalizada(boolean finalizada) {
        this.finalizada = finalizada;
    }

    public Double totalapagar() {
        return totalapagar;
    }

    public void totalapagar(Double totalapagar) {
        this.totalapagar = totalapagar;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Mo getMo() {
        return mo;
    }

    public void setMo(Mo mo) {
        this.mo = mo;
    }

    public String getRepuestos() {
        return repuestos;
    }

    public void setRepuestos(String repuestos) {
        this.repuestos = repuestos;
    }

    public String getFactura() {
        return factura;
    }

    public void setFactura(String factura) {
        this.factura = factura;
    }

}
