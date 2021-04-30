use financiero;

-- Estado Cobro

INSERT INTO estadocobro (codigo, descripcion)
	VALUES (1, 'cancelado');

INSERT INTO estadocobro (codigo, descripcion)
	VALUES (2, 'pendiente');	

-- Tipo Cobro

INSERT INTO tipocobro (codigo, descripcion, monto)
	VALUES (1, 'Matrícula', 5000);

INSERT INTO tipocobro (codigo, descripcion, monto)
	VALUES (2, 'Bienestar Estudiantil', 1870);

INSERT INTO tipocobro (codigo, descripcion, monto)
	VALUES (3, 'Póliza', 5995);

INSERT INTO tipocobro (codigo, descripcion, monto)
	VALUES (4, 'Derechos Estudio: 12', 235000);

INSERT INTO tipocobro (codigo, descripcion, monto)
	VALUES (5, 'Morosidad LAIMI', 300);

-- CobroXEstudiante

INSERT INTO cobroXestudiante (codigo, cedula, tipocobro, estadoCobro, fechaLimite, fechaCancelacion)
	VALUES (1, 116458757, 3, 1, '2021-03-26', '2021-02-21');

INSERT INTO cobroXestudiante (codigo, cedula, tipocobro, estadoCobro, fechaLimite, fechaCancelacion)
	VALUES (2, 109840574, 1, 1, '2021-03-26', '2021-02-21');

INSERT INTO cobroXestudiante (codigo, cedula, tipocobro, estadoCobro, fechaLimite, fechaCancelacion)
	VALUES (3, 704560213, 4, 2, '2021-03-26', '2021-02-21');

INSERT INTO cobroXestudiante (codigo, cedula, tipocobro, estadoCobro, fechaLimite, fechaCancelacion)
	VALUES (4, 401230654, 5, 1, '2021-03-26', '2021-02-21');

INSERT INTO cobroXestudiante (codigo, cedula, tipocobro, estadoCobro, fechaLimite, fechaCancelacion)
	VALUES (5, 301540456, 3, 2, '2021-03-26', '2021-02-21');