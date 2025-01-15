---CONSULTAS

---- Tiempo
select distinct fechaemitida, convert(int, datepart(year,fechaemitida)) as año,
					 convert(int, datepart(month,fechaemitida)) as mes ,
					 convert(int, datepart(day,fechaemitida)) as dia 		
from ventas 


----- tipo de comprobantes
select distinct nombretipo
from tipocomprobante


---- empleados
select distinct dni,nombres,apellidos,turno,
				genero,direccion, telefono,correo
from empleados


---clientes
select distinct nombre,apellido,RUC,direccion,
					telefono,correo
from clientes


---productos
select distinct p.nombreproducto, c.descripcion as "Categoria", 
		p.descripcion,p.precio,p.stock, mp.nombre_marca, p.estado
from productos p 
inner join categoria c on p.idcategoria = c.idcategoria
inner join marca_producto mp on p.idmarca=mp.idmarca


--- TABLA HECHO CONSULTA 
------------------------------------------------ 
select distinct v.serie, v.numero, v.fechaemitida, v.horaemitida, det.cantidad,
	   v.IGV, v.subtotal, v.total,v.estado,cli.idcliente,emp.idempleados,
	   pro.idproducto, tc.idtipocomprobante, ti.idtiempo
from FerreteriaKong.dbo.ventas v
inner join FerreteriaKong.dbo.tipocomprobante tc on tc.idtipocomprobante=v.idtipocomprobante
inner join FerreteriaKong.dbo.clientes cli on cli.idcliente=v.idcliente
inner join FerreteriaKong.dbo.empleados emp on emp.idempleados=v.idempleados
inner join FerreteriaKong.dbo.detalleVentas det on det.idventa=v.idventas
inner join FerreteriaKong.dbo.productos pro on pro.idproducto=det.idproducto
inner join FerreteriaKong.dbo.categoria ca on ca.idcategoria=pro.idcategoria
inner join FerreteriaKong.dbo.marca_producto mp on mp.idmarca=pro.idmarca

inner join FerreteriaModeloEstrella.dbo.dim_tiempo ti on ti.fecha = v.fechaemitida
inner join FerreteriaModeloEstrella.dbo.dim_clientes cl on cl.idcliente=cli.idcliente and cl.idcliente = cli.idcliente
inner join FerreteriaModeloEstrella.dbo.dim_empleados em on em.idempleados=emp.idempleados and em.idempleados = emp.idempleados
inner join FerreteriaModeloEstrella.dbo.dim_productos pr on pr.idproducto=pro.idproducto and pr.idproducto = pro.idproducto
inner join FerreteriaModeloEstrella.dbo.dim_tipocomprobante tp on tp.idtipocomprobante= tc.idtipocomprobante and tp.idtipocomprobante = tc.idtipocomprobante


--------------------------------------------------------------
select * from ventas
select * from hecho_ventas

select distinct p.nombreproducto, c.descripcion as "Categoria", 
		p.descripcion,p.precio,p.stock, mp.nombre_marca, p.estado
from productos p  
inner join categoria c on p.idcategoria = c.idcategoria
inner join marca_producto mp on p.idmarca=mp.idmarca
