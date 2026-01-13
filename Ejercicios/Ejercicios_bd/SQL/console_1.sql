
/* 1-Top clientes con más facturas */
select
    c.id as id_cliente,
    c.nombre as nombre_cliente,
    c.apellido as apeliido_cliente,
    count(f.id) as numero_de_facturas
from cliente c
join factura f on f.cliente_id = c.id
group by c.id
order by numero_de_facturas desc;


/* 2-Top clientes que más gastaron */

select
    c.id as id_cliente,
    c.nombre as nombre_cliente,
    c.apellido as apeliido_cliente,
    sum(fd.cantidad* p.precio) as total_gastado
from cliente c
join factura f on f.cliente_id = c.id
join factura_detalle fd on fd.factura_id = f.id
join producto p on p.id = fd.producto_id
group by c.id
order by total_gastado desc;

/* 3-Top monedas más utilizadas */

select
    m.id as id_moneda,
    m.nombre as moneda,
    count(f.id) as cantidad
from factura f
join moneda m on f.moneda_id = m.id
group by m.id, m.nombre
order by cantidad desc;

/* 4-Top proveedor de productos */
/* por aparicion */
select
    pr.id as id_proveedor,
    pr.nombre as nombre_proveedor,
    count(pr.id) as cantidad
from proveedor pr
join producto p on p.proveedor_id = pr.id
group by  pr.id, pr.nombre
order by cantidad desc;

/* por ganancias */
select
    pr.id as id_proveedor,
    pr.nombre as nombre_proveedor,
    cast(sum(fd.cantidad * p.precio) as int) as total_ganancias
from proveedor pr
join producto p on p.proveedor_id = pr.id
join factura_detalle fd on  fd.producto_id = p.id
group by pr.id
order by total_ganancias desc;

/* por cantidad de productos */
select
    pr.id as id_proveedor,
    pr.nombre as nombre_proveedor,
    sum(fd.cantidad) as cantidad_productos
from proveedor pr
join producto p on p.proveedor_id = pr.id
join factura_detalle fd on  fd.producto_id = p.id
group by pr.id
order by cantidad_productos desc;

/* 5-Productos más vendidos */

select
    p.id as id_producto,
    p.nombre as nombre_producto,
    sum(fd.cantidad) as cantidad_vendida
from producto p
join factura_detalle fd on fd.producto_id = p.id
group by p.id, p.nombre
order by cantidad_vendida desc;

/* 6-Productos menos vendidos */
select
    p.id as id_producto,
    p.nombre as nombre_producto,
    sum(fd.cantidad) as cantidad_vendida
from producto p
join factura_detalle fd on fd.producto_id = p.id
group by p.id, p.nombre
order by cantidad_vendida;

/* 7-Consulta que muestre fecha de emisión de factura, nombre y apellido del cliente,
   nombres de productos de esa factura, cantidades compradas, nombre de tipo de factura de una factura específica
 */

select
    f.fecha_emision as fecha_emision,
    c.nombre as nombre_cliente,
    c.apellido as apellido_cliente,
    p.nombre as nombre_producto,
    fd.cantidad as cantidad_comprada,
    tf.nombre as tipo_factura
from factura f
join cliente c on f.cliente_id = c.id
join factura_detalle fd on fd.factura_id = f.id
join producto p on p.id = fd.producto_id
join factura_tipo tf on tf.id = f.factura_tipo_id
group by f.id, c.id, p.id, fd.cantidad, tf.id
order by cantidad_comprada desc;


/* 8-Montos de facturas ordenadas según totales */
select
    f.id as id_factura,
    sum(p.precio * ft.cantidad) as total_productos
from factura f
join factura_detalle ft on ft.factura_id = f.id
join producto p on p.id = ft.producto_id
group by  f.id
order by total_productos desc;


/* 9-Mostrar el iva 10% de los montos totales de facturas (suponer que todos los productos tienen IVA 10%)*/

select
    f.id as id_factura,
    sum(p.precio * ft.cantidad) as total_productos,
    sum(p.precio * ft.cantidad)/11 as iva_10_por_ciento,
    (sum(p.precio * ft.cantidad)/11) + sum(p.precio * ft.cantidad) as total_con_iva
from factura f
join factura_detalle ft on ft.factura_id = f.id
join producto p on p.id = ft.producto_id
group by  f.id
order by iva_10_por_ciento desc;
