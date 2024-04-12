	SELECT *
	FROM accounts
	WHERE balance>=5000 AND balance<=20000
	order by balance desc

	SELECT *
	FROM accounts
	WHERE balance between 5000 and 20000

	SELECT lastname, firstname, accounts.accno, balance
	FROM depositors , customers , accounts
	WHERE customers.cid=depositors.cid and depositors.accno=accounts.accno and
	city ='Αθήνα'
	order by lastname 