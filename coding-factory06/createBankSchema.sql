CREATE TABLE customers
(	 cid INT PRIMARY KEY,
	firstname VARCHAR(30),
	lastname VARCHAR(30) NOT NULL,
	city VARCHAR(30)NOT NULL,
);

CREATE TABLE branches
(	 bcode INT PRIMARY KEY,
	firstname VARCHAR(30),
	bname VARCHAR(30) NOT NULL,
	city VARCHAR(30)NOT NULL,
	assets NUMERIC (18,0)
);

CREATE TABLE accounts
(	 accno VARCHAR(10) PRIMARY KEY,
	bcode int NOT NULL,
	CONSTRAINT fk_account FOREIGN KEY (bcode) REFERENCES branches (bcode)
);

DROP TABLE customers