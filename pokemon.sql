create database LigaPokemon;
use LigaPokemon;

create table TbFazenda(
	IdFazenda int,
    Localizacao varchar(50),
    IdTreinador int,
    IdPokemon int
);

insert into TbFazenda
	values
	(1, 'Borboletas Psicodélicas - São Paulo, SP', 1, 376),
	(2, 'Deus te Guarde - Recife, PE', 2, 204),
	(3, 'Somos Todos Iguais - São Paulo, SP', 3, 193),
	(4, 'Música Aquática - São Paulo, SP', 4, 212),
	(5, 'Grito de Alerta - Fortaleza, CE', 5, 214),
	(6, 'A Sensitiva - Campinas, SP', 6, 247);


create table tbBag(
	IdBag int,
    IdTreinador int,
    IdPokemon int
);

insert into TbBag
	values
    (1, '1', 6),
    (1, '1', 4),
    (1, '1', 25),
    (1, '1', 143),
    (1, '1', 149),
    (1, '1', 150);
    
create table tbTreinador(
	IdTreinador int,
    NomeTreinador varchar(50),
    DataNascimento date,
    Insignias numeric(6),
    IdPokemon int
);

insert into TbTreinador
	values
    (1, 'Pedro Neto', '2003-04-27', 6, 6 ),
    (2, 'Ash Ketchup', '1993-11-07', 6, 6 ),
    (3, 'Eusebio Cleiton',' 1993-04-12', 6, 6 ),
    (4, 'Antonio Capim', '1996-05-14', 6, 6 ),
    (5, 'Frederico Rocha', '1997-04-27', 6, 6 );

create table tbCampeonato(
	IdCampeonato int,
    IdTreinador int,
    Localizacao varchar(25),
    Estadio varchar(25),
    Capacidade numeric(6)
);

insert into TbCampeonato
	values 
	(1, 1, 'Minas Gerais', 'Mineirão', 134.000),
	(1, 1, 'Kiev', 'Camp Nou', 194.000),
	(1, 1, 'Santos SP', 'Vila Belmiro', 104.000);

create table tbRegras(
	IdRegras int,
    IdTreinador int,
    Insiginia numeric(6),
    NumeroPokemon numeric(6)
);

insert into TbRegras 
	values 
	(1, 1, 6, 6),
	(2, 1, 6, 6),
	(3, 1, 6, 6),
	(4, 1, 6, 6),
	(5, 1, 6, 6);

create table tbPokemon(
	IdPokemon int,
    NomePokemon varchar(50),
    Forma varchar (30),
    Tipo1 varchar(30),
    Tipo2 varchar(30),
    Hp numeric (3),
    Ataque numeric(4),
    Defesa numeric(4),
    AtaqueEspecial numeric (4),
    DefesaEspecial numeric (4),
    Agilidade numeric(4),
    Geracao numeric(1),
    IdTreinador int
);
insert into tbPokemon
	values
(6, 'Charizard', 'Mega Charizard X', 'Fire', 'Flying',78, 84, 78, 109, 85, 100,1, 1),
(9, 'Blaistose', 'Mega Blaistosei', 'Water', null ,79, 83, 100, 85, 105, 788,1, 2),
(25, 'Pikachu', null, 'Eletrick', null ,35, 55, 40, 50, 50, 90,1, 3),
(570, 'Krookodile', null, 'Ground', 'Dark',95, 117, 80, 65, 70, 92,5, 4),
(6, 'Gengar', 'Mega Gengar', 'Ghost', 'Poison',60, 65, 80, 170, 95, 130,6, 5);
