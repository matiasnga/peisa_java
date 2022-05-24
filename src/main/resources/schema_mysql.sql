/* Showing results for Lista Precio.xlsx */
DROP TABLE IF EXISTS repuestos;
DROP TABLE IF EXISTS mo;
DROP TABLE IF EXISTS shooping_cart;
DROP TABLE IF EXISTS orders;

CREATE TABLE mo(
id INT PRIMARY KEY auto_increment,
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


CREATE TABLE shopping_cart(
id INT PRIMARY KEY auto_increment,
created_at DATE,
items VARCHAR(200),
price DOUBLE,
quantity INT
);


/* CREATE TABLE */
CREATE TABLE repuestos(
id INT PRIMARY KEY auto_increment,
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

/* INSERT QUERY NO: 4 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
4, 90000590, 'ADAPTADOR COL. SOLAR PISCINA RTG-PK X 2 ', 2, 54.29, 27.14, 0
);

/* INSERT QUERY NO: 5 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
5, 90000256, 'AISLANTE FRENTE INTERC. DIVA CONDENSAC. ', 1, 69.99, 69.99, 0
);

/* INSERT QUERY NO: 6 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
6, 90000332, 'ANODO DE MAGNESIO L= 0.60 m ', 1, 13.93, 13.93, 0
);

/* INSERT QUERY NO: 7 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
7, 90000602, 'ANODO DE MAGNESIO TERMOTANQUE TE ', 1, 5.08, 5.08, 0
);

/* INSERT QUERY NO: 8 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
8, 90000644, 'ANODO MAG P/ TQ ACUM 32X400 1""1/4 PEISA ', 1, 112.20, 112.20, 0
);

/* INSERT QUERY NO: 9 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
9, 90000645, 'ANODO MAG P/ TQ ACUM 32X700 1""1/4 PEISA ', 1, 134.20, 134.20, 0
);

/* INSERT QUERY NO: 10 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
10, 90000253, 'ANODO MAGNESIO TERMOTANQUE ELECTRICO ', 1, 59.51, 59.51, 0
);

/* INSERT QUERY NO: 11 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
11, 90000458, 'BICONO 1 1/2 P/ CUERPO XP PK X 2 ', 2, 11.55, 5.78, 0
);

/* INSERT QUERY NO: 12 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
12, 90000134, 'BOBINA VALVULA NOVA 820 220V/50HZ ', 1, 101.71, 101.71, 0
);

/* INSERT QUERY NO: 13 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
13, 90000111, 'BOBINA VALVULA SIGMA 220V/50HZ ', 1, 83.86, 83.86, 0
);

/* INSERT QUERY NO: 14 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
14, 90000141, 'BOBINA VALVULA SIGMA 220V/60HZ ', 1, 111.58, 111.58, 0
);

/* INSERT QUERY NO: 15 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
15, 90000408, 'BOMBA CIRCUL GRUNDFOS UPS 32-80 N MOCAS ', 1, 924.00, 924.00, 0
);

/* INSERT QUERY NO: 16 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
16, 90000494, 'BOMBA CIRCUL. GRUNDFOS 25-50 130 ', 1, 417.09, 417.09, 0
);

/* INSERT QUERY NO: 17 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
17, 90000049, 'BOMBA CIRCUL. GRUNDFOS CACAO P15-60 ', 1, 148.50, 148.50, 0
);

/* INSERT QUERY NO: 18 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
18, 90000051, 'BOMBA CIRCUL. GRUNDFOS UPS 25-80 ', 1, 475.20, 475.20, 0
);

/* INSERT QUERY NO: 19 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
19, 90000050, 'BOMBA CIRCUL. PEISA CESAO P15-60 ', 1, 221.21, 221.21, 0
);

/* INSERT QUERY NO: 20 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
20, 90000417, 'BOMBA CIRCULADORA CALDERA ELECTRICA ', 1, 489.21, 489.21, 0
);

/* INSERT QUERY NO: 21 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
21, 90000633, 'BOMBA CIRCULADORA PEISA AOKR P15-60 ', 1, 203.28, 203.28, 0
);

/* INSERT QUERY NO: 22 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
22, 90000626, 'BOMBA CIRCULADORA UTI ', 1, 635.25, 635.25, 0
);

/* INSERT QUERY NO: 23 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
23, 90000257, 'BOMBA VELOC. FIJA DIVA CONDENSAC. 24 KW ', 1, 382.47, 382.47, 0
);

/* INSERT QUERY NO: 24 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
24, 90000277, 'BOMBA VELOC. VARIABLE DIVA CONDENS. 24KW ', 1, 764.30, 764.30, 0
);

/* INSERT QUERY NO: 25 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
25, 90000276, 'BOMBA VELOC. VARIABLE DIVA CONDENS. 35KW ', 1, 776.49, 776.49, 0
);

/* INSERT QUERY NO: 26 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
26, 90000640, 'BOMBA VELOCIDAD VARIABLE CALDERA ELECT ', 1, 862.79, 862.79, 0
);

/* INSERT QUERY NO: 27 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
27, 90000328, 'BUJIA P/ PILOTO ', 1, 6.14, 6.14, 0
);

/* INSERT QUERY NO: 28 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
28, 90000336, 'BURLETE DE GOMA AUTOADHESIVO 500x10x3 ', 4, 8.38, 2.10, 0
);

/* INSERT QUERY NO: 29 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
29, 90000314, 'CABEZ ENTR-SALIDA AGUA T40/80 PLAST (MEC ', 1, 75.20, 75.20, 0
);

/* INSERT QUERY NO: 30 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
30, 90000559, 'CABLE ELECTRODO ENCENDIDO ALKON 140 ', 1, 50.13, 50.13, 0
);

/* INSERT QUERY NO: 31 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
31, 90000557, 'CABLE ELECTRODO ENCENDIDO ALKON 70 ', 1, 94.59, 94.59, 0
);

/* INSERT QUERY NO: 32 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
32, 90000558, 'CABLE ELECTRODO IONIZACION ALKON 140 ', 1, 41.77, 41.77, 0
);

/* INSERT QUERY NO: 33 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
33, 90000352, 'CABLE ENTRADA DE TENSION TAB ', 1, 20.08, 20.08, 0
);

/* INSERT QUERY NO: 34 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
34, 90000316, 'CABLE P/ PIEZOELECTRICO L=250 mm ', 1, 4.18, 4.18, 0
);

/* INSERT QUERY NO: 35 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
35, 90000556, 'CABLEADO ALKON 70 ', 1, 94.59, 94.59, 0
);

/* INSERT QUERY NO: 36 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
36, 90000455, 'CABLEADO T80 ', 1, 56.80, 56.80, 0
);

/* INSERT QUERY NO: 37 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
37, 90000117, 'CABLEADO TX 40 ', 1, 43.35, 43.35, 0
);

/* INSERT QUERY NO: 38 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
38, 90000118, 'CABLEADO TX 70 ', 1, 47.86, 47.86, 0
);

/* INSERT QUERY NO: 39 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
39, 90000478, 'CAÑO CORRUGADO INOX 1/2 L=525 mm ', 1, 15.98, 15.98, 0
);

/* INSERT QUERY NO: 40 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
40, 90000485, 'CAÑO CORRUGADO INOX 1/2 L=640 mm ', 1, 23.98, 23.98, 0
);

/* INSERT QUERY NO: 41 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
41, 90000490, 'CAÑO CORRUGADO INOX 3/4 L=275 mm ', 1, 21.69, 21.69, 0
);

/* INSERT QUERY NO: 42 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
42, 90000482, 'CAÑO CORRUGADO INOX 3/4 L=340 mm ', 1, 22.51, 22.51, 0
);

/* INSERT QUERY NO: 43 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
43, 90000496, 'CAÑO CORRUGADO INOX 3/4 L=660 mm ', 1, 23.98, 23.98, 0
);

/* INSERT QUERY NO: 44 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
44, 90000487, 'CAÑO CORRUGADO INOX 3/4 L=755 mm ', 1, 24.93, 24.93, 0
);

/* INSERT QUERY NO: 45 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
45, 90000635, 'CAÑO FLEXIBLE VASO EXPANSIÓN - (DIVA Tecno) ', 1, 10.40, 10.40, 0
);

/* INSERT QUERY NO: 46 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
46, 90000120, 'CAÑO MANDADA TX40 TRV ', 1, 118.34, 118.34, 0
);

/* INSERT QUERY NO: 47 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
47, 90000393, 'CAÑO RETORNO TX40 C/ CAÑO PRES. ANT. ', 1, 159.50, 159.50, 0
);

/* INSERT QUERY NO: 48 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
48, 90000119, 'CAÑO RETORNO TX40 TRV ', 1, 130.25, 130.25, 0
);

/* INSERT QUERY NO: 49 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
49, 90000321, 'CAPUCHON AISLANTE P/ PRESOSTATO AGUA ', 1, 6.55, 6.55, 0
);

/* INSERT QUERY NO: 50 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
50, 90000254, 'CARCAZA TERMOTANQUE ELECTRICO ', 1, 13.54, 13.54, 0
);

/* INSERT QUERY NO: 51 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
51, 90000620, 'CAUDALÍMETRO 3/4 M-M UTI ', 1, 519.75, 519.75, 0
);

/* INSERT QUERY NO: 52 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
52, 90000232, 'CLIP HEMBRA - PK X 20 ', 20, 4.62, 0.23, 0
);

/* INSERT QUERY NO: 53 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
53, 90000106, 'CLIP MACHO - PK X 20 ', 20, 29.34, 1.47, 0
);

/* INSERT QUERY NO: 54 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
54, 90000258, 'COLECTOR MANDADA DIVA CONDENSACION ', 1, 194.24, 194.24, 0
);

/* INSERT QUERY NO: 55 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
55, 90000398, 'COLECTOR QUEMADOR 12 r. - Ø0.80 ', 1, 35.59, 35.59, 0
);

/* INSERT QUERY NO: 56 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
56, 90000259, 'COLECTOR RETORNO DIVA CONDENSACION ', 1, 133.54, 133.54, 0
);

/* INSERT QUERY NO: 57 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
57, 90000469, 'CONECTOR 3 VIAS BOMBA GRUNDFOS 25/80 ', 1, 23.33, 23.33, 0
);

/* INSERT QUERY NO: 58 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
58, 90000330, 'CONECTOR DE MANDADA DIVA ø1/8 ', 1, 19.46, 19.46, 0
);

/* INSERT QUERY NO: 59 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
59, 90000327, 'CONECTOR PRESOSTATO-MANOMETRO ', 1, 10.59, 10.59, 0
);

/* INSERT QUERY NO: 60 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
60, 90000448, 'CONEX. PRESOSTATO T80 C/ ENTRERROSCA ', 1, 46.33, 46.33, 0
);

/* INSERT QUERY NO: 61 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
61, 90000260, 'CONEXION BOMBA DIVA CONDENSACION 24 KW ', 1, 54.48, 54.48, 0
);

/* INSERT QUERY NO: 62 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
62, 90000624, 'CONJ. CAÑO CONEX. BY PASS UTI ', 1, 41.58, 41.58, 0
);

/* INSERT QUERY NO: 63 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
63, 90000623, 'CONJ. CAÑO CONEX. VALV. MEZC. UTI', 1, 41.58, 41.58, 0
);

/* INSERT QUERY NO: 64 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
64, 90000621, 'CONJ. CAÑO ENTRADA PRIMARIO UTI', 1, 41.58, 41.58, 0
);

/* INSERT QUERY NO: 65 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
65, 90000315, 'CONJ. CAÑO MANDADA TX 70', 1, 218.10, 218.10, 0
);

/* INSERT QUERY NO: 66 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
66, 90000625, 'CONJ. CAÑO MANDADA UTI', 1, 41.58, 41.58, 0
);

/* INSERT QUERY NO: 67 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
67, 90000389, 'CONJ. CAÑO RETORNO TX70', 1, 242.78, 242.78, 0
);

/* INSERT QUERY NO: 68 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
68, 90000622, 'CONJ. CAÑO SALIDA PRIMARIO UTI', 1, 41.58, 41.58, 0
);

/* INSERT QUERY NO: 69 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
69, 90000228, 'CONJ. CLIPS D14 INTERCAMBIADOR DIVA', 1, 4.66, 4.66, 0
);

/* INSERT QUERY NO: 70 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
70, 90000227, 'CONJ. CLIPS D18 INTERCAMBIADOR DIVA', 1, 8.20, 8.20, 0
);

/* INSERT QUERY NO: 71 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
71, 90000472, 'CONJ. CODO ENTRADA GAS TX GE', 1, 31.77, 31.77, 0
);

/* INSERT QUERY NO: 72 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
72, 90000382, 'CONJ. CONEXION PRESOSTATO AGUA TX40', 1, 36.76, 36.76, 0
);

/* INSERT QUERY NO: 73 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
73, 90000456, 'CONJ. FIJACION CABEZAL/INTER T80', 1, 7.17, 7.17, 0
);

/* INSERT QUERY NO: 74 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
74, 90000527, 'CONJ. FRENTE Y LATER. DIVA 24/32 (COMPL)', 1, 123.90, 123.90, 0
);

/* INSERT QUERY NO: 75 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
75, 90000411, 'CONJ. JUNTAS MOCAS 100.000 KCAL', 1, 125.84, 125.84, 0
);

/* INSERT QUERY NO: 76 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
76, 90000407, 'CONJ. JUNTAS MOCAS 30/50000 KCAL', 1, 4.06, 4.06, 0
);

/* INSERT QUERY NO: 77 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
77, 90000453, 'CONJ. QUEMADOR T80', 1, 460.81, 460.81, 0
);

/* INSERT QUERY NO: 78 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
78, 90000266, 'CONJ. RECAMBIO FLUJÓMETRO', 1, 59.41, 59.41, 0
);

/* INSERT QUERY NO: 79 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
79, 90000267, 'CONJ. RECAMBIO VÁLVULA DESVIADORA', 1, 65.54, 65.54, 0
);

/* INSERT QUERY NO: 80 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
80, 90000416, 'CONJ. TAPAS LATER.Y CABL. RADIAD. ELECTR', 1, 264.35, 264.35, 0
);

/* INSERT QUERY NO: 81 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
81, 90000519, 'CONJUNTO PLACAS AISLANTES DIVA 24 N', 1, 56.73, 56.73, 0
);

/* INSERT QUERY NO: 82 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
82, 90000520, 'CONJUNTO PLACAS AISLANTES DIVA 32 N', 1, 65.29, 65.29, 0
);

/* INSERT QUERY NO: 83 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
83, 90000474, 'CUERPO DE FUNDICIÓN XP CENTRAL', 1, 388.81, 388.81, 0
);

/* INSERT QUERY NO: 84 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
84, 90000475, 'CUERPO DE FUNDICIÓN XP DERECHO', 1, 388.81, 388.81, 0
);

/* INSERT QUERY NO: 85 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
85, 90000476, 'CUERPO DE FUNDICIÓN XP IZQUIERDO', 1, 388.81, 388.81, 0
);

/* INSERT QUERY NO: 86 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
86, 90000480, 'CUERPO FUNDICIÓN XP CENTRAL C/ VAINA', 1, 418.11, 418.11, 0
);

/* INSERT QUERY NO: 87 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
87, 90000052, 'CUPLA ELASTICA TUBO COAXIAL D100 DIVA', 1, 8.17, 8.17, 0
);

/* INSERT QUERY NO: 88 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
88, 90000100, 'ELECT. DETECC. 1 DONNA E - L=50 MM - FLAUTA NACIONAL', 1, 22.74, 22.74, 0
);

/* INSERT QUERY NO: 89 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
89, 90000130, 'ELECT. ENCEND. 1 DONNA E - L=52 MM - FLAUTA NACIONAL', 1, 35.31, 35.31, 0
);

/* INSERT QUERY NO: 90 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
90, 90000078, 'ELECTRODO DETECC. 2 DONNA E - L = 45 MM - FL. IMAR', 1, 26.57, 26.57, 0
);

/* INSERT QUERY NO: 91 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
91, 90000525, 'ELECTRODO DOBLE ENCENDIDO DIVA - ANALOGICA', 1, 42.99, 42.99, 0
);

/* INSERT QUERY NO: 92 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
92, 90000466, 'ELECTRODO ENCEND. 2 DONNA E - L = 40 MM - FL. IMAR', 1, 37.95, 37.95, 0
);

/* INSERT QUERY NO: 93 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
93, 90000053, 'ELECTRODO ENCEND./DETECC. DIVA - DIGITAL', 1, 15.02, 15.02, 0
);

/* INSERT QUERY NO: 94 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
94, 90000547, 'ELECTRODO ENCENDIDO ALKON 140', 1, 62.51, 62.51, 0
);

/* INSERT QUERY NO: 95 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
95, 90000549, 'ELECTRODO ENCENDIDO ALKON 70', 1, 116.71, 116.71, 0
);

/* INSERT QUERY NO: 96 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
96, 90000204, 'ELECTRODO ENCENDIDO DIVA 24/32', 1, 9.72, 9.72, 0
);

/* INSERT QUERY NO: 97 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
97, 90000263, 'ELECTRODO ENCENDIDO DIVA CONDENSACION', 1, 103.84, 103.84, 0
);

/* INSERT QUERY NO: 98 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
98, 90000551, 'ELECTRODO IONIZACION ALKON 140', 1, 52.55, 52.55, 0
);

/* INSERT QUERY NO: 99 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
99, 90000523, 'ELECTRODO SIMPLE DETECCION DIVA - ANALOGICA', 1, 32.77, 32.77, 0
);

/* INSERT QUERY NO: 100 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
100, 90000325, 'ENTRERROSCA 3/4 x 3/4 x 18', 1, 4.41, 4.41, 0
);

/* INSERT QUERY NO: 101 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
101, 90000233, 'ESPUMA AISLANTE LATERAL DIVA - PK X 2', 2, 20.34, 10.17, 0
);

/* INSERT QUERY NO: 102 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
102, 90000247, 'FILTRO 3/4 CALDERA ELECTRICA', 1, 106.22, 106.22, 0
);

/* INSERT QUERY NO: 103 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
103, 90000618, 'FILTRO 3/4 M-M UTI', 1, 109.73, 109.73, 0
);

/* INSERT QUERY NO: 104 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
104, 90000115, 'FILTRO AGUA SANITARIA DIVA', 1, 6.13, 6.13, 0
);

/* INSERT QUERY NO: 105 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
105, 90000454, 'FLAUTA QUEM T80', 1, 57.75, 57.75, 0
);

/* INSERT QUERY NO: 106 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
106, 90000468, 'FLAUTA QUEMADOR DONNA/TTQUA', 1, 47.43, 47.43, 0
);

/* INSERT QUERY NO: 107 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
107, 90000245, 'FLUJOSTATO CALDERA ELECTRICA', 1, 196.06, 196.06, 0
);

/* INSERT QUERY NO: 108 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
108, 90000054, 'FLUJOSTATO PRIORIZACION ON/OFF', 1, 30.36, 30.36, 1
);

/* INSERT QUERY NO: 109 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
109, 90000135, 'FLUJOSTATO ROTATIVO DIVA', 1, 108.96, 108.96, 0
);

/* INSERT QUERY NO: 110 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
110, 90000198, 'FRENTE PLASTICO TX40', 1, 100.10, 100.10, 0
);

/* INSERT QUERY NO: 111 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
111, 90000462, 'GRIFO DE PURGA 1/2 BLANCO', 1, 4.83, 4.83, 0
);

/* INSERT QUERY NO: 112 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
112, 90000225, 'GRIFO DE PURGA MANUAL 1/8 - PK X 5', 5, 27.38, 5.48, 0
);

/* INSERT QUERY NO: 113 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
113, 90000108, 'GRIFO DESCARGA / LLENADO CALDERA MH 1/2', 1, 19.27, 19.27, 0
);

/* INSERT QUERY NO: 114 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
114, 90000224, 'GRIFO DESCARGA / LLENADO CALDERA MH 1/4', 1, 12.86, 12.86, 0
);

/* INSERT QUERY NO: 115 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
115, 90000616, 'GRUPO HIDRAULICO MANDADA UTI', 1, 257.57, 257.57, 0
);

/* INSERT QUERY NO: 116 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
116, 90000615, 'GRUPO HIDRAULICO RETORNO UTI', 1, 127.05, 127.05, 0
);

/* INSERT QUERY NO: 117 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
117, 90000142, 'GRUPO RETORNO DIVA BITERMICA', 1, 88.37, 88.37, 0
);

/* INSERT QUERY NO: 118 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
118, 90000302, 'GUARNICION CUBRE MURO ø100', 1, 10.91, 10.91, 0
);

/* INSERT QUERY NO: 119 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
119, 90000213, 'GUARNICION P/CODO COAXIAL DIVA - PK X 2', 2, 8.59, 4.30, 0
);

/* INSERT QUERY NO: 120 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
120, 90000055, 'GUARNICION P/CUERPO FUNDICION - PK x 10', 10, 62.51, 6.25, 0
);

/* INSERT QUERY NO: 121 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
121, 90000550, 'GUARNICION QUEMADOR ALKON 70/140', 1, 134.76, 134.76, 0
);

/* INSERT QUERY NO: 122 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
122, 90000322, 'GUARNICION SOPORTE VENTILADOR DIVA', 1, 6.18, 6.18, 0
);

/* INSERT QUERY NO: 123 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
123, 90000544, 'GUARNICION VALVULA GAS ALKON 70', 1, 38.01, 38.01, 0
);

/* INSERT QUERY NO: 124 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
124, 90000605, 'INDICADOR LED PARA TERMOTANQUE TE', 1, 3.41, 3.41, 0
);

/* INSERT QUERY NO: 125 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
125, 90000255, 'INDICADOR LUMINICO TERMOTANQUE ELECTR.', 1, 11.36, 11.36, 0
);

/* INSERT QUERY NO: 126 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
126, 90000380, 'INTERCAMB DIVA 24 MONOTERMICO (conexión rápida)', 1, 277.67, 277.67, 0
);

/* INSERT QUERY NO: 127 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
127, 90000375, 'INTERCAMB DIVA 32 BITERMICO (conexión rápida)', 1, 348.43, 348.43, 0
);

/* INSERT QUERY NO: 128 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
128, 90000369, 'INTERCAMB DIVA 32 MONOTERMICO (conexión rápida)', 1, 223.30, 223.30, 0
);

/* INSERT QUERY NO: 129 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
129, 90000484, 'INTERCAMB MONOTERM 30000 Kcal 107al .- T', 1, 137.93, 137.93, 0
);

/* INSERT QUERY NO: 130 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
130, 90000303, 'INTERCAMB MONOTERM 30000 Kcal 107al.QL', 1, 324.80, 324.80, 0
);

/* INSERT QUERY NO: 131 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
131, 90000481, 'INTERCAMB. A PLACAS - ALV/ZT', 1, 252.47, 252.47, 0
);

/* INSERT QUERY NO: 132 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
132, 90000262, 'INTERCAMB. DIVA CONDENS. 24 KW PRIMARIO', 1, 1477.16, 1477.16, 0
);

/* INSERT QUERY NO: 133 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
133, 90000269, 'INTERCAMB. DIVA CONDENS. 24/35 KW PLACAS', 1, 118.32, 118.32, 0
);

/* INSERT QUERY NO: 134 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
134, 90000261, 'INTERCAMB. DIVA CONDENS. 35 KW PRIMARIO', 1, 1830.66, 1830.66, 0
);

/* INSERT QUERY NO: 135 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
135, 90000057, 'INTERCAMB. DIVA DUO BITERM. QL (1/2)', 1, 418.44, 418.44, 0
);

/* INSERT QUERY NO: 136 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
136, 90000056, 'INTERCAMB. DIVA DUO MINI BITERM. QL (1/2)', 1, 358.61, 358.61, 0
);

/* INSERT QUERY NO: 137 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
137, 90000058, 'INTERCAMB. DIVA DUO MINI BITERM. VX (1/2)', 1, 484.41, 484.41, 0
);

/* INSERT QUERY NO: 138 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
138, 90000059, 'INTERCAMB. DIVA UNICA MINI MONOTERM.', 1, 273.00, 273.00, 0
);

/* INSERT QUERY NO: 139 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
139, 90000060, 'INTERCAMB. TX40 MONOTERM. TRV', 1, 511.30, 511.30, 0
);

/* INSERT QUERY NO: 140 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
140, 90000061, 'INTERCAMB. TX70/T30 MONOTERM.', 1, 341.12, 341.12, 0
);

/* INSERT QUERY NO: 141 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
141, 90000229, 'INTERCAMBIADOR DIVA 24 DS (conexión rápida)', 1, 423.21, 423.21, 0
);

/* INSERT QUERY NO: 142 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
142, 90000632, 'INTERCAMBIADOR PLACAS DIVA', 1, 127.05, 127.05, 0
);

/* INSERT QUERY NO: 143 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
143, 90000614, 'INTERCAMBIADOR PLACAS UTI', 1, 383.46, 383.46, 0
);

/* INSERT QUERY NO: 144 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
144, 90000116, 'INTERCAMBIADOR T80 (SIN CABEZAL PLÁSTICO)', 1, 1325.49, 1325.49, 0
);

/* INSERT QUERY NO: 145 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
145, 90000432, 'INTERCAMBIADOR T80 C/ CABEZAL', 1, 1582.04, 1582.04, 0
);

/* INSERT QUERY NO: 146 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
146, 90000138, 'INTERCAMBIADOR TX 40 - SPG', 1, 563.20, 563.20, 0
);

/* INSERT QUERY NO: 147 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
147, 90000495, 'INTERR.BIP.6.3 220V CAJA NEGRA TECLA', 1, 4.94, 4.94, 0
);

/* INSERT QUERY NO: 148 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
148, 90000537, 'INTERRUPTOR BIPOLAR PIETRA', 1, 8.70, 8.70, 0
);

/* INSERT QUERY NO: 149 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
149, 90000320, 'INTERRUPTOR ROTATIVO C/PULSADOR', 1, 6.50, 6.50, 0
);

/* INSERT QUERY NO: 150 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
150, 90000318, 'INTERRUPTOR ROTATIVO DOBLE SERVICIO', 1, 3.73, 3.73, 0
);

/* INSERT QUERY NO: 151 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
151, 90000317, 'INTERRUPTOR ROTATIVO SOLO CALEFACCION', 1, 4.42, 4.42, 0
);

/* INSERT QUERY NO: 152 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
152, 90000066, 'JUNTA 1 (30 x 18 x 2) PK x 50', 50, 33.34, 0.67, 0
);

/* INSERT QUERY NO: 153 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
153, 90000391, 'JUNTA 1 (30 X 20)', 20, 26.18, 1.30, 0
);

/* INSERT QUERY NO: 154 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
154, 90000215, 'JUNTA 1 1/2 - PK X 20', 20, 38.10, 1.91, 0
);

/* INSERT QUERY NO: 155 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
155, 90000212, 'JUNTA 1 1/2 GOMA - PK X 20', 20, 242.00, 12.10, 0
);

/* INSERT QUERY NO: 156 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
156, 90000064, 'JUNTA 1/2 (18 x 12.5 x 2) PK x 50', 50, 28.58, 0.57, 0
);

/* INSERT QUERY NO: 157 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
157, 90000062, 'JUNTA 1/4 (11 x 5.25 x 2) PK x 50', 50, 23.82, 0.48, 0
);

/* INSERT QUERY NO: 158 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
158, 90000067, 'JUNTA 1-1/4 (39 x 27 x 2) - PK x 20', 20, 15.25, 0.76, 0
);

/* INSERT QUERY NO: 159 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
159, 90000065, 'JUNTA 3/4 (24 x 16 x 2) PK x 50', 50, 28.58, 0.57, 0
);

/* INSERT QUERY NO: 160 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
160, 90000063, 'JUNTA 3/8 (14.5 x 10.25 x 2) PK x 50', 50, 28.58, 0.57, 0
);

/* INSERT QUERY NO: 161 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
161, 90000270, 'JUNTA BRIDA QUEMADOR DIVA CONDENSACION', 1, 28.69, 28.69, 0
);

/* INSERT QUERY NO: 162 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
162, 90000271, 'JUNTA ELECTRODO ENCENDIDO DIVA CONDENS.', 1, 12.45, 12.45, 0
);

/* INSERT QUERY NO: 163 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
163, 90000584, 'JUNTA P/ BRIDA CUERPO XP', 1, 10.23, 10.23, 0
);

/* INSERT QUERY NO: 164 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
164, 90000603, 'JUNTA PARA RESISTENCIA TERMOTANQUE TE', 1, 1.51, 1.51, 0
);

/* INSERT QUERY NO: 165 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
165, 90000563, 'KIT ANODOS SACRIFICIO TANQ SOL. Ø22X400', 1, 89.67, 89.67, 0
);

/* INSERT QUERY NO: 166 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
166, 90000296, 'KIT BURLETES DIVA 24 DSF', 1, 12.97, 12.97, 0
);

/* INSERT QUERY NO: 167 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
167, 90000231, 'KIT ESCARPIAS P/ CALDERAS MURAL', 1, 3.59, 3.59, 0
);

/* INSERT QUERY NO: 168 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
168, 90000564, 'KIT GUARNICIONES P/ RADIADOR x 10', 10, 2.23, 0.22, 0
);

/* INSERT QUERY NO: 169 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
169, 90000566, 'KIT GUARNICIONES P/ RADIADOR x 100', 100, 23.30, 0.23, 0
);

/* INSERT QUERY NO: 170 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
170, 90000565, 'KIT GUARNICIONES P/ RADIADOR x 50', 50, 12.98, 0.26, 0
);

/* INSERT QUERY NO: 171 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
171, 90000567, 'KIT GUARNICIONES P/ RADIADOR x 600', 600, 122.34, 0.20, 0
);

/* INSERT QUERY NO: 172 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
172, 90000272, 'KIT JUNTAS DIVA CONDENSACION', 1, 99.73, 99.73, 0
);

/* INSERT QUERY NO: 173 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
173, 90000273, 'KIT JUNTAS O RING DIVA CONDENSACION', 1, 43.52, 43.52, 0
);

/* INSERT QUERY NO: 174 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
174, 90000297, 'KIT JUNTAS Y O´RINGS DIVA', 1, 7.57, 7.57, 0
);

/* INSERT QUERY NO: 175 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
175, 90000274, 'KIT MIRILLA DIVA CONDENSACION', 1, 106.68, 106.68, 0
);

/* INSERT QUERY NO: 176 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
176, 90000275, 'KIT MUELLES CHAVETAS DIVA CONDENSACION', 1, 72.77, 72.77, 0
);

/* INSERT QUERY NO: 177 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
177, 90000569, 'KIT NIPLES P/ RADIADOR x 100', 100, 115.50, 1.16, 0
);

/* INSERT QUERY NO: 178 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
178, 90000568, 'KIT NIPLES P/ RADIADOR x 2', 2, 2.31, 1.16, 0
);

/* INSERT QUERY NO: 179 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
179, 90000570, 'KIT NIPLES P/ RADIADOR x 50', 50, 57.75, 1.16, 0
);

/* INSERT QUERY NO: 180 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
180, 90000638, 'KIT O RING GHK - PK X 5', 5, 2.70, 0.54, 0
);

/* INSERT QUERY NO: 181 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
181, 90000092, 'KIT REPARACION CABLES ENCENDIDO T/TX', 1, 17.68, 17.68, 0
);

/* INSERT QUERY NO: 182 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
182, 90000483, 'KIT SILENCIADOR DIVA CONDENSACIÓN', 1, 157.70, 157.70, 0
);

/* INSERT QUERY NO: 183 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
183, 90000248, 'LLAVE TUBO P/RESIST. TERMOT. ELECTRICO', 1, 36.58, 36.58, 0
);

/* INSERT QUERY NO: 184 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
184, 90000463, 'LOCTITE 242/243 X 50G', 1, 87.46, 87.46, 0
);

/* INSERT QUERY NO: 185 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
185, 90000144, 'MANGUERA SILICONA PRESOST. HUMOS -PK X 2', 2, 12.87, 6.44, 0
);

/* INSERT QUERY NO: 186 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
186, 90000205, 'MANOMETRO BLANCO Ø37', 1, 37.11, 37.11, 0
);

/* INSERT QUERY NO: 187 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
187, 90000294, 'MANOMETRO DIVA CONDENSACION', 1, 78.71, 78.71, 0
);

/* INSERT QUERY NO: 188 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
188, 90000304, 'MANOMETRO ø37 NEGRO', 1, 26.39, 26.39, 0
);

/* INSERT QUERY NO: 189 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
189, 90000513, 'MARCO PANEL INSTRUMENTOS CALEFON DIVA 11', 1, 6.60, 6.60, 0
);

/* INSERT QUERY NO: 190 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
190, 90000511, 'MARCO PANEL INSTRUMENTOS DIVA 11', 1, 6.60, 6.60, 0
);

/* INSERT QUERY NO: 191 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
191, 90000512, 'MARCO PANEL INSTRUMENTOS DIVA 15', 1, 7.51, 7.51, 0
);

/* INSERT QUERY NO: 192 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
192, 90000110, 'MEMBRANA P/ GRUPO MANDADA', 1, 12.64, 12.64, 0
);

/* INSERT QUERY NO: 193 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
193, 90000460, 'MOTOR ELECTRICO P/ GRUPO HIDRACULICO DS', 1, 66.53, 66.53, 0
);

/* INSERT QUERY NO: 194 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
194, 90000613, 'MOTOR VALV. MEZCLADORA UTI', 1, 129.36, 129.36, 0
);

/* INSERT QUERY NO: 195 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
195, 90000278, 'MOTOR VALVULA DESVIADORA DIVA CONDENS.', 1, 128.61, 128.61, 0
);

/* INSERT QUERY NO: 196 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
196, 90000103, 'O´RING D60 CUERDA SALIDA HUMOS- PK X 10', 10, 44.81, 4.48, 0
);

/* INSERT QUERY NO: 197 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
197, 90000385, 'O RING 2-006 ø2.90-6.46 PK X 10', 10, 1.44, 0.14, 0
);

/* INSERT QUERY NO: 198 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
198, 90000068, 'O RING 2-113 D13.94-19.18 S2.62- PK x 10', 10, 4.26, 0.43, 0
);

/* INSERT QUERY NO: 199 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
199, 90000218, 'O RING 2-113 DIVA 24/32 ACS- PK X 10', 10, 8.48, 0.85, 0
);

/* INSERT QUERY NO: 200 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
200, 90000211, 'O RING 2-115 ø17.12-22.36 S2.62- PK X 10', 10, 4.73, 0.47, 0
);

/* INSERT QUERY NO: 201 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
201, 90000238, 'O RING 2-210 18.64-25.70 S3.53- PK X 10', 10, 5.64, 0.56, 0
);

/* INSERT QUERY NO: 202 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
202, 90000324, 'O RING 2-275 EPDM P/ CABEZAL T40/80', 1, 25.10, 25.10, 0
);

/* INSERT QUERY NO: 203 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
203, 90000069, 'O RING A LABBRO D60 SILICONA - PK x 10', 10, 50.94, 5.09, 0
);

/* INSERT QUERY NO: 204 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
204, 90000305, 'O RING A LABBRO ø100 SILICONA', 1, 13.48, 13.48, 0
);

/* INSERT QUERY NO: 205 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
205, 90000219, 'O RING DIVA 24/32 CALE- PK X 10', 10, 11.50, 1.15, 0
);

/* INSERT QUERY NO: 206 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
206, 90000240, 'PANEL DE CONTROL CALDERA ELECTRICA', 1, 681.18, 681.18, 0
);

/* INSERT QUERY NO: 207 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
207, 90000643, 'PANEL DE CONTROL CALDERA ELECTRICA CM', 1, 687.23, 687.23, 0
);

/* INSERT QUERY NO: 208 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
208, 90000374, 'PASACABLE ø18 X ø4 PK X 4', 4, 12.83, 3.21, 0
);

/* INSERT QUERY NO: 209 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
209, 90000629, 'PASACABLE ø18,5 X ø 3,5 - PK X 4', 4, 3.04, 0.76, 0
);

/* INSERT QUERY NO: 210 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
210, 90000628, 'PASACABLE ø18,5 X ø 6 - PK X 4', 4, 3.04, 0.76, 0
);

/* INSERT QUERY NO: 211 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
211, 90000373, 'PASATUBO ø38 X ø14 PX X 4', 1, 13.16, 13.16, 0
);

/* INSERT QUERY NO: 212 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
212, 90000372, 'PASATUBO ø38 X ø18 PK X 4', 4, 13.16, 3.29, 0
);

/* INSERT QUERY NO: 213 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
213, 90000627, 'PASATUBOS Ø38 PK X 5', 5, 5.78, 1.16, 0
);

/* INSERT QUERY NO: 214 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
214, 90000132, 'PERILLA 0° BLANCA DIVA/DONNA/TTQUA.', 1, 4.02, 4.02, 0
);

/* INSERT QUERY NO: 215 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
215, 90000489, 'PERILLA 0° P/REGULACION NEGRA', 1, 4.29, 4.29, 0
);

/* INSERT QUERY NO: 216 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
216, 90000323, 'PERILLA 45° PSELECTOR PLAQUET BLANC RAL', 1, 3.06, 3.06, 0
);

/* INSERT QUERY NO: 217 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
217, 90000459, 'PERILLA 90 PARA DONNA PK X 2', 2, 8.94, 4.47, 0
);

/* INSERT QUERY NO: 218 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
218, 90000465, 'PERILLA ø42 NEGRA C/TORNILLO T40/80', 1, 4.02, 4.02, 0
);

/* INSERT QUERY NO: 219 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
219, 90000381, 'PERILLA XP/CALENT. PISCINA', 1, 4.71, 4.71, 0
);

/* INSERT QUERY NO: 220 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
220, 90000586, 'PICO INY. Ø1.85 GL C/ ARANDELA - PK X 11', 11, 9.46, 0.86, 0
);

/* INSERT QUERY NO: 221 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
221, 90000587, 'PICO INY. Ø1.85 GL C/ ARANDELA - PK X 7', 7, 6.24, 0.89, 0
);

/* INSERT QUERY NO: 222 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
222, 90000668, 'PICO INY. Ø2.6 GN C/ ARANDELA - PK X 5', 5, 16.50, 3.30, 0
);

/* INSERT QUERY NO: 223 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
223, 90000585, 'PICO INY. Ø3 GN C/ ARANDELA - PK X 11', 11, 30.92, 2.81, 0
);

/* INSERT QUERY NO: 224 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
224, 90000222, 'PICO INYECTOR 1.60 GL DONNA/XP- PK X 10', 10, 44.00, 4.40, 0
);

/* INSERT QUERY NO: 225 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
225, 90000750, 'PICO INYECTOR DI TECNO GE 0.85 - PK X 13', 13, 21.64, 1.66, 0
);

/* INSERT QUERY NO: 226 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
226, 90000070, 'PICO INYECTOR DIVA GE 0.80 WG - PK x 15', 15, 30.71, 2.05, 0
);

/* INSERT QUERY NO: 227 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
227, 90000071, 'PICO INYECTOR DIVA GN 1.25 WG - PK x 15', 15, 29.85, 1.99, 0
);

/* INSERT QUERY NO: 228 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
228, 90000457, 'PICO INYECTOR DIVA GN 1.30 - WG PK X 15', 15, 19.66, 1.31, 0
);

/* INSERT QUERY NO: 229 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
229, 90000109, 'PICO INYECTOR PILOTO GL DONNA/XP- PK X 5', 5, 16.06, 3.21, 0
);

/* INSERT QUERY NO: 230 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
230, 90000136, 'PIEZOELECTRICO', 1, 8.04, 8.04, 0
);

/* INSERT QUERY NO: 231 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
231, 90000641, 'PILOTO COMPLETO T80', 1, 54.00, 54.00, 0
);

/* INSERT QUERY NO: 232 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
232, 90000642, 'PILOTO COMPLETO TX40/70', 1, 45.10, 45.10, 0
);

/* INSERT QUERY NO: 233 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
233, 90000223, 'PILOTO DONNA / XP', 1, 27.30, 27.30, 0
);

/* INSERT QUERY NO: 234 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
234, 90000471, 'PILOTO P/ TERMOPILA', 1, 26.75, 26.75, 0
);

/* INSERT QUERY NO: 235 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
235, 90000371, 'PLACA AISLANTE (FRENTE-TRAS.) DIVA 15 32 PK X 2', 2, 39.79, 19.89, 0
);

/* INSERT QUERY NO: 236 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
236, 90000376, 'PLACA AISLANTE (FTE.) 24 TN -10 - PK X 2', 2, 26.33, 13.17, 0
);

/* INSERT QUERY NO: 237 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
237, 90000446, 'PLACA AISLANTE (FTE.) 32 TN -10 - PK X 2', 2, 77.51, 38.75, 0
);

/* INSERT QUERY NO: 238 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
238, 90000378, 'PLACA AISLANTE (LAT.) 24/32 TN -10- PK 2', 2, 26.33, 13.17, 0
);

/* INSERT QUERY NO: 239 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
239, 90000377, 'PLACA AISLANTE (TRAS.) 24 TN -10- PK X 2', 2, 27.70, 13.85, 0
);

/* INSERT QUERY NO: 240 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
240, 90000443, 'PLACA AISLANTE (TRAS.) 32 TN -10- PK X 2', 2, 80.83, 40.41, 0
);

/* INSERT QUERY NO: 241 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
241, 90000464, 'PLACA AISLANTE 10x270x198 PK X 2', 2, 30.12, 15.06, 0
);

/* INSERT QUERY NO: 242 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
242, 90000384, 'PLACA AISLANTE 10x337x218 - TX40 PK X 2', 2, 50.57, 25.28, 0
);

/* INSERT QUERY NO: 243 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
243, 90000388, 'PLACA AISLANTE 10x382x170 - TX70 PK X 2', 2, 89.10, 44.55, 0
);

/* INSERT QUERY NO: 244 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
244, 90000104, 'PLACA AISLANTE 195 X 170 DIVA - PK X 2', 2, 22.44, 11.22, 0
);

/* INSERT QUERY NO: 245 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
245, 90000339, 'PLACA AISLANTE 20x370x420 T40/80 LAT. -PK 2', 2, 200.84, 100.42, 0
);

/* INSERT QUERY NO: 246 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
246, 90000451, 'PLACA AISLANTE 20x522x362 T80 DEL.', 2, 117.80, 58.90, 0
);

/* INSERT QUERY NO: 247 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
247, 90000452, 'PLACA AISLANTE 20x522x522 T80 TRAS.', 2, 151.86, 75.93, 0
);

/* INSERT QUERY NO: 248 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
248, 90000105, 'PLACA AISLANTE 290 X 218 DIVA - PK X 2', 2, 38.67, 19.33, 0
);

/* INSERT QUERY NO: 249 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
249, 90000072, 'PLACA AISLANTE DIVA 10x340x218 - PK X 2', 2, 36.37, 18.18, 0
);

/* INSERT QUERY NO: 250 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
250, 90000216, 'PLACA AISLANTE DIVA 24 DEL/TRAS. -PK X 2', 2, 29.33, 14.66, 0
);

/* INSERT QUERY NO: 251 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
251, 90000217, 'PLACA AISLANTE DIVA 24/32 LAT. -PK X 2', 2, 20.35, 10.18, 0
);

/* INSERT QUERY NO: 252 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
252, 90000133, 'PLACA AISLANTE DIVA 270x218 - PK X 2', 2, 46.52, 23.26, 0
);

/* INSERT QUERY NO: 253 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
253, 90000535, 'PLACA AISLANTE RESISTENCIA PIETRA', 1, 10.15, 10.15, 0
);

/* INSERT QUERY NO: 254 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
254, 90000306, 'PLAQUET ELECTR.C DISPLAY PIETRA', 1, 164.05, 164.05, 0
);

/* INSERT QUERY NO: 255 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
255, 90000338, 'PLAQUETA DE ENCENDIDO ABC - 60 s.', 1, 260.70, 260.70, 0
);

/* INSERT QUERY NO: 256 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
256, 90000461, 'PLAQUETA ELECTR. EMULADORA SEÑAL FLUJOST', 1, 119.47, 119.47, 0
);

/* INSERT QUERY NO: 257 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
257, 90000075, 'PLAQUETA ELECTRON.+ DISPLAY DIVA DIGITAL (800445)', 1, 322.91, 322.91, 0
);

/* INSERT QUERY NO: 258 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
258, 90000561, 'PLAQUETA ELECTRONICA ALKON 140', 1, 679.46, 679.46, 0
);

/* INSERT QUERY NO: 259 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
259, 90000546, 'PLAQUETA ELECTRONICA ALKON 70', 1, 569.24, 569.24, 0
);

/* INSERT QUERY NO: 260 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
260, 90000000, 'PLAQUETA ELECTRONICA BGL188', 1, 150.37, 150.37, 1
);

/* INSERT QUERY NO: 261 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
261, 90000241, 'PLAQUETA ELECTRONICA CALDERA ELECTRICA', 1, 321.44, 321.44, 0
);

/* INSERT QUERY NO: 262 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
262, 90000265, 'PLAQUETA ELECTRONICA DIVA CONDENSACION', 1, 398.59, 398.59, 0
);

/* INSERT QUERY NO: 263 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
263, 90000264, 'PLAQUETA ELECTRONICA DIVA CONDENSACION S', 1, 421.32, 421.32, 0
);

/* INSERT QUERY NO: 264 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
264, 90000631, 'PLAQUETA ELECTRONICA DIVA TECNO', 1, 150.37, 150.37, 0
);

/* INSERT QUERY NO: 265 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
265, 90000073, 'PLAQUETA ENCENDIDO ABC', 1, 270.92, 270.92, 0
);

/* INSERT QUERY NO: 266 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
266, 90000560, 'PLAQUETA TABLERO ALKON 70', 1, 188.95, 188.95, 0
);

/* INSERT QUERY NO: 267 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
267, 90000426, 'PLAQUETA UTI', 1, 1197.53, 1197.53, 0
);

/* INSERT QUERY NO: 268 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
268, 90000112, 'PORTAPILA TIPO D', 1, 12.79, 12.79, 0
);

/* INSERT QUERY NO: 269 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
269, 90000202, 'PRESOSTATO DE AGUA CLIMATIZADOR PISCINA', 1, 81.40, 81.40, 0
);

/* INSERT QUERY NO: 270 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
270, 90000279, 'PRESOSTATO DE AGUA DIVA CONDENSACION', 1, 59.41, 59.41, 0
);

/* INSERT QUERY NO: 271 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
271, 90000076, 'PRESOSTATO DE AGUA G1/8 2T DIVA', 1, 22.50, 22.50, 0
);

/* INSERT QUERY NO: 272 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
272, 90000077, 'PRESOSTATO DE AGUA G1/8 3T DONNA/XP', 1, 21.46, 21.46, 0
);

/* INSERT QUERY NO: 273 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
273, 90000634, 'PRESOSTATO DE AGUA P/ACOPLE', 1, 16.17, 16.17, 0
);

/* INSERT QUERY NO: 274 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
274, 90000237, 'PRESOSTATO DE HUMOS 0.9 MBAR', 1, 33.72, 33.72, 0
);

/* INSERT QUERY NO: 275 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
275, 90000208, 'PRESOSTATO DE HUMOS 1.4 MBAR', 1, 37.71, 37.71, 0
);

/* INSERT QUERY NO: 276 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
276, 90000206, 'PRESOSTATO DE HUMOS 1.5 MBAR', 1, 24.49, 24.49, 0
);

/* INSERT QUERY NO: 277 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
277, 90000207, 'PRESOSTATO DE HUMOS 1.8 MBAR', 1, 24.71, 24.71, 0
);

/* INSERT QUERY NO: 278 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
278, 90000449, 'PRESOSTATO TONKA C/ CONJ. CABLES ADAPT.', 1, 56.40, 56.40, 0
);

/* INSERT QUERY NO: 279 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
279, 90000280, 'PURGA AUTOMATICA DIVA CONDENSACION', 1, 68.19, 68.19, 0
);

/* INSERT QUERY NO: 280 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
280, 90000379, 'QUEM 20000 Kcal/h 11 r.- 1.30', 1, 65.47, 65.47, 0
);

/* INSERT QUERY NO: 281 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
281, 90000308, 'QUEM 20000 Kcal/h 12 r.- 1.25', 1, 115.00, 115.00, 0
);

/* INSERT QUERY NO: 282 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
282, 90000392, 'QUEM 20000 Kcal/h 12 r.- 1.30', 1, 123.20, 123.20, 0
);

/* INSERT QUERY NO: 283 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
283, 90000397, 'QUEM 20000 Kcal/h 12 r.-0.80', 1, 95.90, 95.90, 0
);

/* INSERT QUERY NO: 284 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
284, 90000309, 'QUEM 30000 Kcal/h 15 r.- 1.20', 1, 162.80, 162.80, 0
);

/* INSERT QUERY NO: 285 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
285, 90000383, 'QUEM 30000 Kcal/h 15 r.- 1.30', 1, 163.90, 163.90, 0
);

/* INSERT QUERY NO: 286 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
286, 90000399, 'QUEM 30000 Kcal/h 15 r.-0.80', 1, 148.65, 148.65, 0
);

/* INSERT QUERY NO: 287 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
287, 90000230, 'QUEMADOR 11 RAMPAS - Ø1.35', 1, 77.14, 77.14, 0
);

/* INSERT QUERY NO: 288 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
288, 90000400, 'QUEMADOR 13 RAMPAS - Ø0.85', 1, 106.61, 106.61, 0
);

/* INSERT QUERY NO: 289 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
289, 90000370, 'QUEMADOR 13 RAMPAS - Ø1.35', 1, 132.00, 132.00, 0
);

/* INSERT QUERY NO: 290 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
290, 90000282, 'QUEMADOR PREMEZCLA DIVA CONDENS. 24 KW', 1, 141.21, 141.21, 0
);

/* INSERT QUERY NO: 291 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
291, 90000281, 'QUEMADOR PREMEZCLA DIVA CONDENS. 35 KW', 1, 130.19, 130.19, 0
);

/* INSERT QUERY NO: 292 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
292, 90000406, 'RELE INVERSOR', 1, 35.53, 35.53, 0
);

/* INSERT QUERY NO: 293 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
293, 90000244, 'RESISTENCIA ELECT. 2 KW TERMOT. ELECTR.', 1, 95.03, 95.03, 0
);

/* INSERT QUERY NO: 294 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
294, 90000243, 'RESISTENCIA ELECT. 24 KW CALDERA ELECTR', 1, 687.40, 687.40, 0
);

/* INSERT QUERY NO: 295 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
295, 90000604, 'RESISTENCIA ELECT. 2KW TERMOTANQUE TE', 1, 41.58, 41.58, 0
);

/* INSERT QUERY NO: 296 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
296, 90000252, 'RESISTENCIA ELECT. 8 KW CALDERA ELECTR.', 1, 458.39, 458.39, 0
);

/* INSERT QUERY NO: 297 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
297, 90000415, 'RESISTENCIA ELECT. L500 1000 W', 1, 180.70, 180.70, 0
);

/* INSERT QUERY NO: 298 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
298, 90000340, 'RESISTENCIA ELECT. L500 1500 W', 1, 120.15, 120.15, 0
);

/* INSERT QUERY NO: 299 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
299, 90000337, 'RESISTENCIA ELECT. PIETRA 1000 W', 1, 35.42, 35.42, 0
);

/* INSERT QUERY NO: 300 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
300, 90000500, 'RESISTENCIA ELECT. PIETRA 2000 W', 1, 119.36, 119.36, 0
);

/* INSERT QUERY NO: 301 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
301, 90000430, 'RESISTENCIA ELECT. PIETRA 500 W', 1, 53.63, 53.63, 0
);

/* INSERT QUERY NO: 302 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
302, 90000431, 'RESISTENCIA ELECT. PIETRA 700 W', 1, 74.17, 74.17, 0
);

/* INSERT QUERY NO: 303 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
303, 90000429, 'RESISTENCIA ELECT. SCALA 150', 1, 116.56, 116.56, 0
);

/* INSERT QUERY NO: 304 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
304, 90000428, 'RESISTENCIA ELECT. SCALA 80', 1, 111.98, 111.98, 0
);

/* INSERT QUERY NO: 305 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
305, 90000146, 'RESTRICTOR CAUDAL 12 L DIVA DUO MIN/24DS', 1, 7.19, 7.19, 0
);

/* INSERT QUERY NO: 306 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
306, 90000147, 'RESTRICTOR CAUDAL 15L DIVA DUO/32 DS', 1, 12.64, 12.64, 0
);

/* INSERT QUERY NO: 307 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
307, 90000145, 'RESTRICTOR DE HUMOS D44', 1, 3.43, 3.43, 0
);

/* INSERT QUERY NO: 308 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
308, 90000214, 'SELLO LLENADO GRUPO RETORNO DIVA -PK X 2', 2, 13.59, 6.79, 0
);

/* INSERT QUERY NO: 309 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
309, 90000545, 'SENSOR CONTACTO CALEFACCION ALKON 70/140', 1, 86.23, 86.23, 0
);

/* INSERT QUERY NO: 310 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
310, 90000285, 'SENSOR CONTROL DIVA CONDENSACION', 1, 46.98, 46.98, 0
);

/* INSERT QUERY NO: 311 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
311, 90000636, 'SENSOR DE INMERSIÓN DIVA TECNO', 1, 15.65, 15.65, 0
);

/* INSERT QUERY NO: 312 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
312, 90000477, 'SENSOR DE TEMPERATURA ACS / CALEFACCION', 1, 24.16, 24.16, 0
);

/* INSERT QUERY NO: 313 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
313, 90000236, 'SENSOR DE TEMPERATURA INMERSION DIVA', 1, 15.65, 15.65, 0
);

/* INSERT QUERY NO: 314 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
314, 90000612, 'SENSOR DE TEMPERATURA INMERSIÓN UTI', 1, 40.43, 40.43, 0
);

/* INSERT QUERY NO: 315 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
315, 90000143, 'SENSOR FLUJO P/BOMBA JET M', 1, 110.22, 110.22, 0
);

/* INSERT QUERY NO: 316 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
316, 90000283, 'SENSOR FLUJÓMETRO DIVA GHK', 1, 46.76, 46.76, 0
);

/* INSERT QUERY NO: 317 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
317, 90000617, 'SENSOR FLUJOMETRO UTI', 1, 40.43, 40.43, 0
);

/* INSERT QUERY NO: 318 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
318, 90000287, 'SENSOR INTERC. DIVA CONDENS.', 1, 78.71, 78.71, 0
);

/* INSERT QUERY NO: 319 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
319, 90000286, 'SENSOR TEMP. AGUA SANIT. DIVA CONDENS.', 1, 41.97, 41.97, 0
);

/* INSERT QUERY NO: 320 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
320, 90000210, 'SENSOR TEMPERAT. D18 - CALEF. DIVA 24/32', 1, 10.07, 10.07, 0
);

/* INSERT QUERY NO: 321 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
321, 90000079, 'SENSOR TEMPERAT. DE CONTACTO D14', 1, 16.70, 16.70, 0
);

/* INSERT QUERY NO: 322 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
322, 90000080, 'SENSOR TEMPERAT. DE CONTACTO D18', 1, 16.70, 16.70, 0
);

/* INSERT QUERY NO: 323 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
323, 90000246, 'SENSOR TEMPERATURA NTC CALD. ELECTRICA', 1, 61.61, 61.61, 0
);

/* INSERT QUERY NO: 324 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
324, 90000580, 'SERIGRAFÍA DIVA ACQUA', 1, 17.55, 17.55, 0
);

/* INSERT QUERY NO: 325 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
325, 90000515, 'SERIGRAFÍA DIVA C', 1, 50.22, 50.22, 0
);

/* INSERT QUERY NO: 326 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
326, 90000514, 'SERIGRAFÍA DIVA DS', 1, 49.30, 49.30, 0
);

/* INSERT QUERY NO: 327 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
327, 90000516, 'SERIGRAFÍA DIVA DUO', 1, 20.41, 20.41, 0
);

/* INSERT QUERY NO: 328 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
328, 90000518, 'SERIGRAFÍA DIVA DUO F', 1, 21.98, 21.98, 0
);

/* INSERT QUERY NO: 329 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
329, 90000517, 'SERIGRAFÍA DIVA UNICA', 1, 21.98, 21.98, 0
);

/* INSERT QUERY NO: 330 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
330, 90000284, 'SIFON DESCARGA DIVA CONDENSACION', 1, 50.00, 50.00, 0
);

/* INSERT QUERY NO: 331 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
331, 90000113, 'SOLENOIDE C/PILOTO TX / T', 1, 74.77, 74.77, 0
);

/* INSERT QUERY NO: 332 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
332, 90000139, 'SOLENOIDE S/PILOTO TX / T', 1, 71.73, 71.73, 0
);

/* INSERT QUERY NO: 333 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
333, 90000611, 'SONDA DE TEMPERATURA NTC UTI', 1, 86.63, 86.63, 0
);

/* INSERT QUERY NO: 334 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
334, 90000552, 'SONDA RETORNO CALEFACCION ALKON 140', 1, 62.81, 62.81, 0
);

/* INSERT QUERY NO: 335 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
335, 90000121, 'SOPORTE PRESOSTATO HUMOS DIVA', 1, 4.49, 4.49, 0
);

/* INSERT QUERY NO: 336 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
336, 90000331, 'TABIQUE INTERIOR CABEZ T40/80 PLAST', 1, 13.41, 13.41, 0
);

/* INSERT QUERY NO: 337 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
337, 90000630, 'TABLERO C/ CABLEADO DIVA TECNO', 1, 225.38, 225.38, 0
);

/* INSERT QUERY NO: 338 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
338, 90000081, 'TABLERO DIVA BGL188 C/CABLEADO', 1, 225.38, 225.38, 0
);

/* INSERT QUERY NO: 339 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
339, 90000486, 'TANQUE 130L CON AISLACIÓN  SERP TTQUA', 1, 925.10, 925.10, 0
);

/* INSERT QUERY NO: 340 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
340, 90000350, 'TANQUE C/AISLACION & JUNTAS - TAB', 1, 1217.30, 1217.30, 0
);

/* INSERT QUERY NO: 341 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
341, 90000326, 'TAPA 3/4 BSP LATON', 1, 12.40, 12.40, 0
);

/* INSERT QUERY NO: 342 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
342, 90000221, 'TAPON BRONCE 1/8 - PK X 5', 5, 15.29, 3.06, 0
);

/* INSERT QUERY NO: 343 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
343, 90000571, 'TAPON CIEGO 1/2 P/ RADIADOR C/ O RING', 1, 2.83, 2.83, 0
);

/* INSERT QUERY NO: 344 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
344, 90000591, 'TAPON COLECTOR SOLAR PISCINA RTG-PK X 2', 2, 46.61, 23.30, 0
);

/* INSERT QUERY NO: 345 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
345, 90000310, 'TAPON COLECTOR SOLAR PISCINA-RED.-PK X 2', 2, 45.78, 22.89, 0
);

/* INSERT QUERY NO: 346 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
346, 90000129, 'TECLA ENCENDIDO T30/TX40/TAB', 1, 4.83, 4.83, 0
);

/* INSERT QUERY NO: 347 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
347, 90000124, 'TECLA ENCENDIDO T80/TX70', 1, 4.83, 4.83, 0
);

/* INSERT QUERY NO: 348 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
348, 90000200, 'TERMINAL ANTIVIENTO 60/100 DIVA', 1, 21.43, 21.43, 0
);

/* INSERT QUERY NO: 349 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
349, 90000102, 'TERMINAL PALA 6.3 MACHO DOBLE - PK X 20', 20, 11.86, 0.59, 0
);

/* INSERT QUERY NO: 350 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
350, 90000609, 'TERMOCUPLA BIFIDA C/ SOPORTE PILOTO XP', 1, 18.48, 18.48, 0
);

/* INSERT QUERY NO: 351 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
351, 90000235, 'TERMOCUPLA L=0.6 M', 1, 9.64, 9.64, 0
);

/* INSERT QUERY NO: 352 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
352, 90000562, 'TERMOCUPLA L=0.60 M BIFIDA C/ TERMINAL', 1, 10.71, 10.71, 0
);

/* INSERT QUERY NO: 353 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
353, 90000234, 'TERMOCUPLA L=1.0 M', 1, 9.64, 9.64, 0
);

/* INSERT QUERY NO: 354 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
354, 90000479, 'TERMOCUPLA NE100F/INNOX T TE40810', 1, 8.17, 8.17, 0
);

/* INSERT QUERY NO: 355 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
355, 90000319, 'TERMOMETRO ø37 BLANCO', 1, 21.65, 21.65, 0
);

/* INSERT QUERY NO: 356 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
356, 90000351, 'TERMOMETRO ø37 NEGRO', 1, 31.88, 31.88, 0
);

/* INSERT QUERY NO: 357 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
357, 90000249, 'TERMOMETRO TERMOTANQUE ELECTRICO', 1, 22.63, 22.63, 0
);

/* INSERT QUERY NO: 358 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
358, 90000199, 'TERMOPILA CLIMATIZADOR PISCINA', 1, 87.90, 87.90, 0
);

/* INSERT QUERY NO: 359 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
359, 90000203, 'TERMOSTATO DE HUMOS / LIMITE 60/65°C', 1, 14.47, 14.47, 0
);

/* INSERT QUERY NO: 360 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
360, 90000467, 'TERMOSTATO DE HUMOS 75-10 °C', 1, 12.91, 12.91, 0
);

/* INSERT QUERY NO: 361 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
361, 90000608, 'TERMOSTATO DE REGULACION 75-25°C', 1, 16.52, 16.52, 0
);

/* INSERT QUERY NO: 362 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
362, 90000488, 'TERMOSTATO DE REGULACIÓN PIETRA', 1, 53.13, 53.13, 0
);

/* INSERT QUERY NO: 363 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
363, 90000405, 'TERMOSTATO DIGITAL 220V', 1, 121.28, 121.28, 0
);

/* INSERT QUERY NO: 364 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
364, 90000097, 'TERMOSTATO HUMOS / SEGURIDAD 80°C', 1, 14.47, 14.47, 0
);

/* INSERT QUERY NO: 365 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
365, 90000127, 'TERMOSTATO HUMOS 110°C DONNA/XP', 1, 77.15, 77.15, 0
);

/* INSERT QUERY NO: 366 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
366, 90000125, 'TERMOSTATO HUMOS 140°C CALENT. PISCINA', 1, 30.11, 30.11, 0
);

/* INSERT QUERY NO: 367 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
367, 90000099, 'TERMOSTATO LIMITE 45°C', 1, 16.57, 16.57, 0
);

/* INSERT QUERY NO: 368 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
368, 90000493, 'TERMOSTATO LÍMITE T40/80', 1, 54.88, 54.88, 0
);

/* INSERT QUERY NO: 369 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
369, 90000433, 'TERMOSTATO LIMITE T40/80 C/ O RING', 1, 56.28, 56.28, 0
);

/* INSERT QUERY NO: 370 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
370, 90000098, 'TERMOSTATO REGULAC. CLIMATIZADOR PISCINA', 1, 79.72, 79.72, 0
);

/* INSERT QUERY NO: 371 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
371, 90000427, 'TERMOSTATO REGULAC. SCALA ELECTRICO', 1, 65.66, 65.66, 0
);

/* INSERT QUERY NO: 372 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
372, 90000251, 'TERMOSTATO REGULAC. TERMOTANQUE ELECTR.', 1, 48.81, 48.81, 0
);

/* INSERT QUERY NO: 373 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
373, 90000101, 'TERMOSTATO REGULACION DONNA / XP / TAB', 1, 53.03, 53.03, 0
);

/* INSERT QUERY NO: 374 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
374, 90000126, 'TERMOSTATO REGULACION TANTAQUA', 1, 84.69, 84.69, 0
);

/* INSERT QUERY NO: 375 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
375, 90000606, 'TERMOSTATO SEG. 105°C TERMOTANQUE TE', 1, 17.09, 17.09, 0
);

/* INSERT QUERY NO: 376 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
376, 90000239, 'TERMOSTATO SEGUR. 100° CALDERA ELECTR.', 1, 222.85, 222.85, 0
);

/* INSERT QUERY NO: 377 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
377, 90000083, 'TERMOSTATO SEGURIDAD 100-15 °C', 1, 13.01, 13.01, 0
);

/* INSERT QUERY NO: 378 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
378, 90000128, 'TERMOSTATO SEGURIDAD 110°C DONNA /XP', 1, 79.29, 79.29, 0
);

/* INSERT QUERY NO: 379 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
379, 90000288, 'TERMOSTATO SEGURIDAD DIVA CONDENSACION', 1, 42.22, 42.22, 0
);

/* INSERT QUERY NO: 380 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
380, 90000534, 'TERMOSTATO SEGURIDAD PIETRA', 1, 9.70, 9.70, 0
);

/* INSERT QUERY NO: 381 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
381, 90000295, 'TERMOSTATO SEGURIDAD TERMOTANQUE ELECTR.', 1, 67.31, 67.31, 0
);

/* INSERT QUERY NO: 382 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
382, 90000093, 'TORN. PARKER PH. 10 x 1/2 - PK X 100', 100, 21.73, 0.22, 0
);

/* INSERT QUERY NO: 383 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
383, 90000094, 'TORN. PARKER PH. 10 x 1/2 INOX - PK 100', 100, 95.11, 0.95, 0
);

/* INSERT QUERY NO: 384 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
384, 90000122, 'TORN. PARKER PH. 6 x 1/4 - PK X 100', 100, 24.86, 0.25, 0
);

/* INSERT QUERY NO: 385 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
385, 90000095, 'TORN. PARKER PH. 8 x 1/2 - PK X 100', 100, 15.88, 0.16, 0
);

/* INSERT QUERY NO: 386 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
386, 90000096, 'TORN. PARKER PH. 8 x 1/2 INOX - PK 100', 100, 70.83, 0.71, 0
);

/* INSERT QUERY NO: 387 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
387, 90000242, 'TRANSDUCTOR PRESION CALDERA ELECTRICA', 1, 112.62, 112.62, 0
);

/* INSERT QUERY NO: 388 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
388, 90000289, 'TRANSDUCTOR PRESION DIVA CONDENSACION', 1, 153.92, 153.92, 0
);

/* INSERT QUERY NO: 389 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
389, 90000140, 'TRANSDUCTOR PRESION DIVA DIGITAL', 1, 57.49, 57.49, 0
);

/* INSERT QUERY NO: 390 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
390, 90000123, 'TUERCA M5 ZINC DORADO - PK X 50', 50, 5.78, 0.12, 0
);

/* INSERT QUERY NO: 391 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
391, 90000555, 'UNIDAD DE ENCENDIDO ALKON 140', 1, 166.57, 166.57, 0
);

/* INSERT QUERY NO: 392 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
392, 90000553, 'UNIDAD ENCENDIDO ALKON 70', 1, 107.01, 107.01, 0
);

/* INSERT QUERY NO: 393 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
393, 90000084, 'UNIDAD ENCENDIDO CLIMATIZ. PISCINA', 1, 58.01, 58.01, 0
);

/* INSERT QUERY NO: 394 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
394, 90000226, 'UNIDAD ENCENDIDO DIVA', 1, 14.47, 14.47, 0
);

/* INSERT QUERY NO: 395 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
395, 90000311, 'VAINA P/ SENSOR DE TEMPERATURA T80', 1, 54.44, 54.44, 0
);

/* INSERT QUERY NO: 396 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
396, 90000447, 'VAINA P/ TERMOSTATO DE REGULACION T80', 1, 43.48, 43.48, 0
);

/* INSERT QUERY NO: 397 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
397, 90000676, 'VALV 3 VÍAS MUT MANUAL DN20', 1, 189.20, 189.20, 0
);

/* INSERT QUERY NO: 398 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
398, 90000491, 'VALV 3 VÍAS MUT MANUAL DN25', 1, 236.36, 236.36, 0
);

/* INSERT QUERY NO: 399 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
399, 90000473, 'VALV GAS ROBERTSHAW 7000 PISCINA', 1, 766.88, 766.88, 0
);

/* INSERT QUERY NO: 400 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
400, 90000334, 'VALV GAS SIT SIGMA 840 NO MODUL.C PILOTO', 1, 190.41, 190.41, 0
);

/* INSERT QUERY NO: 401 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
401, 90000290, 'VALV. SOBREP 3 BAR P/ACOPLE', 1, 20.57, 20.57, 0
);

/* INSERT QUERY NO: 402 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
402, 90000342, 'VALV. SOBREP. 1/2 CALDERA ELECTRICA', 1, 168.53, 168.53, 0
);

/* INSERT QUERY NO: 403 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
403, 90000085, 'VALV. SOBREP. 1/2 M 3 bar CONEX. MANOM.', 1, 18.81, 18.81, 0
);

/* INSERT QUERY NO: 404 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
404, 90000107, 'VALV. SOBREP. 1/2 M 6 bar', 1, 19.00, 19.00, 0
);

/* INSERT QUERY NO: 405 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
405, 90000250, 'VALV. SOBREP. 1/2 TERMOTANQUE ELECTRICO', 1, 42.50, 42.50, 0
);

/* INSERT QUERY NO: 406 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
406, 90000610, 'VÁLVULA BY PASS 3/4 M-M UTI', 1, 130.52, 130.52, 0
);

/* INSERT QUERY NO: 407 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
407, 90000637, 'VALVULA BYPASS GRUPO DE RETORNO', 1, 8.67, 8.67, 0
);

/* INSERT QUERY NO: 408 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
408, 90000548, 'VALVULA DE GAS ALKON 140', 1, 527.47, 527.47, 0
);

/* INSERT QUERY NO: 409 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
409, 90000420, 'VALVULA DE GAS DIVA SIEMENS', 1, 233.82, 233.82, 0
);

/* INSERT QUERY NO: 410 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
410, 90000312, 'VALVULA DE GAS SIT 810 ELETTROSIT S2', 1, 669.64, 669.64, 0
);

/* INSERT QUERY NO: 411 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
411, 90000329, 'VALVULA DE GAS SIT SIGMA 840 NO MODUL.', 1, 172.38, 172.38, 0
);

/* INSERT QUERY NO: 412 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
412, 90000418, 'VALVULA DE GAS T80 GN', 1, 95.72, 95.72, 0
);

/* INSERT QUERY NO: 413 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
413, 90000394, 'VALVULA DE GAS TX GL', 1, 74.78, 74.78, 0
);

/* INSERT QUERY NO: 414 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
414, 90000395, 'VALVULA DE GAS TX40 GN', 1, 92.93, 92.93, 0
);

/* INSERT QUERY NO: 415 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
415, 90000396, 'VALVULA DE GAS TX70 GN', 1, 92.93, 92.93, 0
);

/* INSERT QUERY NO: 416 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
416, 90000639, 'VALVULA DE LLENADO GHK', 1, 18.83, 18.83, 0
);

/* INSERT QUERY NO: 417 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
417, 90000086, 'VALVULA DE PURGA DE COLUMNA 3/8', 1, 19.00, 19.00, 0
);

/* INSERT QUERY NO: 418 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
418, 90000390, 'VALVULA ESFERICA 1', 1, 38.36, 38.36, 0
);

/* INSERT QUERY NO: 419 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
419, 90000291, 'VALVULA GAS DIVA CONDENSACION', 1, 182.69, 182.69, 0
);

/* INSERT QUERY NO: 420 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
420, 90000087, 'VALVULA GAS SIT NOVA 820', 1, 267.22, 267.22, 0
);

/* INSERT QUERY NO: 421 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
421, 90000088, 'VALVULA GAS SIT SIGMA 845 MODULANTE', 1, 233.82, 233.82, 0
);

/* INSERT QUERY NO: 422 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
422, 90000619, 'VALVULA MEZCALDORA 3/4 - 1 UTI', 1, 217.14, 217.14, 0
);

/* INSERT QUERY NO: 423 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
423, 90000341, 'VALVULA PURGA CALDERA ELECTRICA', 1, 61.22, 61.22, 0
);

/* INSERT QUERY NO: 424 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
424, 90000607, 'VALVULA SOBREPR. 1/2 8 BAR TERMOT. TE', 1, 14.78, 14.78, 0
);

/* INSERT QUERY NO: 425 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
425, 90000387, 'VASO EXPANSION 6 L CALDERA ELECTRICA', 1, 144.25, 144.25, 0
);

/* INSERT QUERY NO: 426 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
426, 90000074, 'VASO EXPANSION 8 L 1/2 DIVA', 1, 98.31, 98.31, 0
);

/* INSERT QUERY NO: 427 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
427, 90000410, 'VASO EXPANSION 8 L 1/2 DIVA - PK x 5', 5, 477.19, 95.44, 0
);

/* INSERT QUERY NO: 428 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
428, 90000292, 'VASO EXPANSION 9 L DIVA CONDENSACION', 1, 157.01, 157.01, 0
);

/* INSERT QUERY NO: 429 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
429, 90000089, 'VASTAGO VALVULA GRUPO HIDRAUL. DIVA', 1, 15.88, 15.88, 0
);

/* INSERT QUERY NO: 430 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
430, 90000201, 'VENTILADOR 47W DIVA 24/32 C/SOPORTE', 1, 176.73, 176.73, 0
);

/* INSERT QUERY NO: 431 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
431, 90000090, 'VENTILADOR 47W DIVA DUO/UNICA', 1, 167.01, 167.01, 0
);

/* INSERT QUERY NO: 432 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
432, 90000554, 'VENTILADOR ALKON 70/140', 1, 1277.01, 1277.01, 0
);

/* INSERT QUERY NO: 433 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
433, 90000293, 'VENTILADOR DIVA CONDENSACION', 1, 649.39, 649.39, 0
);

/* INSERT QUERY NO: 434 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
434, 90000313, 'VENTURI P/ VENTILADOR SHN C/ SOPORTE', 1, 1.97, 1.97, 0
);

/* INSERT QUERY NO: 435 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
435, 90000091, 'VENTURI VENTILADOR DIVA DUO/UNICA', 1, 3.92, 3.92, 0
);

/* INSERT QUERY NO: 436 */
INSERT INTO repuestos(id, codigo, descripcion, pk, precio_de_venta, precio, destacado)
VALUES
(
436, 90000131, 'VISOR VIDRIO C/GUARNICION DIVA/TX', 1, 10.22, 10.22, 0
);

ALTER TABLE repuestos
DROP COLUMN pk;

ALTER TABLE repuestos
DROP COLUMN precio_de_venta;
