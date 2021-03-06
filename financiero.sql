drop database if exists financiero;
create database financiero charset utf16 collate utf16_spanish2_ci;
use financiero;

create table if not exists tipocobro(
codigo int primary key,
descripcion varchar(30) not null,
monto int not null
);

create table if not exists estadocobro(
codigo int primary key,
descripcion varchar(30) not null
);

create table if not exists cobroXestudiante(
codigo int primary key,
cedula int not null,
tipoCobro int not null,
estadoCobro int not null,
fechaLimite date not null,
fechaCancelacion date
);

alter table cobroXestudiante add constraint fk_CobroEstudiante
foreign key cobroXestudiante(cedula) references matricula.estudiante(cedula) 
on update cascade on delete cascade;

alter table cobroXestudiante add constraint fk_CobroTipo
foreign key cobroXestudiante(tipoCobro) references tipocobro(codigo) 
on update cascade on delete cascade;