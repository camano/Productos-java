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
CALL AgregarUsuario();
