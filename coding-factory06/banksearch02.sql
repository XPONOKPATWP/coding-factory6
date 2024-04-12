	SELECT lastname, firstname, accno
		FROM customers, depositors
		WHERE customers.cid=depositors.cid
		ORDER BY lastname

	SELECT lastname, firstname , accno
		FROM customers INNER JOIN depositors
			ON customers.cid=depositors.cid
	WHERE city='Αθήνα'
	ORDER BY lastname

	SELECT firstname, lastname, loans.lnum, amount
		FROM customers
			INNER JOIN borrowers
		on customers.cid=borrowers.cid 
			INNER JOIN loans
		ON borrowers.lnum=loans.lnum
	ORDER BY lastname