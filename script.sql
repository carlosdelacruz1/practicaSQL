create schema examen;

set search_path to examen, "$user", public;


--DDL 

--Creamos todas las tablas necesarias

-- tabla grupo empresarial

create table grupo_empresarial (
	idgrupo varchar(20) not null, --PK
	name varchar(20) not null,
	comentario varchar(512) null
);

alter table grupo_empresarial
add constraint grupo_empresarial_PK primary key(idgrupo);

-- tabla marcas

create table marcas (
	idmarca varchar(20) not null, --PK
	name varchar(20) not null,
	comentario varchar(512) null

);

alter table marcas
add constraint marcas_PK primary key(idmarca);

-- tabla modelos

create table modelos(
	idmodelo varchar(20) not null, --PK
	name varchar(20) not null,
	comentario varchar(512) null
	
);

alter table modelos
add constraint modelos_PK primary key(idmodelo);


-- Tabla fecha de compra

create table fecha_compra(
	fecha date not null, --PK
	name varchar(20) not null,
	comentario varchar(512) null

);

alter table fecha_compra
add constraint fecha_compra_PK primary key(fecha);

-- tabla matricula

create table matricula(
	matricula_num varchar(20) not null, --PK
	name varchar(20) not null,
	comentario varchar(512) null

);

alter table matricula
add constraint matricula_PK primary key(matricula_num);

-- tabla colores

create table colores (
	color varchar(20) not null, --PK
	name varchar(20) not null,
	comentario varchar(512) null
);

alter table colores
add constraint colores_PK primary key(color);

-- tabla kilometraje total

create table kilometraje_total(
	kilometraje integer not null, --PK
	name varchar(20) not null,
	comentario varchar(512) null

);

alter table kilometraje_total
add constraint kilometraje_total_PK primary key(kilometraje);

-- tabla ASEGURADORAS

create table aseguradoras(
	id_aseguradoras varchar(20) not null, --PK
	name varchar(20) not null,
	comentario varchar(512) null

);

alter table aseguradoras
add constraint aseguradoras_PK primary key(id_aseguradoras);

-- tabla numero de poliza

create table polizas(
	num_poliza varchar(20) not null, --PK
	name varchar(20) not null,
	comentario varchar(512) null
	
	);

alter table polizas
add constraint polizas_PK primary key(num_poliza);

-- tabla numero de revisiones

create table revisiones(
	num_revision integer not null, --PK
	name varchar(20) not null,
	comentario varchar(512) null

	);

alter table revisiones
add constraint revisiones_PK primary key(num_revision);

-- tabla kilometros revision

create table kilometros_revisiones(
	kilometros_revision integer not null, --PK
	name varchar(20) not null,
	comentario varchar(512) null

	);

alter table kilometros_revisiones
add constraint kilometros_revisiones_PK primary key(kilometros_revision);


-- tabla fecha revisiones

create table fechas_revision(
	fecha_revision date not null, --PK
	name varchar(20) not null,
	comentario varchar(512) null

	);

alter table fechas_revision
add constraint fechas_revision_PK primary key(fecha_revision);

-- tabla importe revision

create table importe_revisiones(
	precio_revision money not null, --PK
	name varchar(20) not null,
	comentario varchar(512) null

	);

alter table importe_revisiones
add constraint importe_revisiones_PK primary key(precio_revision);


--- Creamos los coches

create table coches(
	idcoche varchar(20)  not null, --PK
	name varchar(20) null, 
	idgrupo varchar(20) not null, --FK
	idmarca varchar(20) not null, --FK
	idmodelo varchar(20) not null, --FK
	matricula_num varchar(20) not null, --FK
	color varchar(20) not null, --FK
	kilometraje integer not null, --FK
	id_aseguradoras varchar(20) not null, --FK
	num_poliza varchar(20) not null, --FK
	num_revision integer not null, --FK
	kilometros_revision integer not null, --FK
	fecha date not null, --FK
	fecha_revision date not null, --FK
	precio_revision money  not null, --FK
	comentario varchar(512) null

	);

alter table coches
add constraint coches_PK primary key(idcoche);

