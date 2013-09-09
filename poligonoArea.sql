set schema JC;

drop table COORDINATES;

create column table COORDINATES(
	v INTEGER,
	x1 FLOAT,
	x2 FLOAT
);

insert into COORDINATES values(1,1,0);
insert into COORDINATES values(2,3,2);
insert into COORDINATES values(3,2,5);
insert into COORDINATES values(4,1,0);

DROP TABLE SUMA;
CREATE GLOBAL TEMPORARY TABLE SUMA(
	COL VARCHAR(2),
	X FLOAT 
);

DROP TABLE MULTIPLICA;
CREATE GLOBAL TEMPORARY TABLE MULTIPLICA (
	v INTEGER,
	x1 FLOAT,
	x2 FLOAT
);

CALL "_SYS_BIC"."area.poligon/area"(?)
