
CREATE TABLE orden(
id INT IDENTITY PRIMARY KEY,
mo_id INT,
repuestos VARCHAR(200),
factura VARCHAR(200),
totalapagar DOUBLE,
mediodepago_id INT,
finalizada BOOLEAN
);


INSERT INTO orden(id, mo_id, repuestos, factura, totalapagar, mediodepago_id, finalizada)
VALUES
(1, 2, 'DB EN MEMORIA', 'A-001', 150.20, 1, false);


CREATE TABLE mo(
id INT IDENTITY PRIMARY KEY,
codigo VARCHAR(200),
descripcion VARCHAR(200),
precio INT
);


INSERT INTO mo(id, codigo, descripcion, precio)
VALUES
(1, 'VTEC', 'Visita Técnica: Diagnóstico y Presupuesto', 3700),
(2, 'REP', 'Servicio de Reparación', 8000),
(3, 'MANT', 'Servicio de Mantenimiento', 11500),
(4, 'DESM', 'Desmontaje y Montaje', 14800),
(5, 'MCD', 'Mantenimiento Con Desmontaje', 18000);


ALTER TABLE orden
ADD FOREIGN KEY (mo_id) references mo(id); 
UPDATE orden SET mo_id = 3 where ID in (1);



CREATE TABLE mediosdepago(
id INT IDENTITY PRIMARY KEY,
descripcion VARCHAR(200)
);

INSERT INTO mediosdepago(id, descripcion)
VALUES
(1, 'Efectivo'),
(2, 'Transferencia'),
(3, 'Codigo QR');



ALTER TABLE orden
ADD FOREIGN KEY (mediodepago_id) references mediosdepago(id); 
UPDATE orden SET mediodepago_id = 3 where id in (1);


CREATE TABLE repuestos(
id INT IDENTITY PRIMARY KEY,
codigo INT,
descripcion VARCHAR(100),
pk INT,
precio_de_venta DOUBLE,
precio DOUBLE,
destacado BOOLEAN
);

/* INSERT QUERY NO: 1 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
1, 90000300, 'ABRAZ. COLECT. SOLAR PISCINA-RED.-PK X 2 ', 2, 45.78, 22.89, 0
);

/* INSERT QUERY NO: 2 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
2, 90000048, 'ABRAZADERA TUBO COAXIAL D100 DIVA ', 1, 11.58, 11.58, 0
);

/* INSERT QUERY NO: 3 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
3, 90000301, 'ADAPTAD. COLECT. SOLAR PISC.-RED.-PK X 2 ', 2, 45.78, 22.89, 0
);

ALTER TABLE repuestos
DROP COLUMN pk;

ALTER TABLE repuestos
DROP COLUMN precio_de_venta;
id INT PRIMARY KEY auto_increment,
