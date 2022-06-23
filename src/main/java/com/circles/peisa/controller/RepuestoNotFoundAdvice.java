package com.circles.peisa.controller;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
class RepuestoNotFoundAdvice {
    @ResponseBody
    @ExceptionHandler(RepuestoNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    String repuestoNotFoundHandler(RepuestoNotFoundException ex) {
        return ex.getMessage();
    }
}