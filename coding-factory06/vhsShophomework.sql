	create table countriesdata (
	coid int primary key,
	countryname varchar(50),
	countrycode varchar(10),
	);

	create table directorsdata (
	did int primary key,
	directorfirstname varchar(30),
	directorlastname varchar (30),
	);

	create table actorsdata (
	aid int primary key,
	actorfirstname varchar(30),
	actorlastname varchar(30),
	);

	create table categoriesdata (
	caid int primary key,
	categoryname varchar(30),
	genre varchar(30),
	);

	create table copiesdata (
	acid int primary key,
	barcode varchar(50),
	cformat varchar(30),
	stock int,
	price int,
	);

	create table moviedata (
	mdid int primary key,
	title varchar(80),
	releasedate date,
	duration int,
	coid int NOT NULL,
	did int NOT NULL,
	aid int NOT NULL,
	caid int NOT NULL,
	acid int NOT NULL,
	CONSTRAINT fk_country FOREIGN KEY (coid) REFERENCES countriesdata (coid),
	CONSTRAINT fk_director FOREIGN KEY (did) REFERENCES directorsdata (did),
	CONSTRAINT fk_actor FOREIGN KEY (aid) REFERENCES actorsdata (aid),
	CONSTRAINT fk_category FOREIGN KEY (caid) REFERENCES categoriesdata (caid),
	CONSTRAINT fk_copy FOREIGN KEY (acid) REFERENCES copiesdata (acid),
	);