alter table coches
add constraint coches_grupo_FK foreign key(idgrupo) references grupo_empresarial(idgrupo);

alter table coches
add constraint coches_marcas_FK foreign key(idmarca) references marcas(idmarca);

alter table coches
add constraint coches_modelos_FK foreign key(idmodelo) references modelos(idmodelo);

alter table coches
add constraint coches_matricula_num_FK foreign key(matricula_num) references matricula(matricula_num);

alter table coches
add constraint coches_color_FK foreign key(color) references colores(color);

alter table coches
add constraint coches_kilometraje_FK foreign key(kilometraje) references kilometraje_total(kilometraje);

alter table coches
add constraint coches_aseguradoras_FK foreign key(id_aseguradoras) references aseguradoras(id_aseguradoras);

alter table coches
add constraint coches_polizas_FK foreign key(num_poliza) references polizas(num_poliza);

alter table coches
add constraint coches_revisiones_FK foreign key(num_revision) references revisiones(num_revision);

alter table coches
add constraint coches_kilometros_revision_FK foreign key(kilometros_revision) references kilometros_revisiones(kilometros_revision);


--DML

-- aqui insertamos los datos de cada tabla

-- Grupo empresarial
insert into examen.grupo_empresarial  (idgrupo, name, comentario)
values ('Renault Group', 'Renault Group','');

insert into examen.grupo_empresarial  (idgrupo, name, comentario)
values ('Nissan group', 'Nissan group','');

insert into examen.grupo_empresarial  (idgrupo, name, comentario)
values ('BMW Group', 'BMW group','');

-- Datos Marcas

insert into examen.marcas  (idmarca, name, comentario)
values ('Renault', 'Renault','');

insert into examen.marcas  (idmarca, name, comentario)
values ('Dacia', 'DACIA','');

insert into examen.marcas  (idmarca, name, comentario)
values ('Nissan', 'Nissan','');

insert into examen.marcas  (idmarca, name, comentario)
values ('Mitsubisi', 'Mitsubisi','');

insert into examen.marcas  (idmarca, name, comentario)
values ('Mini', 'Mini','');

-- Datos modelos

insert into examen.modelos (idmodelo, name, comentario)
values ('Duster', 'Duster','');

insert into examen.modelos (idmodelo, name, comentario)
values ('Sandero', 'Sandero','');

insert into examen.modelos (idmodelo, name, comentario)
values ('Megan', 'Megan','');

insert into examen.modelos (idmodelo, name, comentario)
values ('Clio', 'Clio','');

insert into examen.modelos (idmodelo, name, comentario)
values ('Juke', 'Juke','');

insert into examen.modelos (idmodelo, name, comentario)
values ('Qasqhai', 'Qasqhai','');

insert into examen.modelos (idmodelo, name, comentario)
values ('Takai', 'Takai','');

insert into examen.modelos (idmodelo, name, comentario)
values ('Cabrio', 'Cabrio','');

insert into examen.modelos (idmodelo, name, comentario)
values ('Clubman', 'Clubman','');


-- Datos fecha de compra

insert into examen.fecha_compra  (fecha, name, comentario)
values ('2020-02-07', 'FEBRERO','');

insert into examen.fecha_compra  (fecha, name, comentario)
values ('2019-10-07', '2019-10-07','');

insert into examen.fecha_compra  (fecha, name, comentario)
values ('2022-01-01', '2022-01-01','');

insert into examen.fecha_compra  (fecha, name, comentario)
values ('2019-02-07', '2019-02-07','');

insert into examen.fecha_compra  (fecha, name, comentario)
values ('2021-03-02', '2021-03-02','');

insert into examen.fecha_compra  (fecha, name, comentario)
values ('2022-02-03', '2022-02-03','');

insert into examen.fecha_compra  (fecha, name, comentario)
values ('2018-06-07', '2018-06-07','');

insert into examen.fecha_compra  (fecha, name, comentario)
values ('2018-01-07', '2019-09-07','');

insert into examen.fecha_compra  (fecha, name, comentario)
values ('2018-02-09', '2018-02-09','');

