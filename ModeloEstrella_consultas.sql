CREATE DATABASE FerreteriaModeloEstrella;
GO

USE FerreteriaModeloEstrella;
GO


-- Creación de las dimensiones
create TABLE dim_productos (
    idproducto INT PRIMARY KEY IDENTITY(1,1),
    nombreproducto VARCHAR(45),
	descripcion VARCHAR(45),
	categoria varchar(45),
	marca varchar(100),
    precio DECIMAL(10,2),
    stock INT,
	estado bit default 1,
);


create TABLE dim_clientes (
    idcliente INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
	RUC VARCHAR(11),
    direccion VARCHAR(100) NOT NULL,
    telefono VARCHAR(9) NOT NULL,
	correo VARCHAR(45)NOT NULL,
);


create TABLE dim_empleados (
    idempleados INT PRIMARY KEY IDENTITY(1,1),
    dni VARCHAR(8) NOT NULL,
    nombres VARCHAR(45) NOT NULL,
    apellidos VARCHAR(45) NOT NULL,
    turno VARCHAR(45) NOT NULL,
    genero CHAR(1) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    correo VARCHAR(45) NOT NULL,
);



CREATE TABLE dim_tipocomprobante (
    idtipocomprobante INT PRIMARY KEY IDENTITY(1,1),
    nombretipo VARCHAR(45)
);


create TABLE dim_tiempo (
    idtiempo INT PRIMARY KEY IDENTITY(1,1),
    fecha date,
	año int,
	mes varchar(45),
	dia int,
);

create TABLE hecho_ventas (
    idventas INT PRIMARY KEY IDENTITY(1,1),
	serie varchar (45) NOT NULL,
	numero varchar (45) NOT NULL,
    fechaemitida DATE NOT NULL,
    horaemitida time NOT NULL,
	cantidad varchar NOT NULL,
	IGV DECIMAL(10,2),
	subtotal DECIMAL(10,2),
    total DECIMAL(10,2),
	estado bit default 1,
    idcliente INT NOT NULL,
    idempleados INT NOT NULL,
	idtiempo INT NOT NULL,
	idproducto int NOT NULL,
    idtipocomprobante INT NOT NULL,
    CONSTRAINT fk_ventas_idclientes FOREIGN KEY (idcliente) REFERENCES dim_clientes (idcliente),
    CONSTRAINT fk_ventas_idempleados FOREIGN KEY (idempleados) REFERENCES dim_empleados (idempleados),
    CONSTRAINT fk_ventas_idtipocomprobante FOREIGN KEY (idtipocomprobante) REFERENCES dim_tipocomprobante(idtipocomprobante),
	CONSTRAINT fk_ventas_idproducto FOREIGN KEY (idproducto) REFERENCES dim_productos(idproducto),
	CONSTRAINT fk_ventas_idtiempo FOREIGN KEY (idtiempo) REFERENCES dim_tiempo(idtiempo)
);
GO
