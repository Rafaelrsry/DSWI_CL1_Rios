create table usuario (
	idusuario int auto_increment not null,
	nomusuario varchar(100) null,
	email varchar(200) null,
	password varchar(300) null,
	nombres varchar(100) null,
	apellidos varchar(100) null,
	activo bool null,
	constraint users_pk primary key (idusuario)
);


create table rol (
	idrol int auto_increment not null,
	nomrol varchar(300) null,
	constraint roles_pk primary key (idrol)
);


create table usuario_rol (
	idusuario int not null,
	idrol int not null,
	constraint user_role_pk primary key (idusuario, idrol),
	constraint user_role_fk foreign key (idusuario) references usuario(idusuario),
	constraint user_role_fk_1 foreign key (idrol) references rol(idrol)
);
create table medico
(
 idmedico int not null auto_increment,
 nommedico varchar(50) not null,
 apemedico varchar(50) not null,
 fechnacmedico date not null,
 primary key (idmedico)
);

create table especialidad
(
 idespecialidad int not null auto_increment,
 titulo varchar(250) not null,
 funcion varchar(250) not null,
 fechgraduacion date not null,
 idmedico int not null,
 primary key (idespecialidad),
 foreign key (idmedico) references medico(idmedico)
 );


INSERT INTO medico (nommedico, apemedico, fechnacmedico) VALUES
('Juan', 'Perez', '1980-05-15'),
('Maria', 'Gomez', '1975-10-20'),
('Carlos', 'Lopez', '1990-02-28'),
('Laura', 'Martinez', '1988-07-12'),
('Pedro', 'Sanchez', '1972-03-08'),
('Ana', 'Rodriguez', '1985-12-30'),
('Sofia', 'Diaz', '1995-09-25'),
('Luis', 'Torres', '1978-11-18');

-- Insertar registros en la tabla 'especialidad'
INSERT INTO especialidad (titulo, funcion, fechgraduacion, idmedico) VALUES
('Cardiología', 'Especialista en enfermedades del corazón', '2005-07-20', 1),
('Pediatría', 'Especialista en atención de niños y adolescentes', '2008-06-10', 2),
('Dermatología', 'Especialista en enfermedades de la piel', '2004-09-05', 3),
('Ginecología', 'Especialista en salud reproductiva femenina', '2006-11-30', 4),
('Oftalmología', 'Especialista en enfermedades de los ojos', '2003-04-15', 5),
('Ortopedia', 'Especialista en lesiones y enfermedades de los huesos', '2007-08-22', 6),
('Psiquiatría', 'Especialista en salud mental', '2009-10-18', 7),
('Neurología', 'Especialista en enfermedades del sistema nervioso', '2002-12-25', 8);

-- Insertar los roles "admin" y "user" si no existen
INSERT INTO rol (nomrol) VALUES ('admin'), ('user');