insert into examen.fecha_compra  (fecha, name, comentario)
values ('2027-02-07', '2027-02-07','');

-- DATOS MATRICULAS

insert into examen.matricula (matricula_num, name, comentario)
values ('EU2891', 'europa','');

insert into examen.matricula (matricula_num, name, comentario)
values ('EU2822', 'europa','');

insert into examen.matricula (matricula_num, name, comentario)
values ('EU2671', 'europa','');

insert into examen.matricula (matricula_num, name, comentario)
values ('EU6078', 'europa','');

insert into examen.matricula (matricula_num, name, comentario)
values ('EU6789', 'europa','');

insert into examen.matricula (matricula_num, name, comentario)
values ('EU1111', 'europa','');

insert into examen.matricula (matricula_num, name, comentario)
values ('EU1678', 'europa','');

insert into examen.matricula (matricula_num, name, comentario)
values ('EU2222', 'europa','');

insert into examen.matricula (matricula_num, name, comentario)
values ('EU3481', 'europa','');

insert into examen.matricula (matricula_num, name, comentario)
values ('EU1098', 'europa','');

-- Datos colores

insert into examen.colores (color, name, comentario)
values ('AZUL', 'azul','');

insert into examen.colores (color, name, comentario)
values ('VERDE', 'verde','');

insert into examen.colores (color, name, comentario)
values ('ROJO', 'rojo','');

insert into examen.colores (color, name, comentario)
values ('AMARILLO', 'amarillo','');

insert into examen.colores (color, name, comentario)
values ('GRIS', 'gris','');

-- DATOS KILOMETRAJE

insert into examen.kilometraje_total (kilometraje, name, comentario)
values ('2000', 'kilometros','');

insert into examen.kilometraje_total (kilometraje, name, comentario)
values ('1000', 'kilometros','');

insert into examen.kilometraje_total (kilometraje, name, comentario)
values ('4000', 'kilometros','');

insert into examen.kilometraje_total (kilometraje, name, comentario)
values ('80000', 'kilometros','');

insert into examen.kilometraje_total (kilometraje, name, comentario)
values ('79000', 'kilometros','');

insert into examen.kilometraje_total (kilometraje, name, comentario)
values ('5050', 'kilometros','');

insert into examen.kilometraje_total (kilometraje, name, comentario)
values ('2500', 'kilometros','');

insert into examen.kilometraje_total (kilometraje, name, comentario)
values ('3400', 'kilometros','');

insert into examen.kilometraje_total (kilometraje, name, comentario)
values ('10000', 'kilometros','');

insert into examen.kilometraje_total (kilometraje, name, comentario)
values ('200000', 'kilometros','');

-- DATOS ASEGURADORAS

insert into examen.aseguradoras (id_aseguradoras , name, comentario)
values ('AXA', 'aseguradora','');

insert into examen.aseguradoras (id_aseguradoras , name, comentario)
values ('MAPFRE', 'aseguradora','');

-- Datos numero poliza

insert into examen.polizas  (num_poliza , name, comentario)
values ('A234567', 'Poliza 1','');

insert into examen.polizas  (num_poliza , name, comentario)
values ('B234567', 'Poliza 2','');

insert into examen.polizas  (num_poliza , name, comentario)
values ('C234567', 'Poliza 3','');

insert into examen.polizas  (num_poliza , name, comentario)
values ('D234567', 'Poliza 4','');

insert into examen.polizas  (num_poliza , name, comentario)
values ('E234567', 'Poliza 5','');

insert into examen.polizas  (num_poliza , name, comentario)
values ('F234567', 'Poliza 6','');

insert into examen.polizas  (num_poliza , name, comentario)
values ('G234567', 'Poliza 7','');

insert into examen.polizas  (num_poliza , name, comentario)
values ('H234567', 'Poliza 8','');

insert into examen.polizas  (num_poliza , name, comentario)
values ('I234567', 'Poliza 9','');

insert into examen.polizas  (num_poliza , name, comentario)
values ('P234567', 'Poliza 10','');

-- datos nunmero revisiones

insert into examen.revisiones (num_revision, name, comentario)
values ('1', 'Primera','');

