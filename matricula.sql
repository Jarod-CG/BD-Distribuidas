drop database if exists matricula;
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
distrito int not null,
canton int not null,
provincia int not null,
senhas varchar(200) not null
);

create table if not exists cantonXdistrito(
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

alter table estudiante add constraint fk_EstudianteDireccion
foreign key estudiante(direccion) references direccion(codigo) 
on update cascade on delete cascade;

alter table estudiante add constraint fk_EstudianteCarrera
foreign key estudiante(codCarrera) references carrera(codigo) 
on update cascade on delete cascade;

alter table direccion add constraint fk_DireccionDistrito
foreign key direccion(provincia, canton, distrito) references cantonXdistrito(codProvincia, codCanton, codDistrito)
on update cascade on delete cascade;

alter table cantonXdistrito add constraint fk_CantonDistrito
foreign key cantonXdistrito(codProvincia, codCanton) references provinciaXcanton(codProvincia, codCanton)
on update cascade on delete cascade;

alter table provinciaXcanton add constraint fk_ProvinciaCanton
foreign key provinciaXcanton(codProvincia) references provincia(codigo)
on update cascade on delete cascade;

alter table campus add constraint fk_CampusDireccion
foreign key campus(direccion) references direccion(codigo) 
on update cascade on delete cascade;

alter table carrera add constraint fk_CarreraJornada
foreign key carrera(codJornada) references jornada(codigo) 
on update cascade on delete cascade;

alter table carrera add constraint fk_CarreraCampus
foreign key carrera(codCampus) references campus(codigo) 
on update cascade on delete cascade;