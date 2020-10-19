create database if not exists producto;
use producto;
create table usuario
(
usuarioId int(11) auto_increment,
usuarioNombre varchar(50) not null,
usuarioTelefono int(11) not null,
usuarioCorreo varchar(50) not null,
usuarioClave varchar(50) not null,
primary key(usuarioId)
);

create table rol
(
rolId int(11) not null,
rolNombre varchar(50),
primary key(rolId)
);

alter table usuario
add column usuarioRol int(11);

alter table usuario
add constraint fkusuarioRol foreign key (usuarioRol) references rol(rolId);

insert into rol(rolId,rolNombre)values(1,"Administrador"),(2,"usuario");
use producto;
insert into usuario(usuarioNombre,usuarioTelefono,usuarioCorreo,usuarioClave,usuarioRol)
values ('Jonathan',313,'camanojhonatan@gmail.com','12345',1);

select * from usuario inner join rol on usuarioId=rolId;

create view consultarusuario2 as select * from usuario inner join rol on usuarioId=rolId;
select * from consultarusuario;
USE `producto`;
DROP procedure IF EXISTS `ConsultarUsuario`;

DELIMITER $$
USE `producto`$$
CREATE PROCEDURE ConsultarUsuario (
IN _correo varchar(50),
IN _clave varchar(50)
)
BEGIN
select * from consultarusuario where usuarioCorreo=_correo and usuarioClave=_clave;
END$$

DELIMITER ;

call ConsultarUsuario('camanojhonatan@gmail.com','12345');

DELIMITER $$
USE `producto`$$
CREATE PROCEDURE ActualizarUsuario (
IN _nombre varchar(50),
IN _telefono int(50),
IN _correo varchar(50),
IN _id int(11)
)
BEGIN
update usuario set usuarioNombre=_nombre,usuarioTelefono=_telefono,usuarioCorreo=_correo where usuarioId=_id;
END$$

DELIMITER ;
call ActualizarUsuario();

