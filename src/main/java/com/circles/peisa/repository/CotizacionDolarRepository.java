package com.circles.peisa.repository;

import com.circles.peisa.domain.CotizacionDolar;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class CotizacionDolarRepository {

    RestTemplate restTemplate = new RestTemplate();
    String fooResourceUrl = "https://api-dolar-argentina.herokuapp.com";
    ResponseEntity<String> response = restTemplate.getForEntity(fooResourceUrl + "/api/nacion", String.class);
    ObjectMapper mapper = new ObjectMapper();
    JsonNode root;

    {
        try {
            root = mapper.readTree(response.getBody());
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }

    String fecha = root.get("fecha").textValue();
    double compra = Double.parseDouble(root.get("compra").textValue());
    String ventaString = root.get("venta").textValue();
    double venta = Double.parseDouble(ventaString);

    public CotizacionDolar cotizacionDolar = new CotizacionDolar(compra, venta, fecha);

}

