load "postgresqllib.ring"

pg_username = "postgres"
pg_password = " "
pg_database = " "
pg_port     = "5432"
pg_conn     = NULL 

def pgcon()
	conninfo  = " user="     + pg_username
	conninfo += " password=" + pg_password
	conninfo += " dbname="   + pg_database
	conninfo += " port="     + pg_port
	pg_conn = PQconnectdb(conninfo)

def pgclose()
	PQfinish(pg_conn)

def pgexec(sql_statement)
	pgcon()
	res = PQexec( pg_conn , sql_statement )
	err = ""
	if PQresultStatus(res) != PGRES_TUPLES_OK
		err = PQerrorMessage(pg_conn)
	ok
	PQclear(res)
	pgclose()
	if err=""
		return True
	else
		return False
		? PQerrorMessage(pg_conn)
	ok

def pgget_data(select_statement)
	pgcon()
	res = PQexec( pg_conn , select_statement )
	err = ""
	table   = []
	if PQresultStatus(res) != PGRES_TUPLES_OK
		err = PQerrorMessage(pg_conn)
	else
		nRows   = PQntuples(res)
		nFields = PQnfields(res)
		for i=1 to nRows
			row = []
			for j=1 to nFields
				row[PQfname(res, j-1)] = PQgetvalue(res, i-1, j-1)
			next
			add( table , row )
		next
	ok
	PQclear(res)
	pgclose()
	if err=""
		return table
	else
		return err
	ok

def auto_num( table , column )
	tbl = get_data( "select max(" + column + ")+1 as num from " + table )
	if type(tbl)=type([]) and len(tbl)>0
		if tbl[1][:num] != NULL
			return tbl[1][:num]
		else
			return "1"
		ok
	else
		return "0"
	ok

