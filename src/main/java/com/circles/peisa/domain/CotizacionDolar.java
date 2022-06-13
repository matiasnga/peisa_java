package com.circles.peisa.domain;

public class CotizacionDolar {
    private double compra;
    private double venta;
    private String fecha;

    public CotizacionDolar(double compra, double venta, String fecha) {
        this.compra = compra;
        this.venta = venta;
        this.fecha = fecha;
    }

    public double getCompra() {
        return compra;
    }

    public void setCompra(double compra) {
        this.compra = compra;
    }

    public double getVenta() {
        return venta;
    }

    public void setVenta(double venta) {
        this.venta = venta;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
}
