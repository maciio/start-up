SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS`ptm_c_usuario`;
CREATE TABLE ptm_c_usuario(
	id_usuario bigint(20) not null AUTO_INCREMENT,
	nombre varchar(30) not null,
	apellido_paterno varchar(30) not null,
	apellido_materno varchar(30) not null,
	ciudad varchar(30) not null,
	estado Varchar(30) not null,
	calle_principal Varchar(30) not null,
    calles_secundarias varchar(30) null,
	numero_exterior int(11) not null,
	codigo_postal int(7) not null,
	numero_celular int(10) null,
	link varchar(200) null,
	fecha_creacion date not null,
	usuario_creacion varchar(10) not null,
	fecha_modificacion date null,
	usuario_modificacion varchar(10) null,
	version int null,
	PRIMARY KEY (id_usuario)
)  ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT ='Tabla de usuarios';