insert into examen.revisiones (num_revision, name, comentario)
values ('2', 'Segunda','');

insert into examen.revisiones (num_revision, name, comentario)
values ('3', 'Tercera','');

-- datos kilometros revisiones

insert into examen.kilometros_revisiones (kilometros_revision, name, comentario)
values ('1000', 'Primera revision','');

insert into examen.kilometros_revisiones (kilometros_revision, name, comentario)
values ('2000', 'Segunda revision','');

insert into examen.kilometros_revisiones (kilometros_revision, name, comentario)
values ('5000', 'Tercera revision','');


-- Datos fecha revision

insert into examen.fechas_revision  (fecha_revision, name, comentario)
values ('2018-02-07', 'Primera revision','');

insert into examen.fechas_revision  (fecha_revision, name, comentario)
values ('2020-02-07', 'Primera revision','');

insert into examen.fechas_revision  (fecha_revision, name, comentario)
values ('2022-02-07', 'Primera revision','');


-- Datos importe revision

insert into examen.importe_revisiones  (precio_revision, name, comentario)
values ('500', 'Primera revision','');

insert into examen.importe_revisiones  (precio_revision, name, comentario)
values ('1000', 'Segunda revision','');

insert into examen.importe_revisiones  (precio_revision, name, comentario)
values ('1500', 'Tercera revision','');


--- Creamos los coches

insert into examen.coches (idcoche, name , idgrupo, idmarca, idmodelo, matricula_num, color, kilometraje, id_aseguradoras, num_poliza, num_revision, kilometros_revision, fecha, fecha_revision, precio_revision, comentario)
values ('0001','', 'Renault Group','Renault', 'Megan','EU2891', 'VERDE', '2000', 'AXA', 'A234567', '1','1000','2018-02-07', '2018-02-07','500','');

insert into examen.coches (idcoche, name, idgrupo, idmarca, idmodelo, matricula_num, color, kilometraje, id_aseguradoras, num_poliza, num_revision, kilometros_revision, fecha, fecha_revision, precio_revision, comentario)
values ('0002','', 'Renault Group','Dacia', 'Sandero','EU2822', 'AMARILLO', '1000', 'MAPFRE', 'B234567', '2','2000','2019-10-07', '2020-02-07','1000','');

insert into examen.coches (idcoche, name, idgrupo, idmarca, idmodelo, matricula_num, color, kilometraje, id_aseguradoras, num_poliza, num_revision, kilometros_revision, fecha, fecha_revision, precio_revision, comentario)
values ('0003','', 'BMW Group','Mini', 'Cabrio','EU6789', 'AZUL', '2000', 'AXA', 'C234567', '1','1000','2020-02-07', '2018-02-07','500','');

insert into examen.coches (idcoche, name, idgrupo, idmarca, idmodelo, matricula_num, color, kilometraje, id_aseguradoras, num_poliza, num_revision, kilometros_revision, fecha, fecha_revision, precio_revision, comentario)
values ('0004','', 'Nissan group','Mitsubisi', 'Takai','EU1111', 'GRIS', '1000', 'MAPFRE', 'G234567', '3','5000','2018-06-07', '2022-02-07','1500','');

insert into examen.coches (idcoche, name, idgrupo, idmarca, idmodelo, matricula_num, color, kilometraje, id_aseguradoras, num_poliza, num_revision, kilometros_revision, fecha, fecha_revision, precio_revision, comentario)
values ('0005','', 'Nissan group','Nissan', 'Qasqhai','EU1678', 'ROJO', '4000', 'AXA', 'I234567', '1','2000','2018-02-09', '2022-02-07','500','');

insert into examen.coches (idcoche, name, idgrupo, idmarca, idmodelo, matricula_num, color, kilometraje, id_aseguradoras, num_poliza, num_revision, kilometros_revision, fecha, fecha_revision, precio_revision, comentario)
values ('0006','', 'BMW Group','Mini', 'Clubman','EU2222', 'AMARILLO', '80000', 'AXA', 'H234567', '3','2000','2022-02-03', '2022-02-07','1500','');

select * from examen.coches 
