package com.circles.peisa.domain;

import lombok.Data;

@Data
public class CotizacionDolar {
    private double compra;
    private double venta;
    private String fecha;

    public CotizacionDolar(double compra, double venta, String fecha) {
        this.compra = compra;
        this.venta = venta;
        this.fecha = fecha;
    }
}
