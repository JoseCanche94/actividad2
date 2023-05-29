select * from factura

select * from cliente

select * from categoria

select * from detalle

select * from Empleados

select * from producto

select * from Sucursales

create view vw_cliente2021 as
select id_cliente, fecha 
from factura 
where (fecha >= '2021-01-01' and fecha <= '2021-12-31')

select * from vw_cliente2021

create view vw_clientes2022 as
select id_cliente, fecha 
from factura 
where (fecha >= '2022-01-01' and fecha <= '2022-12-13')

select * from vw_clientes2022

create view vw_clientesdiciembre2021 as
select id_cliente, fecha 
from factura 
where (fecha >= '2021-12-01' and fecha <= '2021-12-31')

select * from vw_clientesdiciembre2021

create view vw_valentina as
select f.id_factura, f.id_cliente, f.id_detalle, c.nombre, c.apellido 
from factura f, cliente c
where (f.id_cliente = '2'and c.id_cliente = '2')

select * from vw_valentina

create view vw_zayra as
select f.id_factura, f.id_cliente, f.id_detalle, c.nombre, c.apellido 
from factura f, cliente c
where (f.id_cliente = '17'and c.id_cliente = '17')

select * from vw_zayra

create view vw_dante as
select f.id_factura, f.id_cliente, f.id_detalle, c.nombre, c.apellido 
from factura f, cliente c
where (f.id_cliente = '24' and c.id_cliente = '24')

select * from vw_dante

create view vw_ana as
select f.id_factura, f.id_cliente, f.id_detalle, c.nombre, c.apellido 
from factura f, cliente c
where (f.id_cliente = '4' and c.id_cliente = '4')

select * from vw_ana

create view vw_rodrigo as
select f.id_factura, f.id_cliente, f.id_detalle, c.nombre, c.apellido 
from factura f, cliente c
where (f.id_cliente = '11' and c.id_cliente ='11')

select * from vw_rodrigo

create view vw_productoventa as
SELECT * FROM detalle
WHERE cantidad = (SELECT MAX(cantidad) FROM detalle)

select * from vw_productoventa

create view vw_productostock as
SELECT * FROM producto
WHERE stock = (SELECT MAX(stock) FROM producto)

select * from vw_productostock

create view vw_orden as
select * from factura
order by fecha asc

select * from cliente
order by CAST(nombre AS varchar(max))

create view vw_falda as 
select p.id_producto, p.nombre, p.id_categoria 
from producto p, categoria c
where (p.id_categoria = '2'and c.id_categoria = '2')

select * from vw_falda

create view vw_pantalon as
select p.id_producto, p.nombre, p.id_categoria 
from producto p, categoria c
where (p.id_categoria = '3'and c.id_categoria = '3')

select * from vw_pantalon 

create view vw_chamarra as
select p.id_producto, p.nombre, p.id_categoria 
from producto p, categoria c
where (p.id_categoria = '7'and c.id_categoria = '7')

select * from vw_chamarra

create view vw_zapato as
select p.id_producto, p.nombre, p.id_categoria 
from producto p, categoria c
where (p.id_categoria = '6'and c.id_categoria = '6')

select * from vw_zapato

create view vw_accesorio as
select p.id_producto, p.nombre, p.id_categoria 
from producto p, categoria c
where (p.id_categoria = '10'and c.id_categoria = '10')

select * from vw_accesorio

create view vw_encargados as
select encargado from Sucursales

select * from vw_encargados

create view vw_empconstitucion as
select nombre from Empleados
where (sucursal ='Akira´s boutique:Constitucion')

select * from vw_empconstitucion

create view vw_mayor30 as
select * from cliente
where (fec_nac < '1993-01-01')

select * from vw_mayor30