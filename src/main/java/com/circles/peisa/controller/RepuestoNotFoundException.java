package com.circles.peisa.controller;

class RepuestoNotFoundException extends RuntimeException {

    RepuestoNotFoundException(Long id) {
        super("Could not find employee " + id);
    }
}