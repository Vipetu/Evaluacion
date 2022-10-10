drop table tb_ciudadano;

create table tb_ciudadano(
dpi integer primary key
,nombre  varchar(50)
,apellido varchar(50)
,fecha_nacimiento date
);

insert into tb_ciudadano(
dpi
,nombre
,apellido
,fecha_nacimiento
)
values(
12345
,'Vitor'
,'Pereira'
,'1993/01/24'
);

insert into tb_ciudadano(
dpi
,nombre
,apellido
,fecha_nacimiento
)
values(
12346
,'Juan'
,'Pereira'
,'1989/07/05'
);

insert into tb_ciudadano(
dpi
,nombre
,apellido
,fecha_nacimiento
)
values(
12347
,'Erick'
,'Pereira'
,'1980/03/03'
);



insert into tb_ciudadano(
dpi
,nombre
,apellido
,fecha_nacimiento
)
values(
12348
,'Marvin'
,'Pereira'
,'1990/01/01'
);

select * from tb_ciudadano;
;


select dpi
,nombre
,apellido
,fecha_nacimiento
,dbo.f_edad(fecha_nacimiento)edad 
from tb_ciudadano;

