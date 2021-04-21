-- drop database if exists matricula;
create database matricula charset utf16 collate utf16_spanish2_ci;
use matricula;

create table if not exists estudiante(
cedula int primary key,
nombre varchar(30) not null,
apellido1 varchar(30) not null,
apellido2 varchar(30) not null,
telefono int not null,
fechaNacimiento date not null,
direccion int not null,
codCarrera int not null,
estaActivo boolean not null
);

create table if not exists direccion(
codigo int primary key auto_increment,
senhas varchar(200) not null
);

create table if not exists distritoXcanton(
codDistrito int not null,
codCanton int not null,
codProvincia int not null,
nombre varchar(30) not null,
primary key (codProvincia, codCanton, codDistrito)
);

create table if not exists provinciaXcanton(
codCanton int not null,
codProvincia int not null,
nombre varchar(30) not null,
primary key (codProvincia, codCanton)
);

create table if not exists provincia(
codigo int primary key,
nombre varchar(30) not null
);

create table if not exists actividadEstudiante(
codigo int primary key,
descripcion varchar(30) not null
);

create table if not exists jornada(
codigo int primary key,
descripcion varchar(30) not null
);

create table if not exists campus(
codigo int primary key,
nombre varchar(30) not null,
telefono int not null,
direccion int not null
);

create table if not exists carrera(
codigo int primary key,
nombre varchar(30) not null,
codJornada int not null,
codCampus int not null
);