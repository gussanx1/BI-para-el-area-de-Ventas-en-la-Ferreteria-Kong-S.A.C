create DATABASE FerreterriaKong;
GO

USE FerreterriaKong;
GO

CREATE TABLE usuarios (
    idusuarios INT PRIMARY KEY IDENTITY(1,1),
    nombreperfil VARCHAR(45) NOT NULL,
    correo VARCHAR(45) UNIQUE NOT NULL,
    clave VARCHAR(45) NOT NULL,
	estado bit default 1
);
GO



CREATE TABLE empleados (
    idempleados INT PRIMARY KEY IDENTITY(1,1),
    dni VARCHAR(8) NOT NULL,
    nombres VARCHAR(45) NOT NULL,
    apellidos VARCHAR(45) NOT NULL,
    turno VARCHAR(45) NOT NULL,
    genero CHAR(1) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    correo VARCHAR(45) UNIQUE NOT NULL,
    idusuarios INT NOT NULL,
    CONSTRAINT fk_empleados_idusuarios FOREIGN KEY (idusuarios) REFERENCES usuarios (idusuarios)
);
GO


CREATE TABLE tipocliente (
    idtipocliente INT PRIMARY KEY IDENTITY(1,1),
    nombretipo VARCHAR(45) NOT NULL
);
GO


CREATE TABLE clientes (
    idcliente INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
	RUC VARCHAR(11),
    direccion VARCHAR(100) NOT NULL,
    telefono VARCHAR(9) NOT NULL,
    correo VARCHAR(45) NOT NULL,
    idtipocliente INT NOT NULL,
    CONSTRAINT fk_cliente_tipocliente FOREIGN KEY (idtipocliente) REFERENCES tipocliente (idtipocliente)
);
GO

CREATE TABLE tipocomprobante (
    idtipocomprobante INT PRIMARY KEY IDENTITY (1,1),
    nombretipo VARCHAR(45) NOT NULL,
);
GO

CREATE TABLE marca_producto (
    idmarca INT PRIMARY KEY IDENTITY(1,1),
    nombre_marca VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255)
);
GO


CREATE TABLE categoria (
    idcategoria INT PRIMARY KEY IDENTITY(1,1),
    descripcion VARCHAR(45) NOT NULL
);
GO


CREATE TABLE productos (
    idproducto INT PRIMARY KEY IDENTITY(1,1),
    nombreproducto VARCHAR(45) NOT NULL,
    descripcion VARCHAR(45) NOT NULL,
    precio DECIMAL(10,2)  NOT NULL,
    stock INT NOT NULL,
	estado bit default 1,
    idcategoria INT NOT NULL,
    idmarca INT NOT NULL,
    CONSTRAINT fk_productos_marca FOREIGN KEY (idmarca) REFERENCES marca_producto (idmarca),
    CONSTRAINT fk_productos_idcategoria FOREIGN KEY (idcategoria) REFERENCES categoria (idcategoria)
);
GO

CREATE TABLE ventas (
    idventas INT PRIMARY KEY IDENTITY(1,1),
	serie varchar (45) NOT NULL,
	numero varchar (45) NOT NULL,
    fechaemitida DATE NOT NULL,
    horaemitida time NOT NULL,
	IGV DECIMAL(10,2),
	subtotal DECIMAL(10,2),
    total DECIMAL(10,2),
	estado bit default 1,
    idcliente INT NOT NULL,
    idempleados INT NOT NULL,
    idtipocomprobante INT NOT NULL,
    CONSTRAINT fk_ventas_idclientes FOREIGN KEY (idcliente) REFERENCES clientes (idcliente),
    CONSTRAINT fk_ventas_idempleados FOREIGN KEY (idempleados) REFERENCES empleados (idempleados),
    CONSTRAINT fk_ventas_idtipocomprobante FOREIGN KEY (idtipocomprobante) REFERENCES tipocomprobante(idtipocomprobante)
);
GO

alter table ventas alter column horaemitida time not null

CREATE TABLE detalleVentas (
    iddetalleVenta INT PRIMARY KEY IDENTITY(1,1),
    idventa INT NOT NULL,
    idproducto INT NOT NULL,
    cantidad INT NOT NULL,
    CONSTRAINT fk_detalleventas_idventa FOREIGN KEY (idventa) REFERENCES ventas (idventas),
    CONSTRAINT fk_detalleventas_idproducto FOREIGN KEY (idproducto) REFERENCES productos (idproducto)
);
GO


CREATE TABLE proveedores (
	idproveedor INT PRIMARY KEY IDENTITY(1,1),
	ruc CHAR (11),
	nombre VARCHAR(100) NOT NULL,
	direccion VARCHAR(100) NOT NULL,
	telefono VARCHAR(20) NOT NULL,
	correo VARCHAR(100) NOT NULL
);
GO

CREATE TABLE compras (
    idcompras INT PRIMARY KEY IDENTITY(1,1),
    numeroserie INT,
    idproveedor INT,
    total DECIMAL(10,2),
    fechare DATE,
    CONSTRAINT fk_compras_idproveedor FOREIGN KEY (idproveedor) REFERENCES proveedores (idproveedor)
);
GO


CREATE TABLE detalleCompras (
    iddetalleCompras INT PRIMARY KEY IDENTITY(1,1),
    idcompras INT NOT NULL,
    idproducto INT NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_detalleCompras_idcompras FOREIGN KEY (idcompras) REFERENCES compras (idcompras),
    CONSTRAINT fk_detalleCompras_idproducto FOREIGN KEY (idproducto) REFERENCES productos (idproducto)
);
GO



select * from usuarios
select * from empleados
select * from clientes
select * from tipocomprobante
select * from marca_producto
select * from categoria
select * from productos
select * from ventas
select * from detalleVentas




