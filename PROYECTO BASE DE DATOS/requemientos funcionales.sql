---------- requerimientos funcionales--

----1. Determinar el total de ventas por cliente en un periodo de tiempo determinado.
select 
concat(c.nombre ,' ', ' ', c.apellido) AS Cliente,
	v.fechaemitida AS FechaVentas,
		SUM(v.total) AS TotalVentas
from ventas v
inner join clientes c on v.idcliente=c.idcliente
where v.fechaemitida between '2015' and '2024'
GROUP BY c.nombre, c.apellido, v.fechaemitida
Order by v.fechaemitida asc; ---opcional 




--2. Determinar el total de ventas por tipo de comprobante en un periodo de tiempo determinado.

select tc.nombretipo as TipoComprobante, v.fechaemitida AS FechaVentas, SUM(v.total) as TotalVentas
from ventas v
inner join tipocomprobante tc on v.idtipocomprobante = tc.idtipocomprobante
where v.fechaemitida between '2016' AND '2024' 
and tc.nombretipo = 'boleta'
group by tc.nombretipo,v.fechaemitida
order by v.fechaemitida asc; ---opcional 




--3. Determinar el total de ventas realizadas por los empleados en un periodo de tiempo determinado.

select e.idempleados,
concat (e.nombres,' ', ' ', e.apellidos) as Cliente,
 v.fechaemitida,
SUM(v.total) as TotalVentas
from ventas v
inner join empleados e on v.idempleados = e.idempleados
where v.fechaemitida between '2020' and '2024' 
group by e.idempleados, e.nombres, e.apellidos, v.fechaemitida
order by v.fechaemitida asc; ---opcional 



--4. Determinar la cantidad de productos vendidos en un periodo de tiempo específico.

select p.descripcion AS Producto, 
	   v.fechaemitida AS Fechas,
	   SUM(de.cantidad) AS CantidadVendida
from productos p
inner join detalleVentas de ON p.idproducto = de.idproducto
inner join ventas v ON de.idventa = v.idventas
WHERE v.fechaemitida BETWEEN '2022' AND '2024' 
group by p.descripcion,v.fechaemitida
order by CantidadVendida desc;---opcional 





