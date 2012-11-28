Create Schema Proyecto2012
select Proyecto2012

Create Table Empresa(
		EmpresaID int,
		Nombre varchar(50),
		Aportacion int
);

Create Table TiendaEmpresa(
		TiendaID int, 
		EmpresaID int
);

Create Table Tienda(
	TinedaID int, 
	Nombre varchar(50),
	Encargado varchar(50),
	Direccion varchar(50)
);

Create Table Socio(
	SocioID int,
	Codigo varchar(20),
	Nombre varchar(50),
	Sexo varchar(1),
	Civil varchar(1),
	Direccion varchar(50),
	Telefono varchar(20),
	FechaIngreso datetime,
	Estado varchar(1),
	EmpresaID int /*FK*/,
	Sueldo float,
	Ahorro float,
	PuestoID int /*FK*/
);

Create Table Puesto(
	PuestoID int,
	Nombre varchar(50)
);

Create Table Ahorro(
	SocioID int /*FK*/,
	item int,
	fecha datetime,
	tipo varchar(1),
	valor float,
	CargaID int /*FK*/
	
);

Create Table Cooperativa(
	CooperativaID int,
	Nombre varchar(50),
	PlazosAnticipos int,
	PlazosPrestamos int,
	InteresFactura float,
	InteresPrestamo float
);

Create Table Carga(
	CargaID int,
	fecha datetime,
	EmpresaID int,
	Archivo varchar(200),
	Estado varchar(1)
);