create table states (
	state varchar(250),
	population int,
	primary key (state)
);

create table gangs (
	state varchar(250) references states(state),
	count int,
	primary key (state)
);

create table mentalillness (
	state varchar(250) references states(state),
	AMI real,
	primary key (state)
);

create table education (
	state varchar(250) references states(state),
	hsgrad real,
	primary key (state)
);

create table healthcare (
	id serial,
	year int,
	state varchar(250) references states(state),
	yes real,
	primary key (id)
);

create table victims (
	id serial,
	name varchar(250),
	age int,
	gender varchar(10),
	race varchar(100),
	mentalillness varchar(10),
	primary key (id)
);

create table circumstances (
	id serial references victims(id),
	city varchar(250),
	state varchar(250) references states(state),
	mannerofdeath varchar(250),
	armed varchar(250),
	threatlevel varchar(250),
	flee varchar(250),
	bodycamera varchar(250),
	death_date date,
	primary key (id)
);
