create database prestametumaleta;

use prestametumaleta;

create table ptm_c_usuario
(
	usuario_id bigint(11) not null primary key,
	nombre varchar(20) not null,
	apellidoPaterno varchar(30) not null,
	apellidoMaterno varchar(30) not null,
	ciudad varchar(30) not null,
	estado Varchar(30) not null,
	callePrincipal Varchar(30) not null,
	callesSecundarias varchar(30) not null,
	numeroExterior int(11),
	codigoPostal int(7) not null,
	numeroCelular int(10) not null,
	usCreado int(11) not null,
	usModificado int(11),
	fechaCreado date not null,
	fechaModificado date,
	link varchar(200)
);

create table ptm_c_distancia
(
	distancia_id bigint(11) not null primary key,
	nombre varchar(30) not null,
	costo decimal not null,
	usCreado int(11) not null,
	usModificado int(11),
	fechaCreado date not null,
	fechaModificado date,
	link varchar(200)
);

create table ptm_h_reputacion
(
	reputacion_id bigint(11) not null primary key,
	usuario_id bigint(11) not null,
	calificacion int(1) not null,
	comentario varchar(300) not null,
	fecha date not null,
	usCreado int(11) not null,
	usModificado int(11),
	fechaCreado date not null,
	fechaModificado date,
	link varchar(200)
	foreign key (usuario_id) references ptm_c_usuario(usuario_id)
);

create table ptm_t_transporte
(
	transporte_id bigint(11) not null primary key,
	usuario_id bigint(11) not null,
	distancia_id bigint(11) not null,
	Origen varchar(30) not null,
	Destino varchar(30) not null,
	FechaSalida date not null,
	FechaLlegada date not null,
	UsCreado int(11) not null,
	UsModificado int(11),
	FechaCreado date not null,
	FechaModificado date,
	Link varchar(200),
	foreign key (usuario_id) references ptm_c_usuario(usuario_id),
	foreign key (distancia_id) references ptm_c_distancia(distancia_id)
);

create table ptm_t_envio
(
	envio_id bigint(11) not null primary key,
	usuario_id bigint(11) not null,
	uransporte_id bigint(11) not null,
	foreign key (usuario_id) references ptm_c_usuario(usuario_id),
	foreign key (transporte_id) references ptm_t_transporte(transporte_id)
